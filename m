Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA29111C07D
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 00:21:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DFF26EC10;
	Wed, 11 Dec 2019 23:20:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 426 seconds by postgrey-1.36 at gabe;
 Wed, 11 Dec 2019 23:20:57 UTC
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1CF76EC10
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 23:20:57 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Dec 2019 15:13:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,303,1571727600"; d="scan'208";a="216086452"
Received: from unknown (HELO sdutt) ([10.165.21.200])
 by orsmga003.jf.intel.com with ESMTP; 11 Dec 2019 15:13:50 -0800
Date: Wed, 11 Dec 2019 15:09:27 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <20191211230927.GA65267@sdutt>
References: <20191211211244.7831-1-daniele.ceraolospurio@intel.com>
 <20191211211244.7831-4-daniele.ceraolospurio@intel.com>
 <157609936238.27099.9225483018528537974@skylake-alporthouse-com>
 <de7d8199-70b8-9a69-1e84-a6b55f3a43ee@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <de7d8199-70b8-9a69-1e84-a6b55f3a43ee@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [RFC 3/5] drm/i915: split out virtual engine code
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Dec 11, 2019 at 01:34:20PM -0800, Daniele Ceraolo Spurio wrote:
>
>
>On 12/11/19 1:22 PM, Chris Wilson wrote:
>>Quoting Daniele Ceraolo Spurio (2019-12-11 21:12:42)
>>>Having the virtual engine handling in its own file will make it easier
>>>call it from or modify for the GuC implementation without leaking the
>>>changes in the context management or execlists submission paths.
>>
>>No. The virtual engine is tightly coupled into the execlists, it is not
>>the starting point for a general veng.
>>-Chris
>>
>
>What's the issue from your POV? We've been using it with little 
>changes for GuC submission and IMO it flows relatively well, mainly 
>just using a different tasklet and slightly different cops (need to 
>call into GuC for pin/unpin).
>
>Daniele

I agree with Daniele's approach here. The new GuC code can reuse
intel_execlists_create_virtual with a couple of GuC specific branches in the
function. The new GuC also reuses virtual_engine_enter / virtual_engine_exit in
the virtual GuC context operations. To me it makes more sense to have this
virtual engine code in its' own file than polluting an execlist specific file
with references to the GuC.

Matt
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
