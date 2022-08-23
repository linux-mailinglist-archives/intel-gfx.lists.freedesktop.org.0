Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1483E59E51B
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Aug 2022 16:29:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 828791124C8;
	Tue, 23 Aug 2022 14:28:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C32611121BC
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Aug 2022 14:28:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661264905; x=1692800905;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HN3j9J9j/nryIYxVZkcA0qhYqlFIfslpETC4SaDr42I=;
 b=AtQSF6aR4qwlQ/fBoN+B0+wwuC3hyk8cq0mIwo8IedkEgUud5ug5eNWX
 zbDK5PUSzX5/gK7fnnGv2QeZbUNjmr+q+QOOsC2HYZKFDKWkW/Jxw6Pv5
 ev8YR2Bz4hQsZhLhlcKMeDuAIK3+PF0I8x+gdxLwlkuQR3JjTbw70bDGJ
 SaMsk3A3W+qDOgJK/MLB8eGwDgkFGCi3V6ixdmM7I7smamH5fxjgSgjU0
 pHg53vg0nsYziR8uqpRQebD69/4J96cxRpVGCDjXWu/JdKyr4c2C1SinG
 IhkIA8+4Ogp1GkaYFrVQ5Cg/O9lvBY40ZrTQbiCZsYg4elB7VC7jvT238 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="294489265"
X-IronPort-AV: E=Sophos;i="5.93,257,1654585200"; d="scan'208";a="294489265"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 07:28:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,257,1654585200"; d="scan'208";a="937484804"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP; 23 Aug 2022 07:28:24 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 23 Aug 2022 07:28:23 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 23 Aug 2022 07:28:23 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 23 Aug 2022 07:28:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J5ErG3CldzID27gAjTodp1y0zdCq++v6e3a4Xf2IM5BNvwbRITkVFcFR3kih5sRWN7hObOR6Cy96gz8yK+MBG6++JFCyDnhFHEX8Aq1OLLRk8vuVuAosFggfQzqZczKP8eqqqBsNCcc3WNRymVVpDaCYfo2LPXm56rDCP5NfylIgwuCgpdRy0E/eV7t4RqB8D88TwDDIPHQujLrS6CqDCoQHOG/OzuKxFJ9996DiYf3f/WF5ar3J2nxRRIKaEH7jgnFwcXD8Uba1z2Z97nLr4KrTbeahz889eFE5HtqTEbzjrGJMgi8x66NZioZGEY1KpN6NRHUgxIfn0+TEqJxIIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4NAWGARtl9Sq7sTARwW7sGDJUCo+VIBVdW7CmH6lEXg=;
 b=P6UnuV0FPqWGEGylXMOxjtarBSuD4UwdbMW9FcotMUbuwOjoUuXN7e/8DT0O96xhyctpc0iZOfy01+fE/P17iuoNmkozfgVAR0w8tmexJ5PqeU1j/SAyEds7GhS7U68UmUaX3zArjugp25g7hRV2w4K1qUtJ3uENoD5/nDXdE22ZYU1vHwzEz+Gss3KgwE5IOJaflP+i+Aa6mgNf9QZaFZA1U2y6c7+fkEklCKv+kSRADHqf9YkxqDTOEJX4p5M4dQhA0l1JmO5QkujsvlGuw2A0wS/yp5J+9cBZNhCcotR4iveuOHEiKPCWfWq1vAEz9N5Osty+Ea9FC0na1915hw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN9PR11MB5530.namprd11.prod.outlook.com (2603:10b6:408:103::8)
 by MW4PR11MB6692.namprd11.prod.outlook.com (2603:10b6:303:20e::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.15; Tue, 23 Aug
 2022 14:28:20 +0000
Received: from BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::f4e3:c92:77e5:3de3]) by BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::f4e3:c92:77e5:3de3%7]) with mapi id 15.20.5566.014; Tue, 23 Aug 2022
 14:28:20 +0000
Message-ID: <31f5e19e-1f74-9457-e9a8-b65a5094f1e4@intel.com>
Date: Tue, 23 Aug 2022 19:58:12 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Jani Nikula <jani.nikula@linux.intel.com>, Guenter Roeck
 <linux@roeck-us.net>
References: <20220818193901.2974625-1-badal.nilawar@intel.com>
 <20220818193901.2974625-2-badal.nilawar@intel.com> <87ilmoo707.fsf@intel.com>
 <50a6d108-4518-c30e-5096-3ee921c75606@intel.com> <8735dnmgwp.fsf@intel.com>
 <20220823121926.GD203169@roeck-us.net> <8735dnkrpt.fsf@intel.com>
