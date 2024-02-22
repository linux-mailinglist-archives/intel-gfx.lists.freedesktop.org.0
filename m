Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 233B1860020
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Feb 2024 18:53:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8561B10E9D6;
	Thu, 22 Feb 2024 17:53:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CSw95FDv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0863C10E9D9
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Feb 2024 17:53:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708624404; x=1740160404;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jCvdxeT1rynLKrfbQ0MoqQi+UtGDlFkhgxXpz/QmzqY=;
 b=CSw95FDv2HQBjpykTXtpQpxp0GLMpnmtGwY7plmCk/hujM7fWjc9lmMu
 HSrINFNlCSuTHS2KIpE8Ey22+Ei5/lVDg1VDsR6wWIkpJNReAi+bdI5Sk
 HTz5jo28/QZuGYGKrDFDvT4davpV+IXwh0JISeYTCF9MgyeysSQJV/vrS
 lAmFIb2DkzhnH2XHIHY9dcD59wNXw9R5bJ6RRB4rNMMkxuXiXbHnKhVQi
 IraPkT3lQgEbdd+t9uQKS+iXtAU2mmzUvKBPOkEFY9idbGerqbJiFCB3o
 XeczqvHYNDpMzvJGLkqvaeMQAlKj8dJMWfO5bnmBv9kM2LexxQJ0UQ0qJ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10992"; a="13576882"
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; d="scan'208";a="13576882"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 09:53:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; d="scan'208";a="28712407"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Feb 2024 09:53:23 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 22 Feb 2024 09:53:22 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 22 Feb 2024 09:53:22 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 22 Feb 2024 09:53:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CrFMX206duASHImkTu31JHFj3Raqe7HRteY1t1CMbFOMEUtv6/f1HJwGFz7SeHhBDvq8pOnllQKFmDjEoVT2uZddEyQHBG1pOtyFQ6ZG27EZRZtszfNWaUhkRJJNkBVfyRInOj47qyE/vU2CcV/lUb8PYIjnQmU7KAZ25EoZ+AqzEsh50tmFZYvMgHvNeXP1xt9hOC7VbSKrM73PuT7r0PDpKfBagUbNWg9wIe/8wMUENnWe+oOZK2vLj7s40p+T1WYTMeMYhwdbvLXEEwJYp8qQaujIxR0zpJLD/mkKJHY5astIkfaZyM38tbhDUVl1pAG53LCHv68oNFRXX5gkEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rZuQ4lztI2ev50G9anE7yMlCdNuHOBPoCAkMLtxttkQ=;
 b=cQdoe1c2yk7OpB568+tHX0r1lFg0rC+GtRcevdnWgkiGZgoqd6416YO1fb4OuwlifbYrwUYqkQZ3UZvcjiiZfh63JY1Mpya8PgSq4AKjZtJ6CSaoSWWvBahvVITNC9T2rl5iD5cpE3HEyQZii77EWTSuLl90qRWHxoq2tPVJ5hyZuzOHJuxQSJQkvJmoipNe69x22UZ5TDJ+QUzi7K+sA17PyQOtronRAsgOLtOC4prYDm49kBcvJ4/KXJguss5vJio8AYf0Fkin4x7p2hgol49md9cQwdP3u2mTmls+zgTHqQIx4s4eAFbq/uuGD2D3p4PqyxbY5Lf9/YEoUv7uxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB6375.namprd11.prod.outlook.com (2603:10b6:8:c9::21) by
 SA2PR11MB5052.namprd11.prod.outlook.com (2603:10b6:806:fa::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7292.39; Thu, 22 Feb 2024 17:53:20 +0000
Received: from DS0PR11MB6375.namprd11.prod.outlook.com
 ([fe80::5d2:537:5261:6713]) by DS0PR11MB6375.namprd11.prod.outlook.com
 ([fe80::5d2:537:5261:6713%6]) with mapi id 15.20.7292.036; Thu, 22 Feb 2024
 17:53:19 +0000
Message-ID: <13fdb738-1a37-47e2-8d06-959bbb85c2b4@intel.com>
Date: Thu, 22 Feb 2024 18:53:12 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] ALSA: hda: Skip i915 initialization on CNL/LKF-based
 platforms
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <broonie@kernel.org>, <alsa-devel@alsa-project.org>,
 <linux-sound@vger.kernel.org>, <tiwai@suse.com>, <perex@perex.cz>,
 <jani.nikula@linux.intel.com>, <joonas.lahtinen@linux.intel.com>,
 <rodrigo.vivi@intel.com>, <tvrtko.ursulin@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <amadeuszx.slawinski@linux.intel.com>,
 <pierre-louis.bossart@linux.intel.com>, <hdegoede@redhat.com>
References: <20240222170614.884413-1-cezary.rojewski@intel.com>
 <20240222170614.884413-2-cezary.rojewski@intel.com>
 <ZdeDNT5jCgXAP16Z@intel.com>
