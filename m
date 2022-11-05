Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A268461A679
	for <lists+intel-gfx@lfdr.de>; Sat,  5 Nov 2022 01:50:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD88910E8F3;
	Sat,  5 Nov 2022 00:50:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A7ED10E8F3
 for <intel-gfx@lists.freedesktop.org>; Sat,  5 Nov 2022 00:50:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667609406; x=1699145406;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1vVaY6hxMAE2Yr2TsSWWE6IEX4zMHL3CQrJVh8MEWLY=;
 b=JgHSlUjivKJt8L63FK3NxP/SDnt2aIR//BZ4RY8whbbxtpkaf2tfWuKb
 qcjqHbAuuoz1W+c4cRaZbPZoX7hXQf6OWJEwm+gKUmyFfa+scUT6Ntdw1
 AXhlznhDlM8zFRZ7lPm3YpfSBopTP/rUWrUmjFBOy0Poli9kfv9OftXvk
 HHnU4MNYeG9fANBeXkQnaZ/dK/4moU//PEq0+VQ6klHeFWaR2ZR99+9Cd
 2TUPZeIL41zuBFZLiEv50YWDwYZaEMflhkUzMgmv4j4Hl6BU3OP71al2n
 0/I/eQ+AbU0NOIB+p8PRG8yBtIyfa7RF0BTJG3Di7hIAs92Ox02eIGckW g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10521"; a="289833283"
X-IronPort-AV: E=Sophos;i="5.96,139,1665471600"; d="scan'208";a="289833283"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2022 17:50:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10521"; a="880481049"
X-IronPort-AV: E=Sophos;i="5.96,139,1665471600"; d="scan'208";a="880481049"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga006.fm.intel.com with ESMTP; 04 Nov 2022 17:50:05 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 4 Nov 2022 17:50:05 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 4 Nov 2022 17:50:04 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 4 Nov 2022 17:50:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eNX0PYq/KvxqlSlZv889opCsXmEddAsgXzADpJhbXHzpmsRqtEq8muySBo4FTLV3yeHL4Exxaxslkt34iHN1K5bSuVZfse8pkb8iL4mJPf4+4mxMH8aJhpBSH6MeGVX6K4NEgmhUJTB4n8ElQMUv92PY3J3tZ3NI9A+vInDoTGHyFqGWLK7rD/TMUKNQ6OZQVAbuf7jnYV2bnDYo08zqTjBldLE7qmHF3GRWPGfw8hvzIkzzAMKqBTZT2vHkJV6Y1RoXVbXwJKZlN5ouUF4Kd+fWUK/qOkEQY8H4+GckG3yvC17UILw1XHj50ww4///+/XoZOU/Uk+QRKWEeefwwQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ar8ocmMCVnt+vnw+etNcgu0rk122AsZ7Ol7QPfIzlrQ=;
 b=FQOL8YmercQIV745TylRIvGD2jk5flX/TnPHY4LF1cW6P3g9yUshcw4WpHAYlrAF5y+Dbk6OEQxY3mvK1Wg16F0aMBmuLz37M7PIZDp5hNEUjOyDM97jwg+SJLcZiKjy+S+lx8e3hUvscq+AiP/mqQELZIWl648/EOO55PaxlplIaSCqSJbcJdjjaiaHq7NcFtilIDoX2a5ICTMthM7vTwEuZLRcEQag5/b2d1xjUsKBNAImZ6UmDhMmqo51gexXauCGxM0vEpmKfWrPas11SS1pfHH3HtWDpJuslHX+spQ57IxiSWaAaMKigwOekvJITXsgML96CHc05SMbdozbUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 SJ1PR11MB6228.namprd11.prod.outlook.com (2603:10b6:a03:459::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.15; Sat, 5 Nov
 2022 00:49:56 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::bff2:8e4f:a657:6095]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::bff2:8e4f:a657:6095%6]) with mapi id 15.20.5791.022; Sat, 5 Nov 2022
 00:49:56 +0000
Message-ID: <d1be3d1b-da7f-f1a1-cfe2-143bcbd99b45@intel.com>
Date: Fri, 4 Nov 2022 17:49:54 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Content-Language: en-US
From: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
To: Brian Norris <briannorris@chromium.org>, Tvrtko Ursulin
 <tvrtko.ursulin@linux.intel.com>
