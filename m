Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oBu6NLpcEGrEWgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 15:40:10 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 694375B5547
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 15:40:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD54110E07D;
	Fri, 22 May 2026 13:40:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QrThRZPB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A71710E07D;
 Fri, 22 May 2026 13:40:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779457207; x=1810993207;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version:content-id;
 bh=AqzWIe15rSPR2qFTMV0hV+sdzraVnQlAGYI8gzdLoy0=;
 b=QrThRZPB1GCRjrIP8oUliX3be73s1vlbKS59DNtSOe4DuEYoHa5cfqGY
 B6HQLsgX28HqoHM45kv5er1yzZxWhnpWsfAovtrS2g5f8QW9HP9uXtKtA
 tOwXYXtQEx7LmbJNUo9+F/Zk22G4AUmVJ8BVd+n6SQ+ke3HX22mRth6CT
 JkrnKcJUvM0k5w46G4Xotom4YfqG2cVH80RlSVBfKu54wqnMuzpAZ0xTE
 Qq7bSMGac1O/OMn0vz/7AeRGPdR3Ygr0g29D9xUwaSaCQD6Q2861lPA7U
 muGYokJLnOxjCrAI05vqUB4Ufpxoxa8sop+g6Nw1Bgg8x7m7exMdiIiBw Q==;
X-CSE-ConnectionGUID: E9u/wFDZSFyNUdJnOsSS4w==
X-CSE-MsgGUID: HOLCDxRtTB2lI+RFtbjVYA==
X-IronPort-AV: E=McAfee;i="6800,10657,11794"; a="91778777"
X-IronPort-AV: E=Sophos;i="6.24,162,1774335600"; d="scan'208";a="91778777"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 06:40:07 -0700
X-CSE-ConnectionGUID: yGGLmTkkQ0SkhpaPtpcYMw==
X-CSE-MsgGUID: 0HgWlebzRxq3Mt5xv1JXfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,162,1774335600"; d="scan'208";a="234562688"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 06:40:04 -0700
Date: Fri, 22 May 2026 15:40:02 +0200 (CEST)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
cc: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>, 
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>
Subject: Re: [PATCH v1 2/2] drm/managed: fix drmm_add_mod_or_reset() kernel-doc
In-Reply-To: <8b886c39-f474-463e-99c5-2cc91466f1b9@intel.com>
Message-ID: <676b9ad7-46f7-fabe-163e-33012a23030c@intel.com>
References: <20260521155231.1821935-1-michal.grzelak@intel.com>
 <20260521155231.1821935-3-michal.grzelak@intel.com>
 <8b886c39-f474-463e-99c5-2cc91466f1b9@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-969468146-1779456677=:1544314"
Content-ID: <7e91f919-70b4-ad0c-8680-dc597dce2f86@intel.com>
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	CTYPE_MIXED_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 694375B5547
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-969468146-1779456677=:1544314
Content-Type: text/plain; CHARSET=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT
Content-ID: <95e88270-d98b-7af7-d8da-c2e395bb1814@intel.com>

On Fri, 22 May 2026, Borah, Chaitanya Kumar wrote:
> On 5/21/2026 9:22 PM, Micha³ Grzelak wrote:
>> Kernel-doc of drmm_add_mode_or_reset() references @releases which is not
>> on argument list. Swap '@' between 'releases' and 'action' words to fix
>> the documentation.
>
> s/drmm_add_mode_or_reset/drmm_add_action
>

Title would like to see that as well...

BR,
Micha³

>> 
>> Signed-off-by: Micha³ Grzelak <michal.grzelak@intel.com>
>> ---
>>   include/drm/drm_managed.h | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>> 
>> diff --git a/include/drm/drm_managed.h b/include/drm/drm_managed.h
>> index 72bfac002c06..72d0d68be226 100644
>> --- a/include/drm/drm_managed.h
>> +++ b/include/drm/drm_managed.h
>> @@ -18,7 +18,7 @@ typedef void (*drmres_release_t)(struct drm_device *dev, 
>> void *res);
>>    * @action: function which should be called when @dev is released
>>    * @data: opaque pointer, passed to @action
>>    *
>> - * This function adds the @release action with optional parameter @data to 
>> the
>> + * This function adds the release @action with optional parameter @data to 
>> the
>>    * list of cleanup actions for @dev. The cleanup actions will be run in 
>> reverse
>>    * order in the final drm_dev_put() call for @dev.
>>    */
>
>
--8323329-969468146-1779456677=:1544314--
