Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 919AF86750A
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Feb 2024 13:33:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC3C710F146;
	Mon, 26 Feb 2024 12:33:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bxzTGkHU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA4BB10F146
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Feb 2024 12:33:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708950798; x=1740486798;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=b/KNwuTmx4adU7776EOETKKX7lcICc+SYF9S5cL0LEY=;
 b=bxzTGkHUqrgIOH7+/DJzRzMMO0x/qQTWzE0W8r/L7LNidYWozjlWTJ0v
 BpJmeqL7+1OEYWLWAmGjp6yKS6VaO+QHShFnHdwy3eVEGGR8ofaftZQWT
 Fyqlwqqrg4JxcBUZWTAcWGg07JvVTeKD3B5PrhDspuxZK9p2QwNZjI74u
 yOtLZKLFNec0sA1XRuotkbFUoq8Ktrxqaa3noe6vT24F6klsACRMs+7gr
 FxOiaHSPHGOk2r9FcP5RMXMfYQauFJpXQwxeiV1/Z170nm97FO9Ob2xz1
 3ItIoMrVZFKvSdopdM1GBepF9KxEZH4PAupN6gtBMPJODkSP+1CGTNa9n w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10995"; a="14647986"
X-IronPort-AV: E=Sophos;i="6.06,185,1705392000"; d="scan'208";a="14647986"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 04:33:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,185,1705392000"; d="scan'208";a="29832575"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Feb 2024 04:33:17 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 26 Feb 2024 04:33:16 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 26 Feb 2024 04:33:16 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 26 Feb 2024 04:33:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O1bMCi8hsZhTLT+5xX23knRCmINkAKqgxaMwhCV5yck72b0tm7N5pGVV2u20XVWfCvg9/p8QxUSyzdp3op9YxiKuKCXhmQ4UZ5ZbWun4blB5eSOmNaMhv8TAFfuSagfrMaBGFIlKtSsP6IojIHot+5/tAgK+XS8FNsxq4i2MSHEJ6t6hoNqyAEz/VefZJnUp5XwGrz+b2+NpBCZNZM1qtSvhNKaBWZLKlQMaX+/kJSPeCWzS+Xviv3KR8CQqsBUFYpziyMoc92SpCXra2RBtkICoWAU5OVSQoNQs6oiNm2z60PiqO5YeMJxrJk5VxZ5MIacChe1mtIweMkPvkBnFBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tWcjj1oWQ52TkTe2D0sIHGRJo0txQsBfaaRVeqg2pls=;
 b=NYoWPY76rG4b2Z2ynuqLiAUH5iHAsppKul5WoqHXbRBqkWUu9W07vKjWu1l6vk6uJxNsCCKiOckAyYAEUjBAb/Ot7b4s+mLRZ3Fgt0ceiP8lERelVu2+PTdWWVwkRtpJ+aeisuMCorfKlBID0hMxSWijgzNlFeL/xFe3iIszYbKf4rxg8sW8kAiPPgzzKrKjwvftTtblySoVBWAeai88z1fgGK4VIoYCtDyowubKwyj9qxxF9SGBgXtvTQkynoa3gUReE5sVYHRFwxB6vu2wnYTkR8FdK/zdvwPntQaf27wulQ0FvI28bNeefzxon91+UMNGVqylejP3aJgvNrNBEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB6375.namprd11.prod.outlook.com (2603:10b6:8:c9::21) by
 CO1PR11MB4868.namprd11.prod.outlook.com (2603:10b6:303:90::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7339.23; Mon, 26 Feb 2024 12:33:11 +0000
Received: from DS0PR11MB6375.namprd11.prod.outlook.com
 ([fe80::804f:f362:1acb:f0f5]) by DS0PR11MB6375.namprd11.prod.outlook.com
 ([fe80::804f:f362:1acb:f0f5%5]) with mapi id 15.20.7339.022; Mon, 26 Feb 2024
 12:33:10 +0000
Message-ID: <e64673dd-5a2c-4e85-b819-367288f470b9@intel.com>
Date: Mon, 26 Feb 2024 13:33:04 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] ASoC: codecs: hda: Skip HDMI/DP registration if
 i915 is missing
Content-Language: en-US
To: Takashi Iwai <tiwai@suse.de>
CC: <broonie@kernel.org>, <alsa-devel@alsa-project.org>,
 <linux-sound@vger.kernel.org>, <tiwai@suse.com>, <perex@perex.cz>,
 <jani.nikula@linux.intel.com>, <joonas.lahtinen@linux.intel.com>,
 <rodrigo.vivi@intel.com>, <tvrtko.ursulin@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <amadeuszx.slawinski@linux.intel.com>,
 <pierre-louis.bossart@linux.intel.com>, <hdegoede@redhat.com>
