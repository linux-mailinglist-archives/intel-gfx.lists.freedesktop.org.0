Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A5336D605F
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Apr 2023 14:30:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5D6610E238;
	Tue,  4 Apr 2023 12:30:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48D6D10E238;
 Tue,  4 Apr 2023 12:30:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680611404; x=1712147404;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=m+YOPpsgN+WT86QeooLgXT7Fq7LbT1YrG99bli3irqs=;
 b=nRPxNy7jVxtCyOrQM2e1ISr/zFtbO4KdgHvOyTG2dTXpgvNdyaZhnECl
 9MjKNt++UkvE2Xa/+D4UL0+T0JfXSgdDf2C8IwYcVKa6xkUwJuOTn0sFY
 I1HSpD/t+AzoATu6kvgGnK2oDZt4pcrYM/Q+JoEA8DMoQjILDb4LkVK8K
 S1ZUM0j2qx7/7wJNcqCZyV1vdlWLmfQ6ZltrK+f2JUiopNKV4mdJtyPfb
 SpUnpResbrABW5wDl42ZHZzAdvIdkSDIKthZVIvYyM9e5E1XI18S/2229
 k+uHj5+/WFmuV5M67tCYEqIT6PGPsO++Qsqgv1VpXdii0nRPm+Y++lAEJ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="344731793"
X-IronPort-AV: E=Sophos;i="5.98,317,1673942400"; d="scan'208";a="344731793"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 05:30:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="679868388"
X-IronPort-AV: E=Sophos;i="5.98,317,1673942400"; d="scan'208";a="679868388"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP; 04 Apr 2023 05:30:02 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 4 Apr 2023 05:30:02 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 4 Apr 2023 05:30:02 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.106)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Tue, 4 Apr 2023 05:30:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S90LPXGud0vaQmKI7542vYkulNWpPe/YF2ZUAkteTw2b8VvzVuepyrkTfDYNCgCpCsJ85BZ51QKlwi6El1TdKjJHP+/KjB5M/mnEVIEcWc63xf84Z0NEku8sNHbIAKetHafus+wl9Rx9X987wQnpMFRYCEaUOeepMzw6pu4fKwQE9vMspQ2GNOayi8MtUzRdy3YaujkwzvzneyGC3/cxV6lJ8+SneZVe1sL+jI/9PVHGwvWYoHI/N3qlooBVWDpVeSRaTdCL1Zt8aBCKuYmeyHlRAfuakirSE7aFJVWfy4h0KftebXKY9/aRNlVb2Eo8LdoDreN8+bO3Iolwlts7PQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0kUGPqdDUfMFD0ZA/6srcaNyrE/yvzQmarwpaAE4gN0=;
 b=I40XdKpezvoEWwen8C5LhOIOJZx4UTqwI1UObkVnf3vYGUBfvsYbv7hcBxuHfOm/YJUbBhnnf59qExJ/wDEFeai7gX4nKknZGEkvNbqIgzJvEjjSafC9mnTkh59adwW6QCRUPh4SrPpVoY9bOtW5LC1ACUPKiFWTxbx84QiJZkGatHHWf2Gp9DuRomhQT75ryHHlSBr6NbWUuTEvXx8BJGFJmBVZU6e2UUVQbiypI8CxcOng2/a+AVfN9tdnvGUNLuDFyYUX5wcAUbTVGupXunUkN9hUPhssymYg7XHSw1D/KU7ZGSHi9Al807fe72d0w4hTkGof8M82ggiXhAcsyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by BY1PR11MB7983.namprd11.prod.outlook.com (2603:10b6:a03:52b::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.30; Tue, 4 Apr
 2023 12:29:59 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::9e31:fa24:17e3:a69a]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::9e31:fa24:17e3:a69a%3]) with mapi id 15.20.6254.033; Tue, 4 Apr 2023
 12:29:59 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20230403202437.1816411-1-lucas.demarchi@intel.com>
References: <20230403202437.1816411-1-lucas.demarchi@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, <igt-dev@lists.freedesktop.org>
Date: Tue, 4 Apr 2023 09:29:51 -0300
Message-ID: <168061139110.5056.15908803129907670095@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BYAPR07CA0006.namprd07.prod.outlook.com
 (2603:10b6:a02:bc::19) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|BY1PR11MB7983:EE_
