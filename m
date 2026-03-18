Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yMDCNoqPumnSXgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2026 12:42:02 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 548132BAFA3
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2026 12:42:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E158810E3C6;
	Wed, 18 Mar 2026 11:42:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Kdi1x1xS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3827B10E32F;
 Wed, 18 Mar 2026 11:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773834119; x=1805370119;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=fP4MwKoEKMlByPSDmxi74AJU1Dtrg9KuUafNJXeEThE=;
 b=Kdi1x1xSgqLtyATRgNl/nYnEtnVoA5Ql/kKWrMUl0tHSmiMgWBRVkQYu
 IVxMDnIoDNJM9SpHgqc+S2IaTPm2rODm7qIUhV271HRBkB0E5IYelm29m
 AixcsF6XLYVBeUvj31b7inSFuozyqb/nLeeX0TrUQZcMGUiranIlDvDWx
 ekoew7RgpmXrwZ4ymsKGxVLrhCXJ+AcSWq3fn8hX/wFNHFWD+y9h9lL0G
 8OhzcWHN62/o17eJSO1Q8dT2L/FgLvITqdKeoFDKcf6QIlanS53056XYQ
 qXsMWAwXdu8NtNn6LVPsjorNbNP9k7vYLQzfM861Bm6iegPYMeoMxR7IT w==;
X-CSE-ConnectionGUID: Zqkuh2ajTCaWEpQcusCn+w==
X-CSE-MsgGUID: RWOSTt0cS9awH4NEyITUvw==
X-IronPort-AV: E=McAfee;i="6800,10657,11732"; a="74960305"
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; d="scan'208";a="74960305"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2026 04:41:58 -0700
X-CSE-ConnectionGUID: iXIYldECReqkvJ9HiEIFVw==
X-CSE-MsgGUID: 6kV4pFZYRluEi+YbODTfKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; d="scan'208";a="218636355"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2026 04:41:58 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 18 Mar 2026 04:41:57 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 18 Mar 2026 04:41:57 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.61) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 18 Mar 2026 04:41:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PncJf21RfooNwo0wwyuBWVwrtY/rTYbLvZSyMxavqPwnGSiMRaj6LyzczDRW81C/lpIHa0VsFBJWH+7xXC+6sMDo4sXvQ/XTHLEV7yhc8uF7pPhrA/qVMi7y5KNHnG8GXJj9NbU91tAPKWgreieETzo767sQRj/UbFVNFooOpMyuMOBgSMZTIgPREIwUu3an+zEh3ZEwV3JFHmsLCPDEQGMZOECOdsqJBQn5p5n7R42wpD3AD7IQnVtY0jObfgIyEmASEtokttspL2X2veRbC6R8cww8vi02kHClAjJuFCyWF1/i2a2eSXM9ee3kHWUDKj8jUYxuj/ZIZkvDE9rNzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fP4MwKoEKMlByPSDmxi74AJU1Dtrg9KuUafNJXeEThE=;
 b=TTuzOBITsnhhYpjPjULdNWj/6MVKuPNgwKFWVZ45NxXV6EdxwmV4RH0vkVoV1M9G4F/qjpu9eJuEp5zPmi2sTiFfqmowcOC4Lxf7Tw6Ng6pxFlbAoyDFz7apl5w+bsFUiA1Owr2PjwJvcgcsHwuSOE8WiFADYdIwezlOrVgLVeoS7FJQ9Y4XVh/XGD1rApueVxa17XYTWzmeuXCWwMV6gRxmaXS4U4s/aQ4bxoPqcMZlfp9gT8XDjESMkib26x1bOPH6vOYL3x+OzRo2+R5jT9oV1fq+gGWrH3eCRLMH+s+S3JfgFcGxxM1Kjg+SII27E97UdmtZ3fkF8wM8ocP8+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CO1PR11MB5154.namprd11.prod.outlook.com (2603:10b6:303:99::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9745.9; Wed, 18 Mar 2026 11:41:53 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%6]) with mapi id 15.20.9723.018; Wed, 18 Mar 2026
 11:41:53 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: Re: [PATCH] drm/i915/psr: Disable Panel Replay on Dell XPS 14 DA14260
 as a quirk
