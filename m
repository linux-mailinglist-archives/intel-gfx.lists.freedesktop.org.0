Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B51911BF49
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 22:34:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B2456EBF9;
	Wed, 11 Dec 2019 21:34:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C525F6EBF9
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 21:34:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Dec 2019 13:34:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,303,1571727600"; d="scan'208";a="388077755"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga005.jf.intel.com with ESMTP; 11 Dec 2019 13:34:11 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191211211244.7831-1-daniele.ceraolospurio@intel.com>
 <20191211211244.7831-4-daniele.ceraolospurio@intel.com>
 <157609936238.27099.9225483018528537974@skylake-alporthouse-com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <de7d8199-70b8-9a69-1e84-a6b55f3a43ee@intel.com>
Date: Wed, 11 Dec 2019 13:34:20 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <157609936238.27099.9225483018528537974@skylake-alporthouse-com>
Content-Language: en-US
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 12/11/19 1:22 PM, Chris Wilson wrote:
> Quoting Daniele Ceraolo Spurio (2019-12-11 21:12:42)
>> Having the virtual engine handling in its own file will make it easier
>> call it from or modify for the GuC implementation without leaking the
>> changes in the context management or execlists submission paths.
> 
> No. The virtual engine is tightly coupled into the execlists, it is not
> the starting point for a general veng.
> -Chris
> 

What's the issue from your POV? We've been using it with little changes 
for GuC submission and IMO it flows relatively well, mainly just using a 
different tasklet and slightly different cops (need to call into GuC for 
pin/unpin).

Daniele
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