Content-Language: en-US
From: Cezary Rojewski <cezary.rojewski@intel.com>
In-Reply-To: <ZdeDNT5jCgXAP16Z@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: FR2P281CA0050.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:92::13) To DS0PR11MB6375.namprd11.prod.outlook.com
 (2603:10b6:8:c9::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB6375:EE_|SA2PR11MB5052:EE_
X-MS-Office365-Filtering-Correlation-Id: 4536f727-a6ba-4cd7-3f68-08dc33cf27b3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: H06RGRjmEOc5QmLN62kPjPzhx+sz+72JhHnoRkb4BiEU8v7phGBy2VfxcWc1QbFQzd4Wb/wA7BhfmwnD8ywJAYHd/LUQEbObVtdT/863/hluHKYcpPkElZL9NVwjHovzu3uaugGTmzqL2jZR7R2ATqTLsjBS6ajx8Tn5cuo3+oX8izkqHBHW4OxdzWyyPaQYFD+l1HFHLhwuv8sLPoFb/lRioAzbG4DHoRT2SGWF2fEdKfgem7TRNAtvCJYHUn4tNldOU5plDIZ4yLkFzplze7StdiY2s9x18wUBSapeOo6fie6O0D8h4xoPvrDrGiC6Q84vgflZ6/ivtQec709uZVQZEufZdxImvjnmJnIZB5ADbih7xdf/8qejnXVwjauVSpbfiGGBmj4sblytlySuaiOI8dJc69kAfGu0wHNZBgKLI4oyatz0xO5oNXgeYIFS81jj09ZT2DpzB4cRQcTC6dmDjjfowTZtZ9AgALx+Nzc8hRmL47qsc+PmEMkXyYp1gOsI1SVeqjG8oi6AtnCxy7jrOxgMzXBowTv1YYDrXAY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB6375.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NUNoRVZmMTlUbDdLL2FBRXdOM0pLWFVkOWNZNWUxU1JOV3dtMHVjWWdXMjRa?=
 =?utf-8?B?MVk1d0pYNTVSd0xhdXhnbzh4NVVQN3ptQXhXU0E5OFZreTcyWit5NFVwTUVm?=
 =?utf-8?B?aDJGSDZob1pWSmROdUdhWkJjUGNMbUFnWGprcmVsUUJ4T1pRb3RIVyttSGti?=
 =?utf-8?B?ZnJlQ2U3SlN1STJMNEhBVGRYalEvRTROWEZhbytLNWNXWUtIRXFRamh5eXVI?=
 =?utf-8?B?Skl1UUNOMmh6Y0YzbGZoTXlraXEwb3pZQXcvVFhkWmFSMEsrbWN2ZUtjRVpL?=
 =?utf-8?B?T09OOVRreXZ0RHljSEpZNUwzTDVhdExCMGJVS083QnR2aUxKNU8rYTByNFY1?=
 =?utf-8?B?MXp6TDF1V2YveXNHVlIvOXltK0VOM0dic0hGMlZZd0FtT1plMmllZUp3SHNO?=
 =?utf-8?B?eTVNTVV6ZlJ0MmttVm9kSG5JVHBtKzkwSHJyVGYwRVR5aDRPaFcyYWZqaloy?=
 =?utf-8?B?RkpWL1VYYzEycXNTOEg5TmJPZjk1R1JFZFdFZ2VlK1dvL01KMVZqMWJqL3lR?=
 =?utf-8?B?WVpFZVR4QXhkWTRvenk3RVg0aEVTVmlYOXI0OWN6NDZYMTBZUTg3MzA1QlJv?=
 =?utf-8?B?WlR3UVdSQnVlK0pibjJvdkVrU25jekV6TkRiRU80enhqZ0NFNmZPNmw5THcv?=
 =?utf-8?B?ei9nN2dxUFJDTFRYSjVJcWRDN2ErVHhjdmU3cTJvVmc4R1hlSFFxN3RXdFFl?=
 =?utf-8?B?Y2JJSGhVbWV4cmVOK1pOZ1BNQlBteDdTWm81YThDY2t2QjlvNlFFNXMyNnAr?=
 =?utf-8?B?Nlo1UXhyaThKaGdKelBnM0NjVnQxeXpMSGZTODByMVNpL2hZZVJZRzBKQVdl?=
 =?utf-8?B?a2FSYjBNdkd3UitUTTQ3U015c0FQbTdvdzZrSEdiK1VOWDNUWXpaL3kwVlA3?=
 =?utf-8?B?MlRrZEpEUE1hQWhBNW0xK0F6TEJGc0pvM2FmV3owckFadzlIVTZSbmR6SXBU?=
 =?utf-8?B?U3YySVhlZ1kvY1orU3dvcWcrUUtVV0EyNnNyZ29ybm91Y2JvWTdGcmVmbzZY?=
 =?utf-8?B?SmVPVHZCRWF0VkRGUGNCTzJBUnJBUzRtTzNPZTcvM1BOOXNpcmlnazBja3pG?=
 =?utf-8?B?OVVRT084OUgrYmdPV2d0d1dJbitVNTc2Q1o0dG1sdGlZbEIwSkhRczF6R3lm?=
 =?utf-8?B?c3JBSmkxRVJPZjNYaWR2R1hFZnNWbHZMSkZpdmRQNjE5Z25VQmdBc2E1VnVw?=
 =?utf-8?B?RU9nZlN4Ri80eXdrNytJY0dIZU0rM1lGMUpmSk5JeDZhNFF4UTJGSitkdVh5?=
 =?utf-8?B?TEJXL3VsVFFXUFRtT0FtNjlXVmlERjZ4SHUzYVJaMjIyUUpTUG5hL3VRMktO?=
 =?utf-8?B?VWFTc1N0VmlXbkVaMzBSRWhOd1d2cjhTR2VJc0tIeVZ2TkhOeUUwSlJhdDUx?=
 =?utf-8?B?R3dXZ3J1Z2VySlRYL2pRTmVYOGlVQ3E5TTZmN0pwL3g4K3JrTCsrVHZkUUFs?=
 =?utf-8?B?bEhBNWNMdUV0TTZpZi9mRFVwVDg2TVFaeGIvTjRIazNUYzh5SndyM2p6MnRU?=
 =?utf-8?B?NzB2QUM5b05sdzZYNG1EbE81Z3FWQ0ZIcTY5aU0zQitmaVFPeml3TEhybjI3?=
 =?utf-8?B?c1hkMEF3L0xJQkZEN2VRK2hxYmtTWmtCTWhocCt0OVZ0cWI0bEZOdVdKT3VB?=
 =?utf-8?B?R2JpUGt0NnRlTUtJNmhFOHBWL09kYnc5R1ZZUjhVdGNvNGNqQTRaK1k1MU1Z?=
 =?utf-8?B?RWtnWWFaOUJuWFJmM2NWeDkvd1ozeGVZUzYxcy9CSnhoSDRwZFhZZW9uNXh0?=
 =?utf-8?B?TXE3aHhEMlpraE5NeGtiMkhMbG5jVFFxdkxIbDNhVEszaSttejhaTVpWTTVa?=
 =?utf-8?B?UVlkVVdnU3VlSllWRURzclI1Ny9EQUJabTRNa1phenVDeDVJK281angwLys4?=
 =?utf-8?B?VHVTdTMwNHFwcHVlRExDUjIvUmMvYUozc3dxd2tyVUg1RUFRa3lLdkpzM2hl?=
 =?utf-8?B?UFVxYkZNNytFcXY2UjFqVndRZzZiWElTd013TXVsTjZ0bWtDUHgrNDNMUTFD?=
 =?utf-8?B?RkY1NEpjZjYzYVhrblB3UmhEODcybkFVOFNBYnZqMXBraFVFNUoydmIwamxP?=
 =?utf-8?B?STdZYzdob0dYcHgzWEl6VHR2TU12WUZBckY0V3lWTUF5WHJNazJyZi9mS1l4?=
 =?utf-8?B?VUlvSHdsYWViUUFUdERtN3VNd20vTEgxb1BoK1FEWnhTQ0UxU0Z3Q1Z0Ym9n?=
 =?utf-8?B?MlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4536f727-a6ba-4cd7-3f68-08dc33cf27b3
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB6375.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Feb 2024 17:53:19.9309 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: acGDc071l/6ZWrfJTPt4gxqNaIZBqVXVSmdUf2BNNZXIL5/V017Hf95b4bruvqgTenSmn3qITku4ATfUtm87Ldo8fThUe96mC3Zy6DPrFK4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5052
X-OriginatorOrg: intel.com
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

On 2024-02-22 6:24 PM, Ville Syrjälä wrote:
> On Thu, Feb 22, 2024 at 06:06:11PM +0100, Cezary Rojewski wrote:
>> Commit 78f613ba1efb ("drm/i915: finish removal of CNL") and its friends
>> removed support for i915 for all CNL-based platforms. HDAudio library,
>> however, still treats such platforms as valid candidates for i915
>> binding. Update query mechanism to reflect changes made in drm tree.
>>
>> At the same time, i915 support for LKF-based platforms has not been
>> provided so remove them from valid binding candidates.

...

>> @@ -127,15 +128,26 @@ static int i915_component_master_match(struct device *dev, int subcomponent,
>>   /* check whether Intel graphics is present and reachable */
>>   static int i915_gfx_present(struct pci_dev *hdac_pci)
>>   {
>> +	/* List of known platforms with no i915 support. */
>> +	static struct pci_device_id denylist[] = {
>> +		INTEL_CNL_IDS(NULL),
>> +		INTEL_LKF_IDS(NULL),
>> +		{ 0 }
>> +	};
> 
> I thought these don't actually exist in the wild?

To my knowledge the opposite is true - while LKFs were shipped in 
limited number, they still were. I did ask few weeks ago my friends from 
Windows side about the support and they're still running full-scopes on 
HDMI endpoints on LKF platforms in their CIs. It seems the drm support 
is there though. Once you re-boot to linux we get -19 during probe().

In regard to CNL, the commit removing CNL-support left the IDs intact 
what's very handy to us - we have a lot of spare CNL boards for our 
validation purposes - CNL-based AudioDSP spans multiple platforms, e.g.: 
CNL/CFL/WHL/CML. The number of newer boards is lower, unfortunately.


Kind regards,
Czarek
