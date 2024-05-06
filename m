Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5202E8BC889
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 09:46:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0F511121CD;
	Mon,  6 May 2024 07:46:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hYRlor5f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C6E91121CD
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 May 2024 07:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714981561; x=1746517561;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=36ytuxcV8wVqgcm3HOF5OwIFHdw2f7aRsYtxwmkQuXc=;
 b=hYRlor5fj2Nbw+6Ly69mfnA8L7xdWw+CTed/07qoe0YVgxTqPSTmDaj5
 wpfGRSLRNcwisyqT2xIjo/bNW8IKK9atu72oaAkTkto5YZIvIHBT67Qj7
 7PjlRJMKnd40MJ0w9Sa7l9I/sqfr/mwWf44tDxNdVKqHiwqImyaONJIHC
 ss7bUG0QpBUzFNeS4LI1SriBIP6B3lj/TA3gc2774ity/34vTh1dyaFzx
 oU2hzvufU3VEpUzBo2ZnPpeyUnydX6ljJ+Vac+40X8nCahg382eaGzgPS
 yncDH2tZDJoUNqxlyAXSsuYZ1HHD/qM0kgfFAVYKufMSjX05+GlhYrf9z A==;
X-CSE-ConnectionGUID: 4ZHfy9hyTf+TSFTj41IXJg==
X-CSE-MsgGUID: ZO+2Dkd6RQKqUlvTg5u4NQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11064"; a="10933114"
X-IronPort-AV: E=Sophos;i="6.07,257,1708416000"; d="scan'208";a="10933114"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 00:46:00 -0700
X-CSE-ConnectionGUID: JFAlGBmOT3i2Q2e/8CNpeQ==
X-CSE-MsgGUID: vEoj+9KhRIGelN8bMELQNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,257,1708416000"; d="scan'208";a="28099458"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 May 2024 00:46:00 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 6 May 2024 00:45:59 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 6 May 2024 00:45:59 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 6 May 2024 00:45:59 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 6 May 2024 00:45:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LPaDwW04QBMDsVW17snoMkyBDP6MYWG1lNG5fkbkJqsjHyC601J5joYaU3cNQSj46t/Smk2kPBYvOfJZmfAvIbxCbMFgeHFSTgfd6Mnb4Zc+wdgZ81nQH6QRbzGGM4gzqh4zru4OhBf+kpQ1E+4gyvzT2N7rWrmp9pByyQK+FfYNmuIS+Z0+rDOCOwekdNTvMcKrrLY6Jvu2/NqTCcN/fpnP59irmBCu11Ln/lGKif/xbA9CMZtbF8v4Ov5C7C/lkxMdGiTJgGhXGKKqo6Wud6hO81gUebvebmssEja6eVRZV0zmk+IDT+nTWQ1Yvf07YOWOqmv1+MjtVIVy2MMFXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=36ytuxcV8wVqgcm3HOF5OwIFHdw2f7aRsYtxwmkQuXc=;
 b=QtV/I/kBwN/cSVftO0zWqsDvd1FQjEneTX+K49OJUKsU9DGl3fqUfitaKWRm0OOl+l858DCss6A1lRw6txglFqM9zSBpt/uGGEBPfeZ/JEpqqXJ4C/OuC1jJWm7bYj8LCDnLMxYOQcE7fw4AAr2r7iiD5DkR8XpmX55lrlcowNhCk1bu1LvInCfL5WtwNEDG8mJGMqdtGisNTxUBE///g5zRfDkWGF5UXw1ZyQrduGumVv5gUZdsFhWtqZE8aiw2qgOqCt/7pn0m1fPGXrK7Hp1T4YaeNxHfIxHiAkunUEOairwJYCMb3MOEjZrHbaTkoQa4kyd6Samo8t/ELbfbVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by CY8PR11MB7797.namprd11.prod.outlook.com (2603:10b6:930:76::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.41; Mon, 6 May
 2024 07:45:57 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::d887:1902:ff54:cc59]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::d887:1902:ff54:cc59%7]) with mapi id 15.20.7544.041; Mon, 6 May 2024
 07:45:56 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/display: Calculate crtc clock rate based on PLL
 parameters
