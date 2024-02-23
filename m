Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A6908618E3
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Feb 2024 18:10:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA4A410E072;
	Fri, 23 Feb 2024 17:10:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RhYFAsHh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B09E110E072
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Feb 2024 17:10:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708708214; x=1740244214;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+tF7+YsfUwgmD+ee8bbCdcOauZjyXiUdmTJv6MUpm4k=;
 b=RhYFAsHhJVEvkWXI5ufXopWmYPHlhBox7EiQUVcp1fYwHOlT8czbwyo4
 IyXeNktRkBzZEXy8rEGn5JMSH9ewrbIKA6Nobdx3zIqKBeshUiPCaPMv4
 c7QtDS94I14M0bhTWJOcHTrRsTTLfRIKeM5CqqWP1wPxpCvgYaiNK6YuF
 mUzdVZCx3dRGXl2fCuIhRztCqTlmoGrIeZ60zLM0L+B3iXvmIAtrSUNc1
 HdtniAEk02WP13gMnwdFXMvV4j2JzIfljpF7fUkItK4cEDYVfjJrgMnjb
 LDXevFjLHObcwHopGKE4i9ktGBZyqmlwm2XaC5oHTS//tQZ7JKdvi8KPF A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10993"; a="2897415"
X-IronPort-AV: E=Sophos;i="6.06,180,1705392000"; 
   d="scan'208";a="2897415"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2024 09:10:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,180,1705392000"; 
   d="scan'208";a="5968443"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Feb 2024 09:10:10 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 23 Feb 2024 09:10:09 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 23 Feb 2024 09:10:09 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 23 Feb 2024 09:10:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MJSjwuCOssIItEwrUgZbNt9bDJ6VhqnPkSX2Ju/Z3y1178PoOjzHgO0/DdSNEgLJCfxc0MqTTJsdPb3DHvfld0XyK7XcxkaHoep4YkKCj3sdVG+qkGMyc3d9rFnK74zeZw2YCQEui+kKX8QstfATw2LXbssK01mGHkZ2AJY7tXbCcQS4fY6ccLgDX9UI/ADPk00Ovx/nMwReGDuAbFzy2gKr0lC9cYyFGsZPI5anRFQdgWEyHv9pPQ4GwQ7djJDnE0Sx9HOM7Ht/dH4D4Dd0WGOBfy3JlJkEkEJIOuhPElCxtbI0+TrNWE2D9zW2QM/eFXx2Wm/FPAGOE8A4d62GEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6EUTfu9hIBOTtHiDPcplxQFy97Cn46GRC8hoef1uag4=;
 b=OOoPwROfkJXKL7KqWhNzmB6hs9XHyPOiVwCo+WRs6a+Eg4jXL9/yFCj9DAYU5o3V5P8yCJnWWVHADz4Z9ryFym5AEwu4xGyhjQkbfne3YBbWavZ+8etJW1KYgzb/vvBSbb+8ErKAVS+2HBORLDzWI5u6clhQv5XAycmfTallTmDu+IVc+aPyGgng9Cft/LSOv0m/z647pdcTY09+PMiRE1UB+WLrVFml1dZk2QTNTke7p00VYL+89PIhj7BMo/Hd90Ys8DQpYTjXF0LnEHrqKSU9Dwmym4c7fSP0IUhttMDY8WZLYzkl7Zmt/jCRvxVzK7pjf+JGeQx3onQQ/2lhXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB6375.namprd11.prod.outlook.com (2603:10b6:8:c9::21) by
 PH8PR11MB8062.namprd11.prod.outlook.com (2603:10b6:510:251::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7292.39; Fri, 23 Feb 2024 17:10:07 +0000
Received: from DS0PR11MB6375.namprd11.prod.outlook.com
 ([fe80::5d2:537:5261:6713]) by DS0PR11MB6375.namprd11.prod.outlook.com
 ([fe80::5d2:537:5261:6713%6]) with mapi id 15.20.7292.036; Fri, 23 Feb 2024
 17:10:07 +0000
Message-ID: <19f57fc4-ae64-4054-a85c-38ff37c1bded@intel.com>
Date: Fri, 23 Feb 2024 18:09:59 +0100
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
From: Cezary Rojewski <cezary.rojewski@intel.com>
In-Reply-To: <87plwn2qbs.wl-tiwai@suse.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR5P281CA0042.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:f3::15) To DS0PR11MB6375.namprd11.prod.outlook.com
 (2603:10b6:8:c9::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB6375:EE_|PH8PR11MB8062:EE_
X-MS-Office365-Filtering-Correlation-Id: a50747b7-a32a-4475-9a3a-08dc34924895
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 996kqhTq2Q/H6oYdknpYnRMFsWjyO7zXkovedNOzNf6fRxCQ2HVWdWw+cmBjn7cVu9nrQJ+ZwH82cL1kdY0kDl4g63EAH/SA9RQQlAQaqIWGZgoTF57OeZ5k3C7Z2waC9c7u/8AfJFbgIydhszd8hGmOHxL7fvbua6gWsgP41H+IvjPb5NbCGYZSB41CBcdkrtvFAfN6U9U7bZ5t07uhpYdiFPCYM+gopVNglwTxtVGTwAwXPwnUB5AHjLggwAbZ4TZNg3ihcb/dNiLL78KyGT6+NrINzx0I1YMSWC73eaNW+RQWynknj0lUtlJ+6t+XTcJ6E/I7nZONFKBVl37HZTL27BSMaFAKP4AUKOmtgkMNVIUaMDuTj/4t1wLON0FkI7BKVQ+OZOLhMXJR8b7+NH0ws6cG7ERldBIIvkVNwSyDjs5YCfCHsV8OUCszvrCWFg3OopwJcTvu/PtGh7/PJehlzAVQHmY6PyAvUgJlnR3+VLBsLv/MwQMqixiptejTdX2E2au/U9NZYbqrIw2YQVzeAcHRiD0MZBWWVzLyy8g=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB6375.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dzc2VVdZYVV5ZGZYdm5Wc1NpeWxLZk5Na3NvZWM4MW5DR29rNlo4R1B4UmxB?=
 =?utf-8?B?alpVV3k2ZHlpRmgxNlBXU3VXY3BzMTFSVnNLL0J4dHppNnhVMnpsdU5yOWIw?=
 =?utf-8?B?UlR4bEhTWncxSUZCUkNiUXVEWTU5L2ZRNkdjU2NPUExtUkVaUzhyQVNKUENz?=
 =?utf-8?B?UWJvZDJpYVpTSWdIZ3oxSmlyNHZab252dWw4VUw0OUdMbjZnK29jUWV5RDRz?=
 =?utf-8?B?UklwbXFud2tNTVdoQUZETXRpZVh1VTlQdnVDak55ZHE3V1l0WjhncEFYNkxD?=
 =?utf-8?B?WEpwMzBBS1ZRb3NlYlhmbHhja0ZYUGx5amhiN21VSWJ5ZGVMSDhwTjQzMWMw?=
 =?utf-8?B?bWR2OUJrUWFRZWZPV0d0aGtWSUlGb2xoc2hQaWJ2aXhXd2ZnMWpuYVZSWVQx?=
 =?utf-8?B?VWdHMFRmUkI5a0dGdUVWZUg4OEx2b0RZYUwzK0I1TWJ1SWI5OGs4MWpGMnFa?=
 =?utf-8?B?dTF2d1dTZzUxMloyalRBNjY2U0JMSUVRcy80UEtFMHhTaUhlTzNXSjNwNUJJ?=
 =?utf-8?B?RnBaVkljUTV4Vk91a0dhU2RiMlFFUkJScXVDYTF6Q0VqUmNwUUJNV2ZaSURK?=
 =?utf-8?B?SzNCREprMGhiUUVtZFZhZFNUY2prMGY3UmMzODE2OGJNaHVwakpFOGhjSnJU?=
 =?utf-8?B?dXNubEd4dDJPQ1J6K0dsK1EvWXF5UnViYnd4OERGcVkzd0Q1QVFOYzVQenpJ?=
 =?utf-8?B?NEdpWlo4Y1hwVzQ5L1hOQ1NKUnFRUjlWempINURDQlp0VnQvQitISlc5OW5S?=
 =?utf-8?B?UHl4Mkx4dVdtQnhwUDI1NkVTbUZrUkpvS1pMSnJoT0lsOCtGK2lOc3hJUmR3?=
 =?utf-8?B?WFNzLytGMmdxeklwNmNxWW5vTGlRc3U1VG9NT0JoZ0tHblFvZjY1SCt2djF0?=
 =?utf-8?B?ckZpa2djN3ZPeU5rTWZGWGd5QTk4ZEVpMjlIZFVEbmZySXVaeUhFWWVBQmE1?=
 =?utf-8?B?K2h2N1VzNS9GdUtuT3kyVnBxZGVBdG95NUNOWml2Um9hTTVsbTIyR0JlQTB1?=
 =?utf-8?B?eFNlZDM3Zy9UQmttU01qNVlRM21xK3hDek1RUFNUdUt0STlhSVladFlnSk5Q?=
 =?utf-8?B?VEM5RUJBM0RnSkdNbEU4Ym5VcjMzYm13QnladHVDb0MzMUhYdmFUekdYbS9t?=
 =?utf-8?B?TkdCRklzSXM1V1cwNUFYbmRlNjZrQldOeGo5VFh4YTk2TlBKYVBPdXZGSlZL?=
 =?utf-8?B?b0dUTWtreFhJR2dTQnA4U1VHQzdNSTQzYWJwdzQ1UHJVR2hLSzMxTUgxcURt?=
 =?utf-8?B?akNQa2l6bjRmS0hjUmdUZ2YvUG9yZHp1UmxmdldNTkpuOVY2UDN6cDA3c2NP?=
 =?utf-8?B?UWhMb2VUOC9PWElZY1E4SUZudm9EQks5d3ZtdWhoMXVLaFp5OUM5Z1I3WDcz?=
 =?utf-8?B?d2Z2L2M0L2p1U2lSSjNibEp2ejdGNGkxc1N2cDg3Ujd6Q3orOW5uQ0h3NXBX?=
 =?utf-8?B?eDlVdmh0UzcxbWxzeC9LVkJoV3BQZWwybnZ3K2NPS0x2YytVOWtGanYzM3BE?=
 =?utf-8?B?M0tQYWVEUXI3eHljU1lEb0g3QXFObG12dlhOS0g4dVF1aWNmMXpaQlkxakly?=
 =?utf-8?B?YnNhL3FibThoUFFGcU8vTVRzaFdtVHFlaUttZ0NyeUttaFFRQk1MeDFJMWdB?=
 =?utf-8?B?MXNqbFhGd3lsTDFOSE44Ym9uQ1d3OXR3dzlhME1JaUVDc3dVM3dPQkNGd3RR?=
 =?utf-8?B?NEVIS2g3TmdHTWk5L3BydTBxaUc5QU1yVElMYk05NTR5OVZMVXR2Z2hWZGlT?=
 =?utf-8?B?M24zVDdWc0pOb3dqdm9kQldGYjVjTWlrQmlyZHlNQWZ6OERxczBCYjIyVWVq?=
 =?utf-8?B?RW5ZMEVRN3BpN0RpL1VYcXVJdWdtNDZlSi9Kb2lCN0hWQ2x2eHV4anF1ZFFk?=
 =?utf-8?B?NEZ2OU4xQUg0OVRzOHF1ejlJSHAvakVFbERKR0VxZHIzUjNTTko0Rm04WUV0?=
 =?utf-8?B?Qzc1dWhWWG5WeXA0NVZpS1BTa2Fzc3ZJemlFOTlwQ0tjTlc5OWZORjJKMXFD?=
 =?utf-8?B?a0lNZnpjZVFFMzhRbHpYM2x0V2RrZUpUZ1FvbUcxaVBBYWNua3BmSXpwN05q?=
 =?utf-8?B?c3c4TWdncnRjam5TeDRxdVFMa1hYTEpaVWE5V1J3M1JRRkZNdzhReGloTlpO?=
 =?utf-8?B?UnQzTGJWSGozd2REbkJBWFkrRzJGWjF4a3Yrajd5b0FiYXAvSlhza0QrRUxq?=
 =?utf-8?B?NVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a50747b7-a32a-4475-9a3a-08dc34924895
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB6375.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Feb 2024 17:10:06.9542 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4U3/zscWInAbaeDrdJoNLRQr6kXPG/23RvuBAiUVaHC2MDyIxasEkUr/xAinHQUDvDZi8IrFGJxsZdRLfK1VOuKQH5v0tMLYLUhyT8Y/C9c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8062
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

On 2024-02-23 3:44 PM, Takashi Iwai wrote:
> On Fri, 23 Feb 2024 12:46:24 +0100,
> Cezary Rojewski wrote:
>>
>> If i915 does not support given platform but the hardware i.e.: HDAudio
>> codec is still there, the codec-probing procedure will succeed for such
>> device but the follow up initialization will always end up with -ENODEV.
>>
>> While bus could filter out address '2' which Intel's HDMI/DP codecs
>> always enumerate on, more robust approach is to check for i915 presence
>> before registering display codecs.
>>
>> Signed-off-by: Cezary Rojewski <cezary.rojewski@intel.com>
>> ---
>>   sound/soc/codecs/hda.c | 5 +++++
>>   1 file changed, 5 insertions(+)
>>
>> diff --git a/sound/soc/codecs/hda.c b/sound/soc/codecs/hda.c
>> index d2117e36ddd1..d9e7cd8aada2 100644
>> --- a/sound/soc/codecs/hda.c
>> +++ b/sound/soc/codecs/hda.c
>> @@ -350,6 +350,11 @@ static int hda_hdev_attach(struct hdac_device *hdev)
>>   	struct hda_codec *codec = dev_to_hda_codec(&hdev->dev);
>>   	struct snd_soc_component_driver *comp_drv;
>>   
>> +	if (hda_codec_is_display(codec) && !hdev->bus->audio_component) {
>> +		dev_dbg(&hdev->dev, "no i915, skip registration for 0x%08x\n", hdev->vendor_id);
>> +		return 0;
> 
> Should we return success here, or would it better with -ENODEV?
> IIUC, the code path is from the early hda_codec_driver_probe() hook,
> so returning an error can work.

Good suggestion. Indeed attach() is called by probe() which treats 
-ENODEV just fine.

There is a consequence to that though. Logs from LKF show:

snd_soc_hda_codec:hda_hdev_attach: snd_hda_codec_hdmi hdaudioB0D2: no 
i915, skip registration for 0x80862811
snd_soc_hda_codec:hda_hdev_attach: snd_hda_codec_generic hdaudioB0D2: no 
i915, skip registration for 0x80862811
snd_soc_hda_codec:hda_hdev_attach: snd_hda_codec_generic hdaudioB0D2: no 
i915, skip registration for 0x80862811
snd_hda_codec:snd_hda_codec_configure: hdaudio hdaudioB0D2: Unable to 
bind the codec
snd_soc_avs 0000:00:1f.3: failed to config codec -19
snd_soc_avs 0000:00:1f.3: Codec #2 probe error; disabling it...

i.e.: three attempts. One for HDMI via codec_bind_module() and two from 
codec_bind_generic(). Situation on CNL-based is different - two logs, no 
error. The reason for this is lack of codec->preset in LKF case.

Should I add stub entries for ICL-HP/LKF to patch_hdmi.c to address this?

HDA_CODEC_ENTRY(0x80862810, "Icelake-P HDMI",  NULL),
HDA_CODEC_ENTRY(0x80862811, "Lakefield HDMI",  NULL),


Czarek