References: <20220928004145.745803-1-daniele.ceraolospurio@intel.com>
 <20220928004145.745803-12-daniele.ceraolospurio@intel.com>
 <5589d713-c371-1121-ef74-58be63057ac4@linux.intel.com>
 <Y2WfpLbX1SeDtk+7@google.com>
 <301a2ee5-db5a-ff79-f94a-ef6014ca3a10@intel.com>
In-Reply-To: <301a2ee5-db5a-ff79-f94a-ef6014ca3a10@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BYAPR06CA0007.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::20) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5488:EE_|SJ1PR11MB6228:EE_
X-MS-Office365-Filtering-Correlation-Id: f76367e3-43ed-4ad2-86bf-08dabec7a8b5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Vvrt4YMeFYs098BmxEKSEXA1tV2jZm7ussf1xzLhGdY3Sri+zkQr6Vg2XI3tUnbKMLjDdjTQ4gsuaspEpuaaUI0O9vs70I73fsC6yiZ4Sjbb4h1XRZ23oxmQeE9Nh+iYQ+wrxlNgbJ10Wr7Cfzza9TG2Sa0RzN46xuk44XwkEDkZkm+P/QcNHB4C3t7xgB370axO74YiOrDRGafDHcWjsFfYa7cSYafolzJFiI35HtMMeGieVEMMR7pTlxEMZoOnOiZuDBTtxF97TguBtB12euMA7rqCgnqQgR1e6bXoeIeUq30dblXRma71zlJLsbco5jLxDoYLjVujNTydWBRSts2/2Sj2Ct7ZzhmL5GwkeE+h7Kt/+r+5cQbTLN/2NPlX1zSbn97tvA0SNdcFi6Fkz7tUK+vQz/MT+WGJNSIw1GrNfj+3cpSngArnysB7USkJQzW2S/Sz1e4IdXlMU3oj5YqdKq0UQGGQRzh/bxjqMR2GugNfFSYVraxUCw97U/TC+6ACeu6+D0lm0YUP2jxGEUxkrpwUHtAOhOXaOVLM3vW4nt3W7EFpcYAhmpU0TGozFyHNp79WcqsqTxmm0B63oUfiRoCTTGnxVDS5uspLgyXBQV0k/klkhyvR2maKo+1deYHpUh8EFyVd3TQBkWFxed+8Q5Q6Kfr4cMlw1vRWHC7KI6DIpNgNUyhMEO03FcL0n9SgfmXP7Gpu5+EecYh2A3UuhMHKEJsgQom5EZVawIaZuIYQXXrFoBgxTkpAhtGvGHdOAEIo7TVgvnUAcaEDFrZS0yeGlabs8aiaT90skAY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(396003)(346002)(366004)(136003)(39860400002)(451199015)(5660300002)(26005)(31686004)(8936002)(2616005)(6486002)(478600001)(4326008)(66946007)(36756003)(6506007)(8676002)(45080400002)(66476007)(186003)(66556008)(6512007)(53546011)(31696002)(41300700001)(86362001)(2906002)(110136005)(38100700002)(316002)(82960400001)(83380400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VzFKT1o0MC9oUXJiTUdqYnVOa0VaK01ib0haUUhvYmVoTGphS1NDbldrWHNm?=
 =?utf-8?B?MTlZRFhrV3ozTXphRmVIMFNqVVVldHZOUFdvbVpCQUN4Q1IvSXdwUzYyUHFo?=
 =?utf-8?B?Z0VrNHhTdFREZHlkZUlGc1R4ZUo3Z0xNR1MxdTFGeC8xN2c2NmI0T3oxZy8x?=
 =?utf-8?B?RitHcGJTNDNQZHBpbTRtMDYzY0NFSS9lTzIzR1k2ZEhNNTJXc0c0Szk3c0c2?=
 =?utf-8?B?dUZKTzF2emw2WDhXbEh6YjZ5c09BeFQ2VDFBY1dweGY1ZUN4L0d4SzBQb0ZD?=
 =?utf-8?B?OVQvVjlyRjMxNTA4cFFPS1o5U1BBc0lQNDl1ek1qdkhwTE45NWhINFRMK050?=
 =?utf-8?B?TFIxUDZ6Zm9zMHFaSmhmM0hrTmtxb1RHMXRIa3FNVitTQzhnRENNT1JGeXV5?=
 =?utf-8?B?dXlCbVI5blplMUFJenM2QWE1aURtTFF4MGlKNnV0bmJBSEd3djZhbkdSdWo0?=
 =?utf-8?B?NUUzamQyWTQ0YXhYRFZZdFBlZmU3bFJycG5JVzlkeUJ5ck9GMlI0SUtJSTFL?=
 =?utf-8?B?Q2paS0toUEVwbmIzQkdFYnc4QlNudHk2R0RGSzJYblJkVW91cUZEZkpFRDFz?=
 =?utf-8?B?VXp6Ym85SG5XOFhqWmlCQW5tNDRteENNd1VyQytsaExBSUtDOFgrbzZRZEg2?=
 =?utf-8?B?YjllZ1BVUDB2YzJsZzdWQkRSdGRXWXFoZVlKVzR4bitudFM5UkRwM2NIUXdG?=
 =?utf-8?B?WFVkdVpjVDZ5eVRIck9keHcyaTdwb2c5OFo2ZnNWQXFUT0xjOGhSZ1I5R2p0?=
 =?utf-8?B?VmdFU1FZbUtPWGV6cFQxajVIQ3l1Nit0RXZKQnZwS201M2x5eXhDM005a3lp?=
 =?utf-8?B?UEFzREhVbjJjWFdMaXFNbjF6dEJwdlJweUtqSFRoQVNoQU80aVhNUG9qWFVH?=
 =?utf-8?B?Y084VGFDMkRFSlVndjV6blpDei9LNlBCL0E1VW5mdFJDeHJaa3c4MDYzcERD?=
 =?utf-8?B?bENURmY2d1ZLWVRwR3p4SXVZVDJ4cUtEb2cyeCtCdGdkRnBtTDZCNUs4Z09j?=
 =?utf-8?B?MENXbjNwRFZKSSs5YUhad3d2RUlwM0dvbVYwamZJbXN4cmVGMU1KaTdpR3l1?=
 =?utf-8?B?Zm44Z1BCaDdOMEYvWGN2dzJVeGFwd0NwVDBLZ29sb2djcWhUTW1LekZzMEFG?=
 =?utf-8?B?UEk0VGNsUDNSUW9waFBmOUlwVGRWbE10YTR3bXVZYTJrNVlmTkcxNEJxZDZx?=
 =?utf-8?B?ZWdaV2NkdjZHMURtNmxzZitMSXFQNCtwQjh1cDFqTGYzYjF5ZUJ0bE0rcHRx?=
 =?utf-8?B?anNZU2JyV3hYQmNwVjBjaUV0dGZXYjU1NzFtc2lXL1MyYU10OWFFZmhjRldI?=
 =?utf-8?B?WHc4S0xBaUJaK1NNTzF4akt4ek5xNkk4MjBCWmZQMURqWUwzaSt1NlFFb2JH?=
 =?utf-8?B?aVpoOXZvd1lZTnp4b05FR0ZKSVFleTNkc3pwcnhCZk01OE1NRnQyLzdXMDZN?=
 =?utf-8?B?ZDUzbVBURUV3Ni9XSENrbUtSOG9KQmVvUDE5Vjl5WG1BNEl1aHdjRW8raWVZ?=
 =?utf-8?B?WUUwaXQwaHQ1U1UzQjdiVkNIOURlOUxja0NWR1g0dnE3NEgrSUE4V0FNRDBl?=
 =?utf-8?B?MXhCUU1xV0NUZ2NCQWg1YnFHMWhneHpHT2R5T1JUVUZ3V0tSSDZzODZrWTh4?=
 =?utf-8?B?R3htTSsrZEF0aWNvQlFUK1JaeWwrK3kxenByWjU2R1JPQ3pISHNlSEM3djN3?=
 =?utf-8?B?clBQUU1DM2M3RjZQZEF0cUFhMUo5ZkJ6Q3poT0ZDbXpWL3dOL3V1Rm9Hd0dh?=
 =?utf-8?B?UXluWjk0eFBCUkhNVVUwWVJwaDJJZHhNd2FmNzNXNlJGbU03bDRvSXNmTERI?=
 =?utf-8?B?V0FLZHlYdFYxZUM0bnM2UzdWYU9wbGx5NTJ1d0xiS250TGNhUW1XR1J1VURR?=
 =?utf-8?B?NEFnb1lubEdJYmJyYzR3bnRaSzFXVzFxY0lCcFh6ZzNjakVYOW5LRnBOdlhm?=
 =?utf-8?B?akV1dGR1aTR4WVFQYUhVRlZSS2ZoZDA4MUMwT0lRMWYxNGx2YndrY2NSTHdB?=
 =?utf-8?B?dFBDSDFUaFVpTklJZVhEZ1BFWnlnOWhWdHk5WEJWdlhWWG4xMjNSM3ZFNlRO?=
 =?utf-8?B?OC9hR3ZmVytzUEZKbE1LOU5lYU5ka0h0R2Y4bzFNZ3pOT2MxNTBKUmNGM3V2?=
 =?utf-8?B?WXNvUFlJVWNkdlBUeG13RE5JSzRxd1cvNXpnNDU4Nkp4L0dxMXdXV0oyREJa?=
 =?utf-8?Q?Is3PfynBhlX1yipjihvxhpw=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f76367e3-43ed-4ad2-86bf-08dabec7a8b5
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2022 00:49:56.5990 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qGponSo0/69zFJeZIWtrBiA864sVC28Zf1h4BoiWiUtxAqQL5hSGcEFe1DWa4YbSWXU+7wpZ0GYNzmTFNeunFZmm8HezIpce5WX8106jAGI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6228
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [CI 11/15] drm/i915/huc: track delayed HuC load
 with a fence
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 11/4/2022 5:38 PM, Ceraolo Spurio, Daniele wrote:
>
>
> On 11/4/2022 4:26 PM, Brian Norris wrote:
>> Hi,
>>
>> On Wed, Oct 19, 2022 at 10:54:34AM +0100, Tvrtko Ursulin wrote:
>>> Don't know if this is real or not yet, hit it while running 
>>> selftests a bit. Something to keep an eye on.
>>>
>>> [ 2928.370577] ODEBUG: init destroyed (active state 0) object type: 
>>> i915_sw_fence hint: sw_fence_dummy_notify+0x0/0x10 [i915]
>>> [ 2928.370903] WARNING: CPU: 2 PID: 1113 at lib/debugobjects.c:502 
>>> debug_print_object+0x6b/0x90
>>> [ 2928.370984] Modules linked in: i915(+) drm_display_helper 
>>> drm_kms_helper netconsole cmac algif_hash algif_skcipher af_alg bnep 
>>> nls_iso8859_1 snd_hda_codec_hdmi snd_hda_codec_realtek 
>>> snd_hda_codec_generic ledtrig_audio snd_intel_dspcfg snd_hda_codec 
>>> snd_hwdep snd_hda_core snd_pcm intel_tcc_cooling 
>>> x86_pkg_temp_thermal intel_powerclamp snd_seq_midi 
>>> snd_seq_midi_event coretemp snd_rawmidi btusb btrtl btbcm kvm_intel 
>>> btmtk btintel ath10k_pci snd_seq kvm ath10k_core bluetooth snd_timer 
>>> rapl intel_cstate snd_seq_device input_leds mac80211 ecdh_generic 
>>> libarc4 ath snd ecc serio_raw intel_wmi_thunderbolt at24 soundcore 
>>> cfg80211 mei_me intel_xhci_usb_role_switch mei ideapad_laptop 
>>> intel_pch_thermal platform_profile sparse_keymap acpi_pad 
>>> sch_fq_codel msr efi_pstore ip_tables x_tables autofs4 
>>> crct10dif_pclmul crc32_pclmul ghash_clmulni_intel sha512_ssse3 
>>> aesni_intel prime_numbers crypto_simd atkbd drm_buddy cryptd 
>>> vivaldi_fmap r8169 ttm i2c_i801 i2c_smbus cec realtek xhci_pci 
>>> syscopyarea ahci
>>> [ 2928.371145]  xhci_pci_renesas sysfillrect sysimgblt libahci 
>>> fb_sys_fops video wmi [last unloaded: drm_kms_helper]
>>> [ 2928.371489] CPU: 2 PID: 1113 Comm: modprobe Tainted: G U  
>>> W          6.1.0-rc1 #196
>>> [ 2928.371550] Hardware name: LENOVO 80MX/Lenovo E31-80, BIOS 
>>> DCCN34WW(V2.03) 12/01/2015
>>> [ 2928.371615] RIP: 0010:debug_print_object+0x6b/0x90
>>> [ 2928.371664] Code: 49 89 c1 8b 43 10 83 c2 01 48 c7 c7 e8 be d6 bb 
>>> 8b 4b 14 89 15 ca be b4 02 4c 8b 45 00 48 8b 14 c5 40 56 a8 bb e8 ec 
>>> 5b 60 00 <0f> 0b 83 05 28 5a 3e 01 01 48 83 c4 08 5b 5d c3 83 05 1a 
>>> 5a 3e 01
>>> [ 2928.371782] RSP: 0018:ffff9ed841607a18 EFLAGS: 00010286
>>> [ 2928.371841] RAX: 0000000000000000 RBX: ffff9208116a1d48 RCX: 
>>> 0000000000000000
>>> [ 2928.371909] RDX: 0000000000000001 RSI: ffffffffbbd277d2 RDI: 
>>> 00000000ffffffff
>>> [ 2928.372024] RBP: ffffffffc176a540 R08: 0000000000000000 R09: 
>>> ffffffffbc07a1e0
>>> [ 2928.372128] R10: 0000000000000001 R11: 0000000000000001 R12: 
>>> ffff9208122da830
>>> [ 2928.372192] R13: ffff92080089b000 R14: ffff9208122da770 R15: 
>>> 0000000000000000
>>> [ 2928.372259] FS:  00007f53e7617c40(0000) GS:ffff92086e500000(0000) 
>>> knlGS:0000000000000000
>>> [ 2928.372365] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
>>> [ 2928.372425] CR2: 000055cd28b33070 CR3: 0000000110dbd006 CR4: 
>>> 00000000003706e0
>>> [ 2928.372526] Call Trace:
>>> [ 2928.372568]  <TASK>
>>> [ 2928.372614]  ? intel_guc_hang_check+0xb0/0xb0 [i915]
>>> [ 2928.373001]  __i915_sw_fence_init+0x2b/0x50 [i915]
>>> [ 2928.373374]  intel_huc_init_early+0x75/0xb0 [i915]
>>> [ 2928.373868]  intel_uc_init_early+0x4e/0x210 [i915]
>>> [ 2928.374241]  intel_gt_common_init_early+0x16f/0x180 [i915]
>>> [ 2928.374718]  intel_root_gt_init_early+0x49/0x60 [i915]
>>> [ 2928.375074]  i915_driver_probe+0x917/0xed0 [i915]
>> ...
>>
>> Did you track this down? Or consider reverting? This is tripping me up
>
> No. I didn't manage to repro locally after Tvrtko reported it (I run 
> the full selftest suite twice on both ADL-S and DG2 with the debug 
> config enabled), so I was keeping an eye out as suggested to see if it 
> popped out again. If you can repro this consistently, can you share 
> your setup info? What platform you're running on, if you're using the 
> latest drm-tip, any non-default params you're using, etc. Dmesg would 
> also be useful to see if there are other errors before this one.
>

Just to further clarify, this issue is also not showing up in our CI 
runs (which do have both the DEBUG_OBJECTS kconfigs you pointed out 
enabled), hence why I'm suspecting that this is only happening on 
specific setups, potentially due to a different kconfig or modparam 
being involved.

Daniele

> Thanks,
> Daniele
>
>> on drm-tip now when running selftests with CONFIG_DEBUG_OBJECTS=y /
>> CONFIG_DRM_I915_SW_FENCE_DEBUG_OBJECTS=y. It means I can't actually run
>> any subsequent tests, because of the kernel taint.
>>
>> Brian
>

