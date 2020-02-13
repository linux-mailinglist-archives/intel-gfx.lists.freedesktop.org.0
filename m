Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BA6615B624
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2020 01:49:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68DF46EB12;
	Thu, 13 Feb 2020 00:49:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0B5A6EB0F
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Feb 2020 00:49:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 16:49:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,434,1574150400"; d="scan'208";a="380940945"
Received: from brianwel-mobl1.amr.corp.intel.com (HELO [10.252.203.86])
 ([10.252.203.86])
 by orsmga004.jf.intel.com with ESMTP; 12 Feb 2020 16:49:43 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200213001418.5899-1-brian.welty@intel.com>
 <158155408885.11180.1339348747260218156@skylake-alporthouse-com>
From: Brian Welty <brian.welty@intel.com>
Message-ID: <6783dddd-a9e4-c8b2-c169-b5aa7088dd7f@intel.com>
Date: Wed, 12 Feb 2020 16:49:43 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <158155408885.11180.1339348747260218156@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Fix selftest_mocs for
 DGFX
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 2/12/2020 4:34 PM, Chris Wilson wrote:
> Quoting Brian Welty (2020-02-13 00:14:18)
>> For DGFX devices, the MOCS control value is not initialized or used.
> 
> Then why is the table populated?
> -Chris
> 

The format has changed (been reduced?) for DGFX.  drm_i915_mocs_entry.l3cc_value is what is still initialized/used.
Probably first needed is the patch that defines the table entries for DGFX.
Ugh, I didn't notice this wasn't applied yet.  Let me ask about this.

-Brian

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