From: "Nilawar, Badal" <badal.nilawar@intel.com>
In-Reply-To: <8735dnkrpt.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0177.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:de::19) To BN9PR11MB5530.namprd11.prod.outlook.com
 (2603:10b6:408:103::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4cc82a55-00ba-43dd-fa17-08da8513ba61
X-MS-TrafficTypeDiagnostic: MW4PR11MB6692:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5wKeseniEL29ifGO00iLXf7Qkjy/lpn2QPrfL6FuabVl7Bdh3iLHooaxuFiEzjNqns0f49r1T2ZQXx8zqmmIW+GSbHXrLxBi/pshg/HzKUUfO90aMyCvHSmSchwzBBxWKUfWnXRY5o/yXY1WJDPZ6eoNPR4Nluk5OXWxrdMK8fgsX5mFuZRN2fv3yUcUZXiybJsEYizqkvxKU9+5MalrG+2ZlF9ewdwHn0ZEzHOXl1+NhXS8IhUudK7hGo45g56A52//73m2jEuOZZNVBacUZwsUbPWnZEb96v7+Eo4mJpG1mahMFcrzgslvv2Ct7BY8ppfHlAgmFunzPAVMtBSSawKjLYrJ5X0G3vu8UKX9Z8Owr6AjuubEwdfVXL59v1RK1KpyEKZD2ukK2Y/Mr3xteXNjcsfziSNqHpNy0Fwx1y4B+90BF5Go4zymLPKKZlGPacgx4J1e/ET9DpEQoZv5ctIV3JqB8/clUm/7DoUSiDj5zmO/rZEHudZ/vBTSZ8HkMWJM+Dz7GAv3YMO5IhoUfCPTR5jYlW9DDccVuC+xBGlSNPN0Z8Ddo+23C8uk/I3Eg5ANSUts6mfv5Dq4Jv7pXKa1p+72iQ5mCGXvFwuYg6DeiWOI7oabIgkYD5b0esp1JgbRN2EXamoNnetD7kpjnF6uqZLyIJe5JTb+VDuWhzpnkwvoP5z+s9w0CisFqgC2dOb4d5df0BK9vRxqyrTw3C44yVWMaFfcO7jujsEp7hv+7eNszlHStet2UY+xPzYg+6vNwvapAkKe42mEQwNiRgaof/fO6+xzv/QLbMUKnW4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5530.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(39860400002)(346002)(136003)(396003)(376002)(186003)(316002)(31696002)(110136005)(66556008)(66476007)(8676002)(4326008)(38100700002)(66946007)(86362001)(41300700001)(53546011)(6512007)(26005)(6506007)(6666004)(82960400001)(2616005)(478600001)(6486002)(31686004)(36756003)(2906002)(5660300002)(8936002)(83380400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Tk85bDFJWE5xT3g0OWgvWkFva05lV2FkOFhhcGlaY2F2a2UyU1Rlc3ZuTm9J?=
 =?utf-8?B?emhpNlQ0VU9xQkNPQW5PcEdwR2xEbURJNHI4Q2JqTXpwZnRrWnhWWmFFcUFt?=
 =?utf-8?B?dnRuV1Z3NWxLVVFhVnhhdkFJOFE0SHNLSUJiT0labFpENk1WK29HZi95YTA3?=
 =?utf-8?B?bXdyRHNEQ0phdHlKT29TL0JSdmViaXFzSmxjMG43VEkrbXRpVGJUajhNeTA1?=
 =?utf-8?B?UGg3anB0dTMyc3RlbHg5dzJnWFlOMEpzQUtJejEySHoyTnV5NCtZTE5PWlEv?=
 =?utf-8?B?R1kxTFJEYWdwV3JiYzRBbTBoSlBRNEdmKzNzZzh6U3lLR2YvejNiWWQ3S0Vv?=
 =?utf-8?B?MW1pWEpBSnBzV0V3QXI3L1pTT2QvNHVwM3RIanVsZTd6YkllQ3pOY0VQNWRF?=
 =?utf-8?B?TzNzL0F0TWlnT2QyblNWVXZRVWVsaEZrNm5FbXdwTEhaT29CZDE3NTlNV1Y5?=
 =?utf-8?B?MnlobVFXaVAwRkdmRVM2ZHBEK21BS3NXLzFYRlczN1NWTjhWWlJiZ1dHWENC?=
 =?utf-8?B?RHN2aXBNaUdQZytzWE5mNmk4emNoelBYZjdhdGY4bm80VGdpYlMyZHV3MHdN?=
 =?utf-8?B?SWltWDBtRFVmNXB5bWl0OTV0cTBvWlBqd0gwc2pCNDhFV1NnVG5vVnhNU3dq?=
 =?utf-8?B?SzlkK3QrbXJ2UXkrc2pGUzB6WkorN0QzdkVuR2NGK3BXOXRBUVVVV0pBUnpL?=
 =?utf-8?B?T2JaS2dkQUJGSGducTluRHdPQVg2RGgxcXdtVmtmKzBQRWdHQ2JSUkVDc1BW?=
 =?utf-8?B?YW9lYmN5YTkxb1F0bUZFaDNIajd6Y1o1ZzlHUmNrdzBvTmNzUW81TFlXSjh4?=
 =?utf-8?B?SnJ6M0pVTE90RW1nQWcyeGR6aXJXSlJiY3VmN2prc2RsYmNjUHFFWUJTblgx?=
 =?utf-8?B?ME05MElEaUNURzl2SjJpS0kvV1BKa2lvbGhXMTFHR2dkV3VZVFAzbGJGejlU?=
 =?utf-8?B?ZzE5Q1ViYmp0L0xHeUY0ZkZwRXIzMThKOEJkOGlWNjdXWEk4RDdMYm9SeWEx?=
 =?utf-8?B?YkRIaVF3eVRVbFVpSENYTG13TFRJQkQ0djYxclFkRENteERsSUlocFJVZ2Vm?=
 =?utf-8?B?K1pibXg5S0NudEdyUkV3MGF4cXl6TUJxS1hLTzgreW5kY3p3TnVYTmdFanZa?=
 =?utf-8?B?ckJzSEFaMVhpbTFkMC9WcG5HcFlacGUvQkdyM2FZVGtBMkEyNjh4Ykc2R2VG?=
 =?utf-8?B?eTRqdTI4cEJTMjJVRGI5U004b2JadjIyaWNvWWJrSUx5QjE0YU9oU1hKQk5p?=
 =?utf-8?B?YnlWT0E2SHRsdlNteVRaS1FXY1IxajdsQVV1QXlrQU1HODRTUzBRMitxeHps?=
 =?utf-8?B?ZEt5aXFFeGNzWUhDVElNekRyOVJqZkh0TEl3a3lOY2ZNZCtrWUJuRjhldUlx?=
 =?utf-8?B?ek1wL0V2VWJYd1F2MVRnK1M1OGRTME5iekIxbnQzOTEyUzdVM05aYnhlaTlJ?=
 =?utf-8?B?MVhhZ1Raby9FOWdXeGlvSG1vYzU1RW1UZGFsUTlTK1Zvbms1aW5OS2xweE1L?=
 =?utf-8?B?YUtodW9lRWpMRFB3ZzBWejlYWWt4NmNhZmFCdi91RExzSC82OTArQWxVWDBY?=
 =?utf-8?B?MmJkTmhPS29QNjdYS0ZGSHl4ZExGc1pUN3dhTlE0cmtsOXZjZnlEeksyOU5K?=
 =?utf-8?B?TytWeDhRYnkxV2lFYUY5M2lkSzdoTnB2MGFtdWY0N24reko0ejNHWGwxeGhZ?=
 =?utf-8?B?Qm42NmswaG5QenkwNy9hS0VkanNYRzdXemNDOGUzTXowQmZzTWh0SWhOR1VO?=
 =?utf-8?B?bFplczVneWo4ZHlzZW0rTjZRSlFEMy95d3RuZ1FVelVsckw2T0dYR3pZSjFD?=
 =?utf-8?B?NEpnd3Q5eW95aDBnRFZnRUM4T0JDalFYTHN4OTBTZGFLSjdkOGwrRlBXUUI2?=
 =?utf-8?B?WXI1RzhsSnhoaWN6aGdYOEQxbWZib0YwSk1pZllYVllRVGhjb3dPUFNKeklo?=
 =?utf-8?B?dmV0SHlKZnlkOEZTdHBZSnJ0QVFCcm5Ec1o0cDF3QkZ0dUI2bmJKcTBDLzkr?=
 =?utf-8?B?UHE3M0FpM3VIaERsNFU2SXFpb0pDOHc0WjlBRS85N1R4b1M2NTBta3dMQ2hZ?=
 =?utf-8?B?a2s1MlNUNG9hcHlKWmtiaVdnMmpGK2l3M3BQK0dpa01ReTVuM1ozMWhYNFVi?=
 =?utf-8?B?cCtrekRJMjRNbW9hcHF1T29IdWRMNjJVb3pKZlVJUXJXemV6SXFLYWRNQzk5?=
 =?utf-8?B?N2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4cc82a55-00ba-43dd-fa17-08da8513ba61
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5530.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2022 14:28:20.7639 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RiwgRBedfip0aF1lDYlQVaT4qjzjiJ1EGlZ4mt0m6CX3mZbQYz1vFrC5DFjXWhMvgphfzK7aCWvaxGOqosTR4w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6692
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/7] drm/i915/hwmon: Add HWMON infrastructure
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
Cc: linux-hwmon@vger.kernel.org, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 23-08-2022 19:05, Jani Nikula wrote:
> On Tue, 23 Aug 2022, Guenter Roeck <linux@roeck-us.net> wrote:
>> On Tue, Aug 23, 2022 at 12:46:14PM +0300, Jani Nikula wrote:
>> [ ... ]
>>>>>
>>>>> So why not do this in i915 Kconfig:
>>>>>
>>>>> config DRM_I915
>>>>> 	...
>>>>> 	depends on HWMON || HWMON=n
>>>> With this change I am getting recursive dependancy error when I run make
>>>> oldconfig
>>>>
>>>> badal@bnilawar-desk1:~/workspace/wp3/drm-tip$ make oldconfig
>>>>     HOSTCC  scripts/basic/fixdep
>>>>     HOSTCC  scripts/kconfig/conf.o
>>>>     HOSTCC  scripts/kconfig/confdata.o
>>>>     HOSTCC  scripts/kconfig/expr.o
>>>>     LEX     scripts/kconfig/lexer.lex.c
>>>>     YACC    scripts/kconfig/parser.tab.[ch]
>>>>     HOSTCC  scripts/kconfig/lexer.lex.o
>>>>     HOSTCC  scripts/kconfig/menu.o
>>>>     HOSTCC  scripts/kconfig/parser.tab.o
>>>>     HOSTCC  scripts/kconfig/preprocess.o
>>>>     HOSTCC  scripts/kconfig/symbol.o
>>>>     HOSTCC  scripts/kconfig/util.o
>>>>     HOSTLD  scripts/kconfig/conf
>>>> drivers/gpu/drm/i915/Kconfig:2:error: recursive dependency detected!
>>>> drivers/gpu/drm/i915/Kconfig:2: symbol DRM_I915 depends on HWMON
>>>> drivers/hwmon/Kconfig:6:        symbol HWMON is selected by EEEPC_LAPTOP
>>>> drivers/platform/x86/Kconfig:332:       symbol EEEPC_LAPTOP depends on INPUT
>>>> drivers/input/Kconfig:8:        symbol INPUT is selected by DRM_I915
>>>> For a resolution refer to Documentation/kbuild/kconfig-language.rst
>>>> subsection "Kconfig recursive dependency limitations"
>>>
>>> *sigh*
>>>
>>>    Note:
>>> 	select should be used with care. select will force
>>> 	a symbol to a value without visiting the dependencies.
>>> 	By abusing select you are able to select a symbol FOO even
>>> 	if FOO depends on BAR that is not set.
>>> 	In general use select only for non-visible symbols
>>> 	(no prompts anywhere) and for symbols with no dependencies.
>>> 	That will limit the usefulness but on the other hand avoid
>>> 	the illegal configurations all over.
>>>
>> Agreed. HWMON should not be selected anywhere. Unfortunately it is, and
>> drm is no exception. It is selected by DRM_RADEON and DRM_AMDGPU.
>> Maybe just select it in DRM_I915 as well after all; in practice it won't
>> make a difference.
> 
> And I guess everyone just does what I'm about to do now, throw my hands
> up in the air in disgust and resignation. :p
How about sticking to existing approach only. In my previous response I 
mentioned that for combo which we want to reject CONFIG_HWMON=m && 
CONFIG_DRM_I915=y combo i915_hwmon.o is not getting build.
It is only getting build for below combos
CONFIG_HWMON=m && CONFIG_DRM_I915=y
CONFIG_HWMON=m && CONFIG_DRM_I915=m
CONFIG_HWMON=y && CONFIG_DRM_I915=m
Regards,
Badal
> 
> BR,
> Jani.
> 
> 
> 