X-MS-Office365-Filtering-Correlation-Id: c1355f4f-69fb-44c6-e9c6-08db35084df6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jRHugbhoX7lCMyouUyX/IEFg4arnvMRCOSSvkPMPp/PvX16eG0fKHQCQKdZJ9DH0H4KH0Upw7fgHRUys/856jkf3rTgFMw12uD2WQhPko70e26ycqtAMHvbfhSbrPfTK78uiL4X+wvTnqkOmjG3GqfuBMXOF+Ier7sIy6nL4C4otsY8LR0RSxNOSFPxlyq1JyK5KcQBggrjt52vmgtPLo187oomRUlltFRy5sEJlBR8xinhS3t0MOTzG1tdmzbnVv+TQeSgSUvNy3vSe0tfgGTrNG8AEVtuPZOcVucJowwqgmr6D70W5RDZ0KxhjCOA8bGNqiD5HJ8SORv5gdWBjzMIXO8pTfay9QxZMAIHInl1Vrh4+CGEToIWtclFVS7RrBy/tsfk0byb1wIK2unWshI2+IHrWXq8Ub2zvlQtu6Qq8/bxBv7+uDIzAbh4Oee2rlWzz+Y5l3hOcm+OQ/HtvsLQhbkC1lvt+Yrn21GceMtGkVv7Fdtj9fpGnsEBt4K4mMqH+6eTOzx5Aio1DmIDAoE41+4xuEJAyWgnrD6dONbfmjNrhxT+FH9RF6GktcNACP2VRQewkA0eky8QereM7wSxaYUpSiQzE/iHI1uJhOAaRoRvwEtdJHShPOmf7lsAj
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(366004)(39860400002)(136003)(376002)(396003)(346002)(451199021)(2906002)(26005)(83380400001)(6512007)(6506007)(6666004)(9686003)(107886003)(186003)(6486002)(5660300002)(8936002)(38100700002)(54906003)(316002)(44832011)(450100002)(4326008)(66946007)(66556008)(66476007)(33716001)(41300700001)(8676002)(82960400001)(478600001)(86362001)(505234007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Sm43a3ZyUUIwL2lUYVNqQjE5alB1ZVUvOHpXTys3Z1V1U3ZjVGpNTHNJZ0pt?=
 =?utf-8?B?M252U2ZiOUcxWXEzdG5CakZLRjhRZzFpQ3hTb3oxVWdpVDRGTXRrVWVob29r?=
 =?utf-8?B?ZmtxNXlzaFE2eXJaMHNzUHE2MW1FMElFTXdURDV0UnA2bytaYUJiK3pFOHpM?=
 =?utf-8?B?SlBxeDRGUHp3VzVMaXZka1NnR2Y0cytaWUVMc3AveVpnZjdBNHFQZTZsbm45?=
 =?utf-8?B?b2o1VEc3Unlwb3ZyZVhSa0lVWXRSWUJmdUdDTmhXNE1VcWp6NHVxQXBnOVBG?=
 =?utf-8?B?MUx2QUpzN0VLcWIvaUxiZVAvUkxvcTdFejB0ajY0b2d1NmhqTkh5dkRXM2Nx?=
 =?utf-8?B?TE9oSk56cndaYkRoYzdGc0Iya2Z2M1dydjJ4d2hEMktzMWp4dUhidUZZQnp1?=
 =?utf-8?B?ai9LTlZEa2NIUTZKLzcxbERtUzI2dGlEUU1iNzcyYklTNWhrUFk2TGVrelZo?=
 =?utf-8?B?YzlESFQ2bWJEZ1BnTHZDNTdXdVptdVl3U1Y4TGhCS21URFhmWWZ1dEFraFh1?=
 =?utf-8?B?SG5GeHpCd3grZDBpZFZOMUlBdnFKajhURUpvSy90R3kyRnBTdGdDOTQreTlY?=
 =?utf-8?B?ay85T1hoRlF1OHJQcDdMam9EVm9aUkkyN2Fsd3RDcHJhdlJIZDVvVHFWREhy?=
 =?utf-8?B?c2k5NWJjTXhpSWNjWk1mQUFPWGl1YVowYTNicWp1QjFPbHhuRCtoZ2FQdW9O?=
 =?utf-8?B?NTNwdFo1RytuWnZmb0YwYnJYR0dLMXRicE1CczQxNnlFSFp6c0ltaWZNeFhO?=
 =?utf-8?B?UkpITjBoMHF3MWhzNEtzTXJSRktuMm40aDVuVFNTQkdhSnBnQzNlRTF5RUUx?=
 =?utf-8?B?YzhFaUJJOXFscEMzdWljeDNiamEvdlFWbFFrSGZvTnNkSk1vWmw0V0F1TkFO?=
 =?utf-8?B?YUJBbnJDNklLWUdseUx1SnV4bDM3WDIyQ2VSZlZtaUcxQWFBb3drckZwcTVl?=
 =?utf-8?B?NVdTUVhvdDdsa2ZLcmFIWnpHY2J0K1BRZGJYVzQyUkFGVVJPeGhLU05lL2hV?=
 =?utf-8?B?ekphbmxtNUZxbW5xbjR3OE1XenVPQUYybUd4R0Z5eEMydWdjZUZqeEZ0bHkx?=
 =?utf-8?B?SU43RFYyS0FMNE5EQXpHcXovQmU0RTFmeU90RXUwSzdSWSs0TlJPTkxWa01v?=
 =?utf-8?B?Nm9JSDZyK3ZJMUVWajFsa2pNRTdwMndTZ1A1aHJvbm9vdWgwbXZNbVpPUks3?=
 =?utf-8?B?ZDB0U3I5ZzlHYmo4NGJoZTV0YXJZZGw5WTdwMWtxRkd4azNIL0RXRE9mS1V6?=
 =?utf-8?B?NVJiMFdneldPOG5DbjZjUW5NWGlGOTlROVpDODlhSGpvczM4SUpVUFdxYzJJ?=
 =?utf-8?B?U3N6dEVOMXBpbjV1aVNyRW8xUkJPMS9ZRmI1ZVhoeTEzWnZiN0N5WnhSVms5?=
 =?utf-8?B?WHlIL2NDZ1hhTWMvN3lPRXFETVZ4SEM2VllTbGFIVEp6OUtFN3NxMy9KZzFv?=
 =?utf-8?B?SDN5d3Z0M3VHUE9TdjluT1R1b28yeUNJbkdMQWJYS2M2N1B6U01hbzNlcGxZ?=
 =?utf-8?B?Vm5Rc1V0eTFFZ29QeE5QWS80NklNVGpDMEV3UGQrTUY4NTlESDM0QnY5V1Bi?=
 =?utf-8?B?Wlpvd05jMkZRcEk2dzhZV3FKZnBTbDUyR2FUM1dtZU5DSXltVmI3RHZtclRY?=
 =?utf-8?B?cDYwdDAzMFlQb0FxWTBjTjA5ODdvTXJuU20wMFE3WnlHSmo5ajZnT3k3eTdB?=
 =?utf-8?B?OUt0Q1h4TmZwdi9DOE1MSVVlZ2NXL2IxSTZxbmlMczRqbTFMZkk4QWRUWDVF?=
 =?utf-8?B?aFRtUlhMcHVnNk1YVzlKTnRHdlJ1VWF5Y2ZRS0hwMTdBWlJ2V3Q4SHFGaVBo?=
 =?utf-8?B?UFlpcjR1T1ZkNDI3THdEM0pMc0RtWnRvQXIydWNPbzdvbUR4bFgveEN6R3JD?=
 =?utf-8?B?QkdQaEhlZ0hZRE9sSEdXVDJFZS9VNVZzN2IrTUtiM0Rxb0dUKzdqakRrT2d3?=
 =?utf-8?B?YTFrdkc3cGJsNHl5cW9neVFBNGszcUl5VFlCVmRldnJyb3cvZlVBSjhYSXl6?=
 =?utf-8?B?M3JRa2cyUm5ybTByNFcraHlyWlgrYUxrcmFFMHl6ZlBTL1VYT1p6YWd5eFp4?=
 =?utf-8?B?TDV4enFZa1Vhd3JySWdBZHVpZitiVC9aL2U5dXVFWk5aNmJHRHNQVzk5dmNy?=
 =?utf-8?B?aHNFUmtWZVFXZEx2UUFHQUwweG43cURnMDh5MDNPNUJmYm5GS1Fnd0RuYk4v?=
 =?utf-8?B?L2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c1355f4f-69fb-44c6-e9c6-08db35084df6
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Apr 2023 12:29:59.1557 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4iXwYqDqU9y/CHia0Nzux4dXBpnMQhc4Je71SD1mZoQQI0ZS+L8TCAWwDTLSVRxHqG8tmKENA0JxuLmpoigM4Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB7983
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH i-g-t] tools: Add tool to dump GuC/HuC CSS
 header
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
Cc: intel-gfx@lists.freedesktop.org, Lucas
 De Marchi <lucas.demarchi@intel.com>, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Lucas De Marchi (2023-04-03 17:24:37)
