Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wifUKUC8L2pUFQUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 10:48:00 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE53E684B59
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 10:47:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=hvCNUdeD;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44D6210E2BE;
	Mon, 15 Jun 2026 08:47:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25D7E10E2B7;
 Mon, 15 Jun 2026 08:47:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781513276; x=1813049276;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=t0qiV0kGi2OQBQ2osZZAvySPqCdxjIpDAQfoNSRuB2A=;
 b=hvCNUdeDA6j3wBnjNsbex4d+acIfOF92pUi1fJjXf2gVm1B/UYGxTgkh
 de2vBEUeZ/AP7AMuTptR31UamDcCIRUb85r7jJIeAhaBmi06DUJXDzzL+
 cSNTUL5B70WKqjg9Wk8QC7XFw3qrZ8pmDvaNdc4OOamHh562FoSRv0irn
 lnHPenY4CFwRFnEmpXIa7kdGXYKRPM4cUvh7BL8AvBUdCBWEtqjseyA5V
 rJ02a7tyF0pPH8I5JgJ9im40ARymWCnnQPTHvPvMrgZfjNbT0uV4tS090
 EtDhZpj+JWKa0i4qZtM3bc3ibjh85640SKi0eVwaCsZ1iGCOWb3WlrWJu w==;
X-CSE-ConnectionGUID: E/VJElKuTlmivDtUFNNiBw==
X-CSE-MsgGUID: UWce/px0Qs60zlfrHNJTag==
X-IronPort-AV: E=McAfee;i="6800,10657,11817"; a="93636831"
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="93636831"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 01:47:56 -0700
X-CSE-ConnectionGUID: 86ciwZ4eQEq7CN1v3SKhfw==
X-CSE-MsgGUID: uBRqg4GAQ4uCIbQivP5+Qg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="247292790"
Received: from mkosciow-mobl1.ger.corp.intel.com (HELO [10.245.244.39])
 ([10.245.244.39])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 01:47:54 -0700
Message-ID: <79a7df51-a2ac-4206-987a-83737e1d316f@linux.intel.com>
Date: Mon, 15 Jun 2026 11:47:50 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 08/15] xhci: dbc: serialize enabling and disabling dbc
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 gregkh@linuxfoundation.org
Cc: linux-usb@vger.kernel.org,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 ravitejax.veesam@intel.com
References: <20260603091132.1110849-1-mathias.nyman@linux.intel.com>
 <20260603091132.1110849-9-mathias.nyman@linux.intel.com>
 <9ce24ff5-efab-4089-92d7-709862d68e6d@intel.com>
Content-Language: en-US
From: Mathias Nyman <mathias.nyman@linux.intel.com>
In-Reply-To: <9ce24ff5-efab-4089-92d7-709862d68e6d@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[mathias.nyman@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,linux.intel.com:mid,linux.intel.com:from_mime,intel.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AE53E684B59

On 6/15/26 09:11, Borah, Chaitanya Kumar wrote:
> 
> Hello Mathias,
> 
> On 6/3/2026 2:41 PM, Mathias Nyman wrote:
>> DbC can be enabled and disabled via sysfs, serialize those
>> with a mutex to make sure everything is done in the correct
>> order.
>>
>> remove xhci_do_dbc_stop() and integrate the register write and
>> dbc->state setting into xhci_do_stop()
>>
> 
> This patch seems to cause a regression in our CI. [1]
> 
> We could not revert the patch because of merge conflicts but resetting to the parent commit seems to heal the issue.
> 
> Could you please check why the patch causes this regression and provide
> a fix if necessary?

Ah, I see, deadlock when enabling DbC via sysfs on runtime suspended xhci

Appears this is an issue mid series in intel-next,
The last patch that enabled runtime pm for DbC should also fix this issue.

The DbC runtime pm support patch was dropped last minute from the upstream series.

I'll send it as a RFT, can you check it solve the issue in your CI

Details of deadlock issue while mid series:

dbc_store() {  // enable dbc via syfs
     mutex_lock(&dbc->enable_mutex);
     xhci_dbc_start(dbc);
         pm_runtime_get_sync(dbc->dev);
             xhci_dbc_resume()
                 mutex_lock(&dbc->enable_mutex);

Thanks
Mathias