Thread-Topic: [PATCH] drm/i915/psr: Disable Panel Replay on Dell XPS 14
 DA14260 as a quirk
Thread-Index: AQHctda4zcLyvSaqAkaWmAFjZY2zJbWz/iwAgAAukwA=
Date: Wed, 18 Mar 2026 11:41:53 +0000
Message-ID: <9b07a4b8bdb33f88d728ba144eb0474c5ba268dd.camel@intel.com>
References: <20260317062402.1888624-1-jouni.hogander@intel.com>
 <DS4PPF69154114F1909E29187BB25B66AC8EF4EA@DS4PPF69154114F.namprd11.prod.outlook.com>
In-Reply-To: <DS4PPF69154114F1909E29187BB25B66AC8EF4EA@DS4PPF69154114F.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CO1PR11MB5154:EE_
x-ms-office365-filtering-correlation-id: 7a153153-1c9e-483d-cc1a-08de84e359f5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|366016|376014|1800799024|38070700021|18002099003|56012099003|22082099003|7053199007;
x-microsoft-antispam-message-info: am75LaHmlBoOD3QuRwd0bGFLLCsIlIPJn27LnzZP/fOR0pbLpsW7wfSPrMan0xnoU719gpRBjZHQGepBfMXc/L0xf4dSR5Y1k4ih8KiGel6OQsnCmFKuI61B2Ti03pi36FORTUmSq4J1InOEUsuN2Wwr9GhuSKGXfJroSDMCrS1tG+YgUnIoyuKNt48P7bMTML+cO5QKGUCtWUAcFAOS/i/atoBqCg6Ct7RQBsTyQa/BSD1Rxq+gHkmZQni8x7DCgUrm+vXVSk0LWqChMld2BMCjvgB01H+E+73FeQGNeLPzOMdukFCX4/Lfs/79v+6w3YOYYNyifsU9zY7iGBcN909gSvGWXPxNTveJiSKYkI1x00KJlJcGheL1TnkuTPB249srDFUczrosFnros2rPhNjlJsNmEjRn7AXIxyF3EdPKn06dFihTZ/fIkwnvkTb4rjjTs2G2sEwVRuSoD7QXJvIoX2XgBK0HmmiofoRm8mV6ru5PsNdiAzbtmRLHZ8TO1OCy5RNcyo9vMJ2vky3aSCizQbYAJ5yjCaeayyN5TloIuMwEoD29A5MESeRItLYveRYeRLVdd6GDPug9iKo4yU+xtLp18uUJrq8APqK0/59CvTWCLlL9MDRlPoCbe40HQtqf5AMRJ/NR7wFPqSLq5z2aN+2H3Rb7wGgZB7M9KuSdiWcJUeiOmo17KTouSv/n+TOfbqr2aU5mbvlgMSKsVzC+InhqRt5C5w2X9V7JrHMSgJ9c8CJcs2bhB5DoQR2A
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(376014)(1800799024)(38070700021)(18002099003)(56012099003)(22082099003)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?akdhUU90a3ljd0tTSFJKd2lsUXowd1FLY3hDb0dXZDV6UVg2YmNnZWZBWmNz?=
 =?utf-8?B?ZnBWTmxoTFVEOXN2cCtreVg0TTJadzNXTGVOQTc1YXRwSWZOOWdYdVhSRCt3?=
 =?utf-8?B?WTltUjFqcm1NWFhDQmVkT1VmT29pTXQ1ZnMxeDB6alRuYTUxNW9SUzdkdW9U?=
 =?utf-8?B?UGVpVnZOT01SNFprRVI1K0FIRHlWNzJjWURTYmkwWkZ1VmlJN2xlTzhuQ1VQ?=
 =?utf-8?B?SjRLOXBleFBwbVR4TUNBaXNXTk8vRUpNaEdHR25Na1REaDVMYm40OTI5N2RN?=
 =?utf-8?B?ZHVXeVpFSGM2ZDFnaG9iZnRNVlhnR0QzaHRtaDZxT2Z4Qk85QWNnYnlBR1pD?=
 =?utf-8?B?NisrV3NJU0VKekVYSVArRjEvSEl1OVRRdU5NUU5vME9lbFRPa01CWEhrUFRP?=
 =?utf-8?B?MWd3aXU2WXZWeVVmcEMxclpub3pCOUtndDR3NHFyNjNwQWRaTk42TS9zeW5H?=
 =?utf-8?B?bTJaS2lpdW41cGRDQWxHZnJMUFRYQUpBcHFtcUwwMk54QW5kUFdNa1ZpaE5z?=
 =?utf-8?B?TmpPTlg4NmVRZnE3S3Y1OVd1VHVWQ2RhQmdTVkZ4b0VpT0FhSTh0SGVydmwr?=
 =?utf-8?B?RFRsWFJTVFpZVzFsVHY4T3V0SFczWmdmRFA4encrMDMrRWQzcEx2am1tZFNv?=
 =?utf-8?B?OFFocFJyN1F6RXZDYmY0Z1cxSDBFaVhiMWVEM2M1WE4rTSsrWDRKbWUwTElX?=
 =?utf-8?B?eFovc3VNMjM0RDRUTnZyNmRvYmFGN29pWDZqeHl0QjJGNno5aFVPVkpjY0N3?=
 =?utf-8?B?dmx1K1dBQmJnc0wxWHVWWDVLWWhRSE1KTU43VDg4QVBzbDQyOXBobGxRbVNy?=
 =?utf-8?B?bXhoUjVMdklhN3h4cENuRUhZUlpPUEhxNGVSWDFtdnJOdUl4SDRmOVlxL1dH?=
 =?utf-8?B?RHJwYmc2VXplKytod0dDaEgzNDNMTDh5clkrZ0lIbWx5ZEpkbmZtTGtjWjRx?=
 =?utf-8?B?dm8vZHdQbXQ4Yms1czBySTUveEk5YUhPUnpEMVAweXdpb2ZUZFFXazY1am5K?=
 =?utf-8?B?T0RHZmFTWVBobFk2dUJlT0VxcXVFQWhXQStRUGcxRzVQeVpnWHNOQktMRmk3?=
 =?utf-8?B?VHpmSm4vb0VmekUrL09UNExaZ3h6ZmNLQ1N5MUdOZng3TzRRcXcxSVAzdzVh?=
 =?utf-8?B?VGJlZ2lSZERwdGNONmFCcTdHTmM2TDZReUVGWXRjSVI1bGZFczhrVGVwSlVs?=
 =?utf-8?B?TDZ1OGFhMzkzekx6NzgrelEvL3BZbGpUeTJ4NnNPcExCUmhFUE83YXRyUFpk?=
 =?utf-8?B?TS9WTEVteDRiNE5SNEo5d0hVNWcxVXJMVU9DTDVLb0RUanFjYUs5bWQwOGda?=
 =?utf-8?B?d2lGOGF1d3dKOG1hcVUvTGFuWVJOUEUxdU5yZkF1QjhRT3BVQzB2NmVZYS92?=
 =?utf-8?B?WmRpTVcxWlc4MlpHT0IxU3hJNnJ2OEpsbEQ4Ym9PQUh2dmd4OCtEM0VJVStK?=
 =?utf-8?B?Z251dUE3bCtoZ1NWMUFSdVluWDZRaVpGN2E0eFFFQ2JJdXVpaWQ2WTc4U0pC?=
 =?utf-8?B?b29uWmZLUER1d2ZLajBiSU9Sem9Vd2IwS29VRTlnd2NCRi9vMCtiNEhCRTJC?=
 =?utf-8?B?MFowcmk0YXNQakpMNmwyYVZsckJWellHQVpHeWNERlgrUFNKblZhRzVLTElQ?=
 =?utf-8?B?U1hsVXJYYUlsek1OY1g5czFkWHFqWXNxTk5tSDlwUWd0a2trajY4ejBBYTg1?=
 =?utf-8?B?ekNmc0MvZitaVkY4MDRSV0RMdHVYYXFXQ1czTEluQXRyenBUQ1UyNmJnWWx1?=
 =?utf-8?B?dGFDYjZVTHNWMlRJNklnRE9mM2U0cnphZjBFU1o5V0RUYkRsTjAwdFB5YnlW?=
 =?utf-8?B?cnN1YmZKaitvOWxmeXkrYmhZTHpoU3F0eFlhN3RtUWRCUjZJdmt1K1k5NHlT?=
 =?utf-8?B?Z25HYm5kNlFEVVlNLzVObkdXcGNZUUhRV1pmV2Z0akhkTXdTS3lYQ09DQlhu?=
 =?utf-8?B?dXFQWnFYRkxVVGxmWm8yejhnUXRMeTlLeCtKb3JFRCt5KzNGZ2RRZU5oRWJz?=
 =?utf-8?B?TEs5WW45U01iU1dDc0czUTVkcFM5bnlSVDN6M1lsSUpCN0FzRWhhWDVtT0t2?=
 =?utf-8?B?bnJIY3pLNUFLWW5sR1RDV1pZQ3MxMTdXaXY3VHp5R3NoZmJwakdORElFWlZQ?=
 =?utf-8?B?SjBaU2Jyckl3VmJDTGo0QU1PUmJtelJvYkREMnFna1JBTTR1OWxjZlYrNlNP?=
 =?utf-8?B?cVpDa2RPOXpONXl1bUZobUFXYmFiZzFMYUFoU1BXRk95ODJpQUQyLzZSY0FM?=
 =?utf-8?B?dzIwRUFsQ2EvL3BXYWJCMUwwKy9hdFZuTXNWZVhpWlBGYVRLcWUvcTFXQStx?=
 =?utf-8?B?a0lZUjNSYms5MnMzbU5oTlB0RnFLdzQ5VlhnRUJMN1c3bnU0RmIvMVZCRDZD?=
 =?utf-8?Q?aB4CtZKxSI2Vgb3Zf8hcyO2U/O1j0T/krxunRxQbMdq+U?=