> Since we are now using unversioned GuC/HuC, it's useful to be able to
> dump the firmware blob and get that information from the CSS header.
> Add a tool that decodes that information and dumps the raw header.
>=20
> Example output:
>=20
>         $ tools/intel-gfx-fw-info /lib/firmware/i915/tgl_guc_70.bin
>         version: 70.5.1
>         date: 2022-09-09
>         raw dump:
>         00000000  06 00 00 00 a1 00 00 00  00 00 01 00 00 00 00 00   ....=
............
>         00000010  86 80 00 00 09 09 22 20  71 17 01 00 40 00 00 00   ....=
.." q...@...
>         00000020  40 00 00 00 01 00 00 00  09 21 45 00 73 79 73 5f   @...=
.....!E.sys_
>         00000030  67 62 73 62 50 43 2d 31  2e 30 2e 33 31 35 30 00   gbsb=
PC-1.0.3150.
>         00000040  01 05 46 00 00 00 00 00  00 00 00 00 00 00 00 00   ..F.=
............
>         00000050  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00   ....=
............
>         00000060  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00   ....=
............
>         00000070  00 00 00 00 00 00 00 00  00 10 80 00 00 01 40 00   ....=
..........@.
>=20
>         struct uc_css_header:
>         - module_type: 0x6
>         - header_size_dw: 0xa1
>         - header_version: 0x10000
>         - module_id: 0x0
>         - module_vendor: 0x8086
>         - date: 0x20220909
>         - size_dw: 0x11771
>         - key_size_dw: 0x40
>         - modulus_size_dw: 0x40
>         - exponent_size_dw: 0x1
>         - time: 0x452109
>         - username: b'sys_gbsb'
>         - buildnumber: b'PC-1.0.3150\x00'
>         - sw_version: 0x460501
>         - vf_version: 0x0
>         - reserved0: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
>         - rsvd: <rsvd private_data_size=3D0x801000, reserved1=3D0x801000>
>         - header_info: 0x400100
>=20
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  tools/intel-gfx-fw-info | 120 ++++++++++++++++++++++++++++++++++++++++
>  tools/meson.build       |   2 +-
>  2 files changed, 121 insertions(+), 1 deletion(-)
>  create mode 100755 tools/intel-gfx-fw-info
>=20
> diff --git a/tools/intel-gfx-fw-info b/tools/intel-gfx-fw-info
> new file mode 100755
> index 000000000..fc1fafdf5
> --- /dev/null
> +++ b/tools/intel-gfx-fw-info
> @@ -0,0 +1,120 @@
> +#!/usr/bin/env python3
> +# pylint: disable=3DC0301
> +# SPDX-License-Identifier: (GPL-2.0 OR MIT)
> +#
> +# Copyright (C) 2023    Intel Corporation
> +
> +import argparse
> +import logging
> +import pprint
> +import sys
> +import typing
> +
> +from dissect import cstruct