Thread-Topic: [PATCH] drm/i915/display: Calculate crtc clock rate based on PLL
 parameters
Thread-Index: AQHanJQQ96PvoJPyB0OkAb0jSYqfYbGFWQGAgASAimA=
Date: Mon, 6 May 2024 07:45:56 +0000
Message-ID: <MW4PR11MB7054F758B9A8CDFBBB161E25EF1C2@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20240502131716.504616-1-mika.kahola@intel.com>
 <ZjTDwXmdSPALPU/l@ideak-desk.fi.intel.com>
In-Reply-To: <ZjTDwXmdSPALPU/l@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|CY8PR11MB7797:EE_
x-ms-office365-filtering-correlation-id: 45519d6e-d661-47a5-e0d4-08dc6da090a1
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|376005|1800799015|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?bDNyZW1kU1JqMEhXaTQzSDZINEhBdXZCTVlObWRsL0x0VTFVWktzTUJUTlBX?=
 =?utf-8?B?eVc5SENURkFSbTFodWlIVzk0QTl6b1lGVWhKclFaUzZLdjJVMks4aG9EUFBp?=
 =?utf-8?B?Y3VYYUpyQXlTOUcrU3lCZ0RheURqM2dVMEF2RmxyK1lheUVOYjNlRUFoNFFN?=
 =?utf-8?B?MmxOZkxnNU56d25DKzBNVFM1dHZacjBycTJCaWJEVWdLWHpGSmo4QlpVb21k?=
 =?utf-8?B?c2JyU1QzZENvNkY2R1gvN1JsbXBpU1dINWwxR1grTk9vbWU3MHR3L0UzTWtz?=
 =?utf-8?B?UXZDM0Jyb0x5NWN6d2ZYd212eFJ4UzZpTFVuQWl3WnZtQ3RDaEdPZlMxTVhQ?=
 =?utf-8?B?ZGZvb2pIZ2hFdXdhQ0tFbWhJTzAyUnhQVUl5NnRaMVJjaDZOdCtXWkZqWmtx?=
 =?utf-8?B?eVYrUHJ1YmdEdW83UEFCNkdWUGNMa0dPRktOSkdkdDBHOGVJQ3ljQ2xzS1BZ?=
 =?utf-8?B?aVZFcE9OdTVVUk1WS1I3Mkd3UW1oaVAyZnBvQWg4bDkzZHlzMng2azVhcUFy?=
 =?utf-8?B?eVhHWGlvT1k5U0ptdUdSZVZQTXhFRTdLTG9sUHBBcko0cTNBUEVzOFdaR0Q1?=
 =?utf-8?B?UFIySGVZZmJma1dMOHNFR2UwRmsxVlJ3bjc1NXZld0c1M1krUGNuWHBlVkVJ?=
 =?utf-8?B?UGJsbmc1MU1STlA3OFFjRE41THp0NW1vNk81NUZIbGdjcUx2VFRNZ0FNbWw3?=
 =?utf-8?B?bmtkcGNOR2hGQk01WURIcUR4SmZiY05OeHFNVnhzNkdrMkM0TG5GVytKMHdk?=
 =?utf-8?B?dTVBc0ovdVRObDlYQkp2WS9sa2tiV3lLRitpWUxBbk5lOTByZTRseEg0ZTB3?=
 =?utf-8?B?VW9FajkvRWUwbWZzTWQ5elhSTkVaZC9FVm5DNTBFcXlwd0pnMU1Md1NEV0Fq?=
 =?utf-8?B?Uk92QUZjWmxBWmd5akRpdDljYTFEVXdXdnpadU03enBuR1NzRmVOdFluazRw?=
 =?utf-8?B?UVpXS1J4QVh5TEp4UlNxNytDSmRjNktBdkpsdmx3T0s2dytiY2RnQng0cUd1?=
 =?utf-8?B?ZGRMVDAxNGYyU1lnMDFmUkxQbER0UzYvdDd5L2dGdThDNHdVWW1OS1NlL1lJ?=
 =?utf-8?B?MllRV0Q3TWR1ZmV5ZnhhS085MWtyUExQdHFDcGZXeXBmQlRqSWpud0tBYndq?=
 =?utf-8?B?UmRUQ1Z1enRpU21ackZaSU0wUHBtY0c5a0JvYmNCTjNldHdHSUY0K3FnL3Vn?=
 =?utf-8?B?dlZXbHVvS2pLalRkd2xzaGRTeW0xZXpROEo3TmMwczE2Q054UFNuRGxhMktr?=
 =?utf-8?B?eDd6ZEp0VDhIVTVnVkNsSUVUYVpocmtjTGQrZnRNUVJMc0Z5MUNqS0lneTQy?=
 =?utf-8?B?ZFg4YnZNN0ZRVkdvazcrT1hhRXpKdkdnbGpPa2R6NWJHMjQ0dkpOMWVPT0hs?=
 =?utf-8?B?aUVWSUF0RG5GUWFreXFtV29SRXlrVWo3L2JRdnUrNU9sb0c4WlFVK1R2SDZR?=
 =?utf-8?B?WkkzLy9XWEpacG5NdzBhanpSd1FMODNILzlCdWVXZFAzVTYrS1djaGM2ZmFt?=
 =?utf-8?B?bkVQemYvQTJiNTJmUHhqblVnZVgwaFpMejI1K0dTY0ViUDlUMnpZSnJyejkx?=
 =?utf-8?B?ZEcxTnN0TitTRDRwbkx3cTdxTVNGMkU0ejNlaStidjdTUXMxNVNLMDFwcngy?=
 =?utf-8?B?aUhSaFBzK1BXcFNkblFYcjVuR0g1ZFVpTjlkQzMxMFcrSVV6cVZtaXFZNFRq?=
 =?utf-8?B?Qmo3eENCSStEWE9FaktqcFVST1ZKeU5MRHA4TWsvdDhYbkcwdHh1dXpFNWR4?=
 =?utf-8?B?UytVM1Q3a3R1eUJYT1ltb0NDZ0M2Y0JhcURJTmVyalNPTGQybjhZUDVMV0Fq?=
 =?utf-8?B?NkNsWjBvekl0cTcrOFphZz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dWdHQ281d3dYWTlGamV0eEpxVGxabXlsZ1IrT2VmeUt1RFp4YytSazJyb0R0?=
 =?utf-8?B?QVVuVDJaQytkZjJjWFdMRU45T0xVQzUvZDJPMmZON050Ri8yVkhINXJVQWNM?=
 =?utf-8?B?NFRwSUpuRlBtTXpYYkFpWXdYS085ZGxBREtCc0VkOGZxa2JxYkIra1pma05h?=
 =?utf-8?B?dnRHeEFNZjBmdThScXROMkhaSjVLS201YzJoblVMWUZIcWdDdHhYakVtcC9l?=
 =?utf-8?B?WHdJN3lIbjdWd0lxaUlEMHkrb1BaTmkxUVNValRDa0wxMFlzT1o4N1EvYnFj?=
 =?utf-8?B?aTl2M09tTlNmWENOWk5OcHM5OXk0cmVFVFp6VEV1aFZQNU44dFZhNUVkMGcw?=
 =?utf-8?B?a0ZPNHZOMEVPMmJXWENtODlQN1VDS1lFMGZDck9HcGt3b1YyamloVkhtSWZD?=
 =?utf-8?B?Y081L3ZhV3ErdG42em9QZjB1UXlZMTBnWGxCam8xZUZsK2kyR2VvUGs1RmpY?=
 =?utf-8?B?YmcwT05LdEJSbkFCcjYxMUd0WE8vS282dm10a0I3RkpmR0hWb1UvMnFPbzlN?=
 =?utf-8?B?Y2FneldtbnhONW1nMXdwaWpCUWpQRFk1OFI3d1BCbDhSb3laaHdsN3EwRlJG?=
 =?utf-8?B?R2o3cGQrcnhPRGVyRmpRZ1dJYmtJSnRYM29qZHEyUUZJOFZKUFc2c1p1dnp0?=
 =?utf-8?B?ZlVHakFrbWU2WllUVkhaamRNZ000OXFGNFJzaHl5TXhwZ2RQZXJJbVFLckZM?=
 =?utf-8?B?SlFsUjErVGZlbUlrRnBlR3Z2WGNXZnVPNHEvQWliRkE1ZS9QVjk5UGcxTWpu?=
 =?utf-8?B?UUdOWUhuRXd2YjJYZ3NmWndsVHpNa2pPUzNmeDg0OVMwZ1hEWGQwYlRkVXcv?=
 =?utf-8?B?U1I4RHdpek1KTW9XNDI3N2RFM2FGZ0RzOTVNTW13d3liYnFvM3JZTkQ3SzZ0?=
 =?utf-8?B?aFp2YVRpUTFoUFpsaXJNV2lINGlqTkh5YzcwRzQ0SW0xaDc2U3NGSFdORE8v?=
 =?utf-8?B?QzhEZ2RUcEFST3lWSnA1RGoxK0l0ZlNKWjNVTUx6c3l6eWwrT3JENitCaFZy?=
 =?utf-8?B?ZnFreGI2WHgwYTMwaWJwNkdleDJTejF3TzVSd2xPRWpSOFZ4Qm5JKzlRS3JT?=
 =?utf-8?B?bHRlSERRemRTdFdTY1BSNjdZMXJ1aHVETmRmUlNicjhNWUJZNnpBdnRQdTlq?=
 =?utf-8?B?UldlNVgvcFJKRGlrNWRQbDBRUk43UWlidDRuL0xTcGZhUWw4VWd5dmJJZWhi?=
 =?utf-8?B?RUVTYXhrWit6alhJVGtiMXUvb1cybkpQUkE4U21Ca2d4a2tRSzFGaFJZVVA0?=
 =?utf-8?B?M1RYQmxldDNhTmxmNGY3K1hWcXRMdk5KWjNTcWhsaE4ydGk2RVhaSFo3emlR?=
 =?utf-8?B?L0REMmNWT2xQNzhzMCt1MlVEUnlKS2pNTUhoanFoZlNocnFmUXRGeUUyY0lE?=
 =?utf-8?B?RXREcTVoSXErNWJTM3VTajRkMTFYdkFJb25DU3FNS2FNTEorUW16NzNwSWtj?=
 =?utf-8?B?U3kweFU1STNRcHJOSEo0WnVTZ20veVF6RTMxbGtmQTAvbFNIb1pNL2Fudlh6?=
 =?utf-8?B?WjUxc2k2eElkdmlIUGMzWVpxWDhTQXJ3ZkpwUUpSSWppTzBZcmErREJzSktE?=
 =?utf-8?B?TDAwMmlvNER5NS9oU1B5Y25VUlBkTzNqWG55WTRIamdXMC9wVE9aOXhSS3Y5?=
 =?utf-8?B?WnRVVlIrR3E1aG54WWxPcU9iTzN6U25CWXBVa1pkdzVoNVdHaDJtektqNkJx?=
 =?utf-8?B?VHBFMDB5TWpOTEV5ZlZxaElaSmpydi91OGg3aGF5K2ZhTkxMY0RXS2YyUTJH?=
 =?utf-8?B?T2NyWERKaW5RTlFaZjBMdHphbHVGS0JUY1VTcEFmS3JBK0xVZG84bUQ0MmV4?=
 =?utf-8?B?cjhPNE4vWHNoNzJVYUw3OTVxaWxEQXBDTTA1K2Vpd0lmWlhVbHFiK0hObS9W?=
 =?utf-8?B?Q1oxcXlHUENza1RRNnFRTWl2NVdpU0lyN3BlTVJyYlU2TklVR0I3QTBIWXJw?=
 =?utf-8?B?U0hjMmdLc1N4ajdZTUpYM1FzalhCWk1ySzFLaTFEeDRpTWJNcGtjRnplSkhp?=
 =?utf-8?B?bUJBQzRISHRXRGdhdlJ1UFU4cTJSa1hUM0U4NDFHT3JZcFhOaDlDeHhkY0VW?=
 =?utf-8?B?bmNSMTJCa29QYVpFamR1VWc0d1FnQ2RZUkNTVG9qUm5uYmhTS3lDbXJ0Vkhh?=
 =?utf-8?Q?exSEDkzsgR5gKkcDBLoBdoKRO?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 45519d6e-d661-47a5-e0d4-08dc6da090a1
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2024 07:45:56.7867 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vJB9aGFFzWU/5hCiP/dP3P6QJhPcBLWL8agDV82dfu1OE1LA+JrSCVkv6+LvZUQupnS0xYw/YMwr5F0Y5/f4Lg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7797
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBEZWFrLCBJbXJlIDxpbXJlLmRl
YWtAaW50ZWwuY29tPg0KPiBTZW50OiBGcmlkYXksIE1heSAzLCAyMDI0IDI6MDAgUE0NCj4gVG86
IEthaG9sYSwgTWlrYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiBDYzogaW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBSZTogW1BBVENIXSBkcm0vaTkxNS9kaXNw
bGF5OiBDYWxjdWxhdGUgY3J0YyBjbG9jayByYXRlIGJhc2VkIG9uIFBMTCBwYXJhbWV0ZXJzDQo+
IA0KPiBPbiBUaHUsIE1heSAwMiwgMjAyNCBhdCAwNDoxNzoxNlBNICswMzAwLCBNaWthIEthaG9s
YSB3cm90ZToNCj4gPiBXaXRoIEhETUkgbW9uaXRvcnMgd2UgYnVtcGVkIHVwIGEgY2FzZSB3aGVy
ZSB0aGUgY3J0YyBjbG9jayByYXRlDQo+ID4gY2F1c2VkIGEgbWlzbWF0Y2ggb24gc3RhdGUgdmVy
aWZpY2F0aW9uLiBUaGlzIHdhcyBkdWUgdG8gYXNzdW1wdGlvbg0KPiA+IHRoYXQgdGhlIFNXIGNs
b2NrIHJhdGUgZnJvbSBQTEwgc3RydWN0dXJlIHdvdWxkIG1hdGNoIHRoZSBjYWxjdWxhdGVkDQo+
ID4gY291bnRlcnBhcnQgZnJvbSBIVy4gVGhpcyBpcyBub3QgbmVjZXNzYXJpbHkgYWx3YXlzIHRo
ZSBjYXNlIGFuZA0KPiA+IHRoZXJlZm9yZSB3ZSB3b3VsZCBhY3R1YWxseSBuZWVkIHRvIHJlY2Fs
Y3VsYXRlIHRoZSBjbG9jayByYXRlIGZyb20gU1cNCj4gPiBQTEwgcGFyYW1ldGVycy4gVGhlbiB0
aGVzZSBTVyBhbmQgSFcgY3J0YyBjbG9jayByYXRlcyBjYW4gYmUgY29tcGFyZWQNCj4gPiB3aXRo
IGVhY2ggb3RoZXIuDQo+ID4NCj4gPiBUaGUgcGF0Y2ggcmVjYWxjdWxhdGVzIHRoZSBjcnRjIGNs
b2NrIHJhdGUgZm9yIFNXIHN0YXRlIGJhc2VkIG9uIFNXDQo+ID4gUExMIHBhcmFtZXRlcnMgYW5k
IGNvbXBhcmVzIHRoZSBjcnRjIGNsb2NrIHJhdGUgY2FsY3VsYXRlZCBmcm9tIHRoZQ0KPiA+IHBh
cmFtZXRlcnMgZm91bmQgZnJvbSB0aGUgSFcuDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBNaWth
IEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYyB8IDMgKystDQo+ID4gIDEgZmlsZSBj
aGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gPg0KPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYw0KPiA+IGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gPiBpbmRleCA4
ZTNiMTM4ODRiYjguLjg5YTE5NTkxNzE3OSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jDQo+ID4gQEAgLTMwNzgsOSArMzA3OCwxMCBA
QCBzdGF0aWMgdm9pZCBpbnRlbF9jMjBwbGxfc3RhdGVfdmVyaWZ5KGNvbnN0IHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpzdGF0ZSwNCj4gPiAgCWNvbnN0IHN0cnVjdCBpbnRlbF9jMjBwbGxfc3Rh
dGUgKm1wbGxfc3dfc3RhdGUgPSAmc3RhdGUtPmRwbGxfaHdfc3RhdGUuY3gwcGxsLmMyMDsNCj4g
PiAgCWJvb2wgc3dfdXNlX21wbGxiID0gaW50ZWxfYzIwcGh5X3VzZV9tcGxsYihtcGxsX3N3X3N0
YXRlKTsNCj4gPiAgCWJvb2wgaHdfdXNlX21wbGxiID0gaW50ZWxfYzIwcGh5X3VzZV9tcGxsYiht
cGxsX2h3X3N0YXRlKTsNCj4gPiArCWludCBjbG9jayA9IGludGVsX2MyMHBsbF9jYWxjX3BvcnRf
Y2xvY2soZW5jb2RlciwgbXBsbF9zd19zdGF0ZSk7DQo+ID4gIAlpbnQgaTsNCj4gPg0KPiA+IC0J
STkxNV9TVEFURV9XQVJOKGk5MTUsIG1wbGxfaHdfc3RhdGUtPmNsb2NrICE9IG1wbGxfc3dfc3Rh
dGUtPmNsb2NrLA0KPiA+ICsJSTkxNV9TVEFURV9XQVJOKGk5MTUsIG1wbGxfaHdfc3RhdGUtPmNs
b2NrICE9IGNsb2NrLA0KPiANCj4gVGhlcmUgaXMgYSBjb3JyZXNwb25kaW5nIGNoZWNrIGFscmVh
ZHkgaW4gdGhlIGVuY29kZXIgc3RhdGUgY2hlY2tlciwgd2hpY2ggaXMgbW9yZSBhcHByb3JpYXRl
LCBzaW5jZSBpdCBjb21wYXJlcyB0aGUgY2FsY3VsYXRlZA0KPiBQTEwgY2xvY2sgYWdhaW5zdCB0
aGUgLSBhZGp1c3RlZCAtIGNydGMgcG9ydCBjbG9jayBhbmQgSSB0aGluayB0aGF0J3MgdGhlIG9u
bHkgcGxhY2UgYWxsIG90aGVyIHBsYXRmb3JtcyBjaGVjayB0aGlzLiBJbiBhbnkgY2FzZSB0aGUN
Cj4gYWJvdmUgY2hlY2sgbG9va3MgY29ycmVjdDoNCj4gDQo+IFJldmlld2VkLWJ5OiBJbXJlIERl
YWsgPGltcmUuZGVha0BpbnRlbC5jb20+DQoNClBhdGNoIHB1c2hlZC4gVGhhbmtzIGZvciB0aGUg
cmV2aWV3IQ0KDQotTWlrYS0NCj4gDQo+ID4gIAkJCSJbQ1JUQzolZDolc10gbWlzbWF0Y2ggaW4g
QzIwOiBSZWdpc3RlciBDTE9DSyAoZXhwZWN0ZWQgJWQsIGZvdW5kICVkKSIsDQo+ID4gIAkJCWNy
dGMtPmJhc2UuYmFzZS5pZCwgY3J0Yy0+YmFzZS5uYW1lLA0KPiA+ICAJCQltcGxsX3N3X3N0YXRl
LT5jbG9jaywgbXBsbF9od19zdGF0ZS0+Y2xvY2spOw0KPiA+IC0tDQo+ID4gMi4zNC4xDQo+ID4N
Cg==