References: <20240223114626.1052784-1-cezary.rojewski@intel.com>
 <20240223114626.1052784-3-cezary.rojewski@intel.com>
 <87plwn2qbs.wl-tiwai@suse.de>
 <19f57fc4-ae64-4054-a85c-38ff37c1bded@intel.com>
 <87o7c3zdlz.wl-tiwai@suse.de>
From: Cezary Rojewski <cezary.rojewski@intel.com>
In-Reply-To: <87o7c3zdlz.wl-tiwai@suse.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA1P291CA0015.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:19::13) To DS0PR11MB6375.namprd11.prod.outlook.com
 (2603:10b6:8:c9::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB6375:EE_|CO1PR11MB4868:EE_
X-MS-Office365-Filtering-Correlation-Id: ec7331c6-021a-44f2-72c6-08dc36c717da
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KXgctjooFReG6xAidDPJOETubKmkRi3dbnagflZtbQACkAt7/LOOK4BmligtG2U3JbUemQapnizs7Q7EXs082q5uiYEKWLSjZWsaGn9VBv0D3cZU7Oi9NuWUxZXlai6XNS7zTgxNRPD1LugwK5cHAK96fVG/5uU0omYCmrHA33N/vb94tq9RwGE+kcoBGa2QWa6dOjyU9Rwge510AKjR6KGEvKUC99ud1x5pjfCZYNaPsUyHr1RQfK8erY0aFU7zWT7zlWgYmesmL/4WLXbYcs+HTI/A/uPrzNpZ4KnbGqgZIsZbCVMRRoC/xdc6RpeJZn45s2HeDjN1p7ErNC6mLJCWu+t0PCsU9zpntBYGXAhjCu8sI1+4hRlmcti19gEScrwKqSzBnG/XEg9ooU7kp+teoh+jgJDCgF4azjAbEoDbV4BmS5uo928YxqNx8jZWP6ja8pzOoWR3Rx0xhtlGj/6CSnraxVY6V331ALJ0unIiJylYjsqws8lpfCw8+JdaGeEw5p1SoTtAifZSP7NDXKDJEAu709scwGcgCPPwkMIEeZWp+MK1cZIyXM0H2Dwf8ejrjQHTEy+Nfw2NSrmfzdBZagj9CuWrvi7bJ9Jy1AglJ96lTJ/BsxtLgZ6sjK2m
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB6375.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dnFuTy9WSW96bDJmSG8xN3J3azFlZHFtMkw1NmNtS3BBVU5XQzA0c250SU9G?=
 =?utf-8?B?bVQvcE1kaGxqRU5xNVp5OFN5NVdYY3IzSTdUdGwrMUxSdnAybjhoM1Y1NnlL?=
 =?utf-8?B?Z0FlSzBvcTlKd3l0a05lTEVWNkxZc3BuY0M3OVFvbzZ2WURaWkdscDJUaGR1?=
 =?utf-8?B?SG9FcnVLbnJTb1BpczYyQjhGZk1NUnZlNHFCSTcyYWtVT3djTXl3L0lJS1BG?=
 =?utf-8?B?QWNvN2d3VXNOTVA0UnJoeTYva2Z1TGlBdzkvWHl2WnJkbnhya1ovK01PMFdn?=
 =?utf-8?B?RDl3S0hVY1FwcEE3T2tqcXpsNWJqQVpwUisrRGcxeFZZQzluZkJjcjhodDZm?=
 =?utf-8?B?R21va1VoanR2eExmQjRTbE5HZ21qaU10SDNHbEpoZkV0WG56SWRaekwrZ2dm?=
 =?utf-8?B?Z05JcnZOSUtFL2JqOCt1ampKWjNBUk1sbk1UTnBmVTJZa0lkL1FWUHNIaHFP?=
 =?utf-8?B?eklydk5lUjFoK1V0a3cxYzA5eDY5Qkk2RFNTQTVLbUdtancrTGxxMndvYTMw?=
 =?utf-8?B?YVZ4L1lZZ0xHTmg3TzRickVQUDFZTUMzN2IyMGQwWXEyZ2xHNkFIc2xzTkRB?=
 =?utf-8?B?UDhOUDNaa2c5djRPWEtscUJNakdXR1FCdUZHNUI2SGJKK2VvQWtLYUYrSDJO?=
 =?utf-8?B?NnY5VndkU3JKNG1wdS9mNFovVStkYTMzZW9DV281Tnd1bUt2c0hhU1QwbG1W?=
 =?utf-8?B?UVlzSnZDbG9Gb0M1eVdIcmRFcDJGWE5hL2M5NndZZ3JZWE9HMURuWTNoaytz?=
 =?utf-8?B?Mkdjd1RZTDUxaXJiQUxJN1ZSdFRUdmMya3JHWmJGcjJUSlZuZmxWN1U2NXRy?=
 =?utf-8?B?YTlpTGJOZm03ajIrUFBCTUdDMVlyVVBLWWdxNXhDZ01ZM2JlbW5URUM1RDZr?=
 =?utf-8?B?ZmU3a2pMT2RRNlNDeUE2M0NIOEpJQUJkNHltNlV6UW8vK0E0TlVYV244eXhZ?=
 =?utf-8?B?TWNObU9YcmZrNVY0UkN0ZVp3d043OVBTK1I3SGIySy95MTNPY20vTzBVclQ0?=
 =?utf-8?B?RXpwYTd2UHFWait4SFovWlV3RVR2UzdDZlVGenlZUUZVeDBTWjFlWmRyaHYv?=
 =?utf-8?B?cW1Jd3RiRzVKMDVrdk5xWUNReXAxclh4c1J2QW53emJsSzA1bWxzZjlvWEdr?=
 =?utf-8?B?eGVxc0hHYjlvRzZGWHU2T3JuSmhmZnV2VUlkMWJ0TjBJM3BmQ3B2Y2lNWTZM?=
 =?utf-8?B?NlF5V1A0OW5RNjRCNVdQeWhPdEhtRlZHcy81THRJbGorTWVNVDA4SnpjbDd2?=
 =?utf-8?B?YVVRN3FlNHVMUFVRUmk4M25rN0E3VExvNUF5QUIrak56Q2IzOW5FZW83M3h1?=
 =?utf-8?B?dmd2MytVZmRYNGZnUjNPcVNwTXFIaTJKSnZTc216bURObnNraEkwRlhRV1dt?=
 =?utf-8?B?M1ovQzNCWjVxVlphVlA4WTc2OXFCb0kxZ0cyVE9UV0kxalR2bmkyd0JDYUVW?=
 =?utf-8?B?TmJyVU54d3BLeUQrd0dFcVlYMzZDTnY4VWRZVzBZVXZFVkYxb0tkdE0rUnZj?=
 =?utf-8?B?M3JzWSswU2ZkYzhjTGNsT00vS0ZKeTQwakVvMGRwYVUycWdWemdlVlBxb3Rn?=
 =?utf-8?B?ZkdyVEJaK1BEdVhqZFZldzg4Y2RhOGIwZXZ2djBrWmFmMUMwWmdHMFRCNXp5?=
 =?utf-8?B?MlhHY2pTRXZVY2ZWL2xXdkxuUjRYK2JXdkFiN1oweFFlNHlHSU93clI5VE1G?=
 =?utf-8?B?bnFaMm9oMmRZdk9xUlVqWDlNdDhZRlFaZUpEcFpsb29zdlorT0tGR2c5eHRK?=
 =?utf-8?B?WGRnc2grcDd5SDlYTlJ0NXQwOGwrM3F0eVNPU0VRc2llTXdRSmxvTk1PSUFi?=
 =?utf-8?B?ZlJjMER6SjUzSXZwa1dTTlc2NDIyck16SVlCSzVNWk1MSlpvb3BXRVVxZk9l?=
 =?utf-8?B?c0dCcTJLYjFyWTc5QjdSSkVmOUh3cEU5Zmw0SmxJSkJ4dHNqb0Y3TWljMm5o?=
 =?utf-8?B?K0dGWXRmWk1HVUZsbWZjdllKRWZvN1dxYkdQcXMvc2xwU2VpL2pxaDN4amsr?=
 =?utf-8?B?eDZON2VnS0RjR1lMZlZxUHEzN0ErRk03U2N3MWxQYUlPTVIxVDhhUVc5d01S?=
 =?utf-8?B?WjYvckZSUDEyalQ5dmNaTXFmU0ZHcC9IRzNJdnpIcWFzNUNna3EwNi9TZGNM?=
 =?utf-8?B?WThiSmRDUklyMDFmTUovL2c0ZEZmY1ZzOU5NYTUwcEVBMnV1bTdOR2FSMjFQ?=
 =?utf-8?B?Ymc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ec7331c6-021a-44f2-72c6-08dc36c717da
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB6375.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Feb 2024 12:33:10.8526 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GQreqmkS7uYRN9gZ5+LUBc0p4cDE8LjXwQZKKo/VZO5DeWE1+BeTq4iml6Kz6Od5qWdCLu2AI++TiLZ7WHIvaYx3rIAbCwJbXsCBHjopIus=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4868
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

On 2024-02-26 12:09 PM, Takashi Iwai wrote:
> On Fri, 23 Feb 2024 18:09:59 +0100,
> Cezary Rojewski wrote:
>>
>> On 2024-02-23 3:44 PM, Takashi Iwai wrote:
>>> On Fri, 23 Feb 2024 12:46:24 +0100,
>>> Cezary Rojewski wrote:
>>>>
>>>> If i915 does not support given platform but the hardware i.e.: HDAudio
>>>> codec is still there, the codec-probing procedure will succeed for such
>>>> device but the follow up initialization will always end up with -ENODEV.
>>>>
>>>> While bus could filter out address '2' which Intel's HDMI/DP codecs
>>>> always enumerate on, more robust approach is to check for i915 presence
>>>> before registering display codecs.
>>>>
>>>> Signed-off-by: Cezary Rojewski <cezary.rojewski@intel.com>
>>>> ---
>>>>    sound/soc/codecs/hda.c | 5 +++++
>>>>    1 file changed, 5 insertions(+)
>>>>
>>>> diff --git a/sound/soc/codecs/hda.c b/sound/soc/codecs/hda.c
>>>> index d2117e36ddd1..d9e7cd8aada2 100644
>>>> --- a/sound/soc/codecs/hda.c
>>>> +++ b/sound/soc/codecs/hda.c
>>>> @@ -350,6 +350,11 @@ static int hda_hdev_attach(struct hdac_device *hdev)
>>>>    	struct hda_codec *codec = dev_to_hda_codec(&hdev->dev);
>>>>    	struct snd_soc_component_driver *comp_drv;
>>>>    +	if (hda_codec_is_display(codec) &&
>>>> !hdev->bus->audio_component) {
>>>> +		dev_dbg(&hdev->dev, "no i915, skip registration for 0x%08x\n", hdev->vendor_id);
>>>> +		return 0;
>>>
>>> Should we return success here, or would it better with -ENODEV?
>>> IIUC, the code path is from the early hda_codec_driver_probe() hook,
>>> so returning an error can work.
>>
>> Good suggestion. Indeed attach() is called by probe() which treats
>> -ENODEV just fine.
>>
>> There is a consequence to that though. Logs from LKF show:
>>
>> snd_soc_hda_codec:hda_hdev_attach: snd_hda_codec_hdmi hdaudioB0D2: no
>> i915, skip registration for 0x80862811
>> snd_soc_hda_codec:hda_hdev_attach: snd_hda_codec_generic hdaudioB0D2:
>> no i915, skip registration for 0x80862811
>> snd_soc_hda_codec:hda_hdev_attach: snd_hda_codec_generic hdaudioB0D2:
>> no i915, skip registration for 0x80862811
>> snd_hda_codec:snd_hda_codec_configure: hdaudio hdaudioB0D2: Unable to
>> bind the codec
>> snd_soc_avs 0000:00:1f.3: failed to config codec -19
>> snd_soc_avs 0000:00:1f.3: Codec #2 probe error; disabling it...
> 
> Yeah the latter two are basically fallbacks, and I guess we can
> disable them for ASoC case?  An additional patch like below.

Thanks for feedback, Takashi. One of the design philosophies for the 
avs-driver is to avoid any 'if (bus->ext_ops)' statements if possible. 
This is to keep runtime flow of snd_hda_intel and its DSP equivalent as 
close as possible.

What I propose is: address the problem directly in the avs-driver by 
ignoring codecs for which probe_codec() returns -ENODEV. The TLDR of my 
previous message is: we do not want to do any kind of recovery e.g.: 
HDAudio controller reset if there is no supporting driver for given 
codec. Will sent a separate patch as part of v3.

> --- a/sound/pci/hda/hda_bind.c
> +++ b/sound/pci/hda/hda_bind.c
> @@ -279,6 +279,10 @@ static int codec_bind_generic(struct hda_codec *codec)
>   	if (codec->probe_id)
>   		return -ENODEV;
>   
> +	/* no generic fallback for ASoC binding */
> +	if (codec->bus->core.ext_ops)
> +		return -ENODEV;
> +
>   	if (is_likely_hdmi_codec(codec)) {
>   		codec->probe_id = HDA_CODEC_ID_GENERIC_HDMI;
>   		request_codec_module(codec);