Since we are not packaging this tool in a way that dependencies are
automatically installed, I think it is worth to capture an ImportError
here and point the user to the github repository for this dependency.

Acked-by: Gustavo Sousa <gustavo.sousa@intel.com>

> +
> +# struct definition below should match the one from i915
> +# (drivers/gpu/drm/i915/gt/uc/intel_uc_fw_abi.h) and xe
> +# (drivers/gpu/drm/xe/xe_uc_fw_abi.h).
> +#
> +# For compatibility reasons with dissect.cstruct python module, the foll=
owing
> +# things are changed from the original kernel definition:
> +#
> +#       1) Comments removed
> +#       2) No anonymous union - not compatible with the
> +#          dumpstruct(), give it a name
> +
> +CDEF =3D """
> +typedef uint32 u32;
> +
> +struct uc_css_header {
> +        u32 module_type;
> +        u32 header_size_dw;
> +        u32 header_version;
> +        u32 module_id;
> +        u32 module_vendor;
> +        u32 date;
> +        u32 size_dw;
> +        u32 key_size_dw;
> +        u32 modulus_size_dw;
> +        u32 exponent_size_dw;
> +        u32 time;
> +        char username[8];
> +        char buildnumber[12];
> +        u32 sw_version;
> +        u32 vf_version;
> +        u32 reserved0[12];
> +        union {
> +                u32 private_data_size;
> +                u32 reserved1;
> +        } rsvd;
> +        u32 header_info;
> +};
> +"""
> +
> +logger =3D logging.getLogger(__name__)
> +
> +
> +def ffs(x: int) -> int:
> +    """Returns the index, counting from 0, of the
> +    least significant set bit in `x`.
> +    """
> +    return (x & -x).bit_length() - 1
> +
> +
> +def FIELD_GET(mask: int, value: int) -> int:
> +    return (value & mask) >> ffs(mask)
> +
> +
> +def decode(fw) -> str:
> +    data =3D []
> +
> +    CSS_SW_VERSION_UC_MAJOR =3D 0xFF << 16
> +    CSS_SW_VERSION_UC_MINOR =3D 0xFF << 8
> +    CSS_SW_VERSION_UC_PATCH =3D 0xFF
> +    major =3D FIELD_GET(CSS_SW_VERSION_UC_MAJOR, fw.sw_version)
> +    minor =3D FIELD_GET(CSS_SW_VERSION_UC_MINOR, fw.sw_version)
> +    patch =3D FIELD_GET(CSS_SW_VERSION_UC_PATCH, fw.sw_version)
> +    data +=3D [f"version: {major}.{minor}.{patch}"]
> +
> +    CSS_DATE_DAY =3D 0xFF
> +    CSS_DATE_MONTH =3D 0xFF << 8
> +    CSS_DATE_YEAR =3D 0xFFFF << 16
> +    day =3D FIELD_GET(CSS_DATE_DAY, fw.date)
> +    month =3D FIELD_GET(CSS_DATE_MONTH, fw.date)
> +    year =3D FIELD_GET(CSS_DATE_YEAR, fw.date)
> +    data +=3D [f"date: {year:02x}-{month:02x}-{day:02x}"]
> +
> +    return data
> +
> +
> +def parse_args(argv: typing.List[str]) -> argparse.Namespace:
> +    description =3D "Dump GuC/HuC firmware header"
> +    parser =3D argparse.ArgumentParser(prog=3D"intel-gfx-fw-info", descr=
iption=3Ddescription)
> +
> +    parser.add_argument("filename", help=3D"GuC/HuC firmware file")
> +
> +    return parser.parse_args(argv)
> +
> +
> +def main(argv: typing.List[str]) -> int:
> +    args =3D parse_args(argv)
> +
> +    cparser =3D cstruct.cstruct()
> +    cparser.load(CDEF)
> +
> +    try:
> +        with open(args.filename, mode=3D"rb") as f:
> +            fw =3D cparser.uc_css_header(f)
> +    except FileNotFoundError as e:
> +        logger.fatal(e)
> +        return 1
> +
> +    print(*decode(fw), sep=3D"\n")
> +    print("raw dump:", end=3D"")
> +    cstruct.dumpstruct(fw, color=3Dsys.stdout.isatty())
> +
> +    return 0
> +
> +
> +if __name__ =3D=3D "__main__":
> +    sys.exit(main(sys.argv[1:]))
> diff --git a/tools/meson.build b/tools/meson.build
> index 4c45f16b9..88c58adfe 100644
> --- a/tools/meson.build
> +++ b/tools/meson.build
> @@ -81,7 +81,7 @@ executable('intel_reg', sources : intel_reg_src,
>              '-DIGT_DATADIR=3D"@0@"'.format(join_paths(prefix, datadir)),
>            ])
> =20
> -install_data('intel_gpu_abrt', install_dir : bindir)
> +install_data(['intel_gpu_abrt', 'intel-gfx-fw-info'], install_dir : bind=
ir)
> =20
>  install_subdir('registers', install_dir : datadir)
> =20
> --=20
> 2.39.0
>