x-ms-exchange-antispam-messagedata-1: MuLNNZrkjlJenWVFTbj8cg+yaCJvr1fG3AQ=
Content-Type: text/plain; charset="utf-8"
Content-ID: <78C13D9BB18DBE458E03A939D4E0806D@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: gTxz/Orpf9bfRcG0WBu+e448dg9hLBmK/nh+Eq1x/MYsvAenGYFUWP6ROWizGN5rPP/pZlIJGsw4fszaa27Hafn9bxyhjqpQJn0jsnAy/BBFOUEmr5ZFoCEYX4pJGDsFSGXTRu7rvGmIFJzglF8I8guy5voaEnpLI7lRbwWwylT7/j26PBLtkk4iUrxK6/o7XfLEyi4IGW7RJQix8SVFaolBdxmEgQoN7HE6etCg4UaOrrr+AcPI3xiwrSTgMmqSFqTtpblq0xkej3WJO/DNco6pKZKeu/RwuXyW7u9aLkUSkxZy0aPDm8NVkpei3MiOzywKi6X5TeRQ2Bo2uNk1sA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a153153-1c9e-483d-cc1a-08de84e359f5
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Mar 2026 11:41:53.4868 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qcm3ntt06IdTOgwod9RZwn9p3NnL9lvLGtZN53cjb/jrCmSjekymYPJ5MRLbDnz9QfU6MD950mz785go2cl7X+soXkZ/e6d46Fs2TmlbIQY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5154
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
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 548132BAFA3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gV2VkLCAyMDI2LTAzLTE4IGF0IDA4OjU1ICswMDAwLCBLYWhvbGEsIE1pa2Egd3JvdGU6DQo+
ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiBGcm9tOiBJbnRlbC1nZnggPGludGVs
LWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmDQo+ID4gT2YgSm91
bmkgSMO2Z2FuZGVyDQo+ID4gU2VudDogVHVlc2RheSwgMTcgTWFyY2ggMjAyNiA4LjI0DQo+ID4g
VG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZw0KPiA+IENjOiBDYXZpdHQsIEpvbmF0aGFuIDxqb25hdGhhbi5jYXZpdHRAaW50
ZWwuY29tPjsgSG9nYW5kZXIsIEpvdW5pDQo+ID4gPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4N
Cj4gPiBTdWJqZWN0OiBbUEFUQ0hdIGRybS9pOTE1L3BzcjogRGlzYWJsZSBQYW5lbCBSZXBsYXkg
b24gRGVsbCBYUFMgMTQNCj4gPiBEQTE0MjYwIGFzIGEgcXVpcmsNCj4gPiANCj4gPiBBZGQgbmV3
IHF1aXJrIChRVUlSS19ESVNBQkxFX1BBTkVMX1JFUExBWSkgZm9yIGRpc2FibGluZyBQYW5lbA0K
PiA+IFJlcGxheSBhcyBxdWlyayBmb3IgcHJvYmxlbWF0aWMgc2V0dXBzLiBBcHBseSB0aGlzIG5l
d2x5DQo+ID4gYWRkZWQgcXVpcmsgb24gRGVsbCBYUFMgMTQNCj4gPiBEQTE0MjYwIGlmIHNwZWNp
ZmljIHBhbmVsIG1vZGVsIGlzIGluc3RhbGxlZC4NCj4gPiANCj4gPiBXZSBhcmUgb2JzZXJ2aW5n
IHByb2JsZW1zIHdpdGggRGVsbCBYUFMgMTQgREExNDI2MC4gVGhpcyBkZXZpY2UgaGFzDQo+ID4g
Y2VydGFpbiBMR0QgcGFuZWwgbW9kZWwgd2hpY2ggc2VlbXMgdG8gYmUgcHJvYmxlbWF0aWMuDQo+
ID4gV2UgaGF2ZSBzZWVuIG90aGVyIExHRCBwYW5lbCBtb2RlbCB3aXRoIHNhbWUgT1VJIGlzIHdv
cmtpbmcgZmluZS4NCj4gPiBEdWUgdG8gdGhpcyB3ZSBjYW4ndCBhcHBseSB0aGUgcXVpcmsgb25s
eSBiYXNlZCBvbiBwYW5lbCBPVUkuDQo+ID4gVGhlcmUgYXJlIGFsc28gY2FzZXMgd2hlcmUgc2Ft
ZSBkZXZpY2UgbW9kZWwgaGFzIGRpZmZlcmluZyBwYW5lbA0KPiA+IG1vZGVsLiBXZSBkb24ndCB3
YW50IHRvIGRpc2FibGUgUGFuZWwgUmVwbGF5IG9uIHN1Y2ggZGV2aWNlcy4NCj4gPiBCZXN0IHdl
IGNhbiBkbyBpcyB0byBhcHBseSB0aGUgcXVpcmsgYmFzZWQgb24gYm90aCBkZXZpY2UgbW9kZWwg
YW5kDQo+ID4gcGFuZWwgbW9kZWwuDQo+ID4gDQo+IA0KPiBMR1RNLA0KPiANCj4gUmV2aWV3ZWQt
Ynk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQoNClRoYW5rIHlvdSBNaWth
IGZvciB5b3VyIHJldmlldy4gVGhpcyBpcyBub3cgcHVzaGVkIHRvIGRybS1pbnRlbC1uZXh0Lg0K
DQpCUiwNCkpvdW5pIEjDtmdhbmRlcg0KDQo+IA0KPiA+IENsb3NlczogaHR0cHM6Ly9naXRsYWIu
ZnJlZWRlc2t0b3Aub3JnL2RybS94ZS9rZXJuZWwvLS9pc3N1ZXMvNzUyMQ0KPiA+IFNpZ25lZC1v
ZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+IC0t
LQ0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuY8KgwqDCoCB8
wqAgNyArKysrKysrDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3F1
aXJrcy5jIHwgMTcgKysrKysrKysrKysrKysrKy0NCj4gPiDCoCBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3F1aXJrcy5oIHzCoCAxICsNCj4gPiDCoDMgZmlsZXMgY2hhbmdlZCwg
MjQgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gaW5kZXggYzEzMTE2ZTZmMTdmLi5i
MzE5ZTViZDYyNzQgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyLmMNCj4gPiBAQCAtNDksNiArNDksNyBAQA0KPiA+IMKgI2luY2x1ZGUgImludGVsX2hk
bWkuaCINCj4gPiDCoCNpbmNsdWRlICJpbnRlbF9wc3IuaCINCj4gPiDCoCNpbmNsdWRlICJpbnRl
bF9wc3JfcmVncy5oIg0KPiA+ICsjaW5jbHVkZSAiaW50ZWxfcXVpcmtzLmgiDQo+ID4gwqAjaW5j
bHVkZSAiaW50ZWxfc25wc19waHkuaCINCj4gPiDCoCNpbmNsdWRlICJpbnRlbF9zdGVwLmgiDQo+
ID4gwqAjaW5jbHVkZSAiaW50ZWxfdmJsYW5rLmgiDQo+ID4gQEAgLTYwOSw2ICs2MTAsMTIgQEAg
c3RhdGljIHZvaWQgX3BhbmVsX3JlcGxheV9pbml0X2RwY2Qoc3RydWN0DQo+ID4gaW50ZWxfZHAg
KmludGVsX2RwLCBzdHJ1Y3QgaW50ZWxfY29ubg0KPiA+IMKgCWlmIChpbnRlbF9kcC0+bXN0X2Rl
dGVjdCA9PSBEUk1fRFBfTVNUKQ0KPiA+IMKgCQlyZXR1cm47DQo+ID4gDQo+ID4gKwlpZiAoaW50
ZWxfaGFzX2RwY2RfcXVpcmsoaW50ZWxfZHAsDQo+ID4gUVVJUktfRElTQUJMRV9QQU5FTF9SRVBM
QVkpKSB7DQo+ID4gKwkJZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJtLA0KPiA+ICsJCQnCoMKgwqAg
IlBhbmVsIFJlcGxheSBzdXBwb3J0IG5vdCBjdXJyZW50bHkNCj4gPiBhdmFpbGFibGUgZm9yIHRo
aXMgc2V0dXBcbiIpOw0KPiA+ICsJCXJldHVybjsNCj4gPiArCX0NCj4gPiArDQo+ID4gwqAJcmV0
ID0gZHJtX2RwX2RwY2RfcmVhZF9kYXRhKCZpbnRlbF9kcC0+YXV4LA0KPiA+IERQX1BBTkVMX1JF
UExBWV9DQVBfU1VQUE9SVCwNCj4gPiDCoAkJCQnCoMKgwqAgJmNvbm5lY3Rvci0NCj4gPiA+ZHAu
cGFuZWxfcmVwbGF5X2NhcHMuZHBjZCwNCj4gPiDCoAkJCQnCoMKgwqAgc2l6ZW9mKGNvbm5lY3Rv
ci0NCj4gPiA+ZHAucGFuZWxfcmVwbGF5X2NhcHMuZHBjZCkpOw0KPiA+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3F1aXJrcy5jDQo+ID4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3F1aXJrcy5jDQo+ID4gaW5kZXggMWFiYmRkNDI2
ZTU4Li44ZjFiZjhmNDE4ZWMgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9xdWlya3MuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcXVpcmtzLmMNCj4gPiBAQCAtODYsNiArODYsMTQgQEAgc3RhdGljIHZvaWQg
cXVpcmtfZWRwX2xpbWl0X3JhdGVfaGJyMihzdHJ1Y3QNCj4gPiBpbnRlbF9kaXNwbGF5ICpkaXNw
bGF5KQ0KPiA+IMKgCWRybV9pbmZvKGRpc3BsYXktPmRybSwgIkFwcGx5aW5nIGVEUCBMaW1pdCBy
YXRlIHRvIEhCUjINCj4gPiBxdWlya1xuIik7wqAgfQ0KPiA+IA0KPiA+ICtzdGF0aWMgdm9pZCBx
dWlya19kaXNhYmxlX3BhbmVsX3JlcGxheShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiA+
IHsNCj4gPiArCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0NCj4gPiB0b19pbnRlbF9k
aXNwbGF5KGludGVsX2RwKTsNCj4gPiArDQo+ID4gKwlpbnRlbF9zZXRfZHBjZF9xdWlyayhpbnRl
bF9kcCwNCj4gPiBRVUlSS19ESVNBQkxFX1BBTkVMX1JFUExBWSk7DQo+ID4gKwlkcm1faW5mbyhk
aXNwbGF5LT5kcm0sICJBcHBseWluZyBkaXNhYmxlIFBhbmVsIFJlcGxheQ0KPiA+IHF1aXJrXG4i
KTsgfQ0KPiA+ICsNCj4gPiDCoHN0cnVjdCBpbnRlbF9xdWlyayB7DQo+ID4gwqAJaW50IGRldmlj
ZTsNCj4gPiDCoAlpbnQgc3Vic3lzdGVtX3ZlbmRvcjsNCj4gPiBAQCAtMjUxLDcgKzI1OSwxNCBA
QCBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2RwY2RfcXVpcmsNCj4gPiBpbnRlbF9kcGNkX3F1
aXJrc1tdID0gew0KPiA+IMKgCQkuc2lua19vdWkgPSBTSU5LX09VSSgweDM4LCAweGVjLCAweDEx
KSwNCj4gPiDCoAkJLmhvb2sgPSBxdWlya19md19zeW5jX2xlbiwNCj4gPiDCoAl9LA0KPiA+IC0N
Cj4gPiArCS8qIERlbGwgWFBTIDE0IERBMTQyNjAgKi8NCj4gPiArCXsNCj4gPiArCQkuZGV2aWNl
ID0gMHhiMDgwLA0KPiA+ICsJCS5zdWJzeXN0ZW1fdmVuZG9yID0gMHgxMDI4LA0KPiA+ICsJCS5z
dWJzeXN0ZW1fZGV2aWNlID0gMHgwZGI5LA0KPiA+ICsJCS5zaW5rX291aSA9IFNJTktfT1VJKDB4
MDAsIDB4MjIsIDB4YjkpLA0KPiA+ICsJCS5ob29rID0gcXVpcmtfZGlzYWJsZV9wYW5lbF9yZXBs
YXksDQo+ID4gKwl9LA0KPiA+IMKgfTsNCj4gPiANCj4gPiDCoHZvaWQgaW50ZWxfaW5pdF9xdWly
a3Moc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpIGRpZmYgLS1naXQNCj4gPiBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcXVpcmtzLmgNCj4gPiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcXVpcmtzLmgNCj4gPiBpbmRleCAwNmRhMGUyODZjNjcu
Ljc3ZTQ5MGNhZWQwZCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3F1aXJrcy5oDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9xdWlya3MuaA0KPiA+IEBAIC0yMSw2ICsyMSw3IEBAIGVudW0gaW50ZWxfcXVpcmtf
aWQgew0KPiA+IMKgCVFVSVJLX05PX1BQU19CQUNLTElHSFRfUE9XRVJfSE9PSywNCj4gPiDCoAlR
VUlSS19GV19TWU5DX0xFTiwNCj4gPiDCoAlRVUlSS19FRFBfTElNSVRfUkFURV9IQlIyLA0KPiA+
ICsJUVVJUktfRElTQUJMRV9QQU5FTF9SRVBMQVksDQo+ID4gwqB9Ow0KPiA+IA0KPiA+IMKgdm9p
ZCBpbnRlbF9pbml0X3F1aXJrcyhzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSk7DQo+ID4g
LS0NCj4gPiAyLjQzLjANCj4gDQoNCg==
