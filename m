Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iLlsGj8eyWlKuwUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sun, 29 Mar 2026 14:42:39 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B480351F81
	for <lists+intel-gfx@lfdr.de>; Sun, 29 Mar 2026 14:42:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 858D110E0DF;
	Sun, 29 Mar 2026 12:42:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Bc25J4NT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 242A610E0B8;
 Sun, 29 Mar 2026 12:42:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774788154; x=1806324154;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SOndryDDSbzrZx2HsYhm5TXmwpdngwTBbXB6F9utnEQ=;
 b=Bc25J4NTEHf8kTVGpqtzUFZ4lwvK2MZR8HoW/f5t2cpNmOMUWfjAO/3F
 xZPH/5+kwmHq+yYOWRH3p8vAHS6zDH2BNPfwea8z5u4J2FVD3NwA4dqng
 YUX+NSTVEEotn0gXNryuSDd+Zm3TlZIWL/aRAM4aVCs/TQhXgspgIxiDl
 9BbcWGTA4yQJjfO+d8ttD8G6+ZjA4CAhYyqnMiyYlm5HJ+ed+Q1zRERsH
 ojdlO4OYIvYksCHrfoPxxlYkioHP/S9/R/W2tWuePC/XeFNxnOs61jBxi
 hLn3JAitAzTKzoVuZMZ60sM4oAArTCIZoFOxrHsSiKaZcCJvxD3/oP5Ie Q==;
X-CSE-ConnectionGUID: TVvhgJ6sTWGcA5GocGASow==
X-CSE-MsgGUID: E2sJqiMcSmudS5+J6k3UeQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11742"; a="74827887"
X-IronPort-AV: E=Sophos;i="6.23,148,1770624000"; d="scan'208";a="74827887"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2026 05:42:34 -0700
X-CSE-ConnectionGUID: lB6IqpvzSFGMgy0mwHbqXA==
X-CSE-MsgGUID: 2ZeK03A5R+q8TONjcoAmVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,148,1770624000"; d="scan'208";a="249013562"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2026 05:42:34 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 29 Mar 2026 05:42:33 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 29 Mar 2026 05:42:33 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.60) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 29 Mar 2026 05:42:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Bj16N4tgsfLkjRieatJvfXQgVzb/AN/pD9l+ATsNfWkp2pcvmikthlJGmewK0mjqwxByOynUkvsR4fLeiaSlxrhG5pY1ZCS2C2sjCr+MI/b+n5bxw+87rtWosOayXdmcHDWOF3YYlYbzZBBAUVCNIzUS0xdr823iroezGpF8myin39ggEXbNHRUTyAK1v2Py/qfSVDZXW7Mfuw2XND/qhAmi9cFCKfi1/m4BI1fGBZW7LJFNYnuECF+xQsVagP7NRLV6bd3N2R9Ldn8PiAgHPakJbeeFi6H/YNSk7Ix7IAsS5XAVUv67TRqn2hkGYH8hHp9eky8x6nj7tydDuzVZWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SOndryDDSbzrZx2HsYhm5TXmwpdngwTBbXB6F9utnEQ=;
 b=aALTcSii9s5p43nF+o87j2l//dRb2mjAxeztOrQlOqUBa3tJCFfmXUPGfbClKeGLXmIKkc1c2lIVu7lA9fTQeVpnGlqNMmiTQOrRbjg/4ymMweYtw6tZiKvtZAeJqfCGCajJ0+YQEh8mAh1ig+eKnKRXflKHf37och3m7M8/rL5hPAnYCiGX7vGMAn/FHoRalAVfppTd736aaGisdyEboW6n7yhNIXUAXn/IA59u1r+Dqx8kLrIDBO3PTVlExtqvl3ZJf8Foj1b24VXiQIQystobk+CO7ZoWefI19M/mpNEQtDqkGFCe+aiN/41O5CqkBHkLegFM1nSwugtOabifyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH3PR11MB7300.namprd11.prod.outlook.com (2603:10b6:610:150::21)
 by CH3PR11MB8518.namprd11.prod.outlook.com (2603:10b6:610:1b8::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.15; Sun, 29 Mar
 2026 12:42:30 +0000
Received: from CH3PR11MB7300.namprd11.prod.outlook.com
 ([fe80::c319:6d18:282a:cac8]) by CH3PR11MB7300.namprd11.prod.outlook.com
 ([fe80::c319:6d18:282a:cac8%6]) with mapi id 15.20.9769.014; Sun, 29 Mar 2026
 12:42:29 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Grzelak, Michal" <michal.grzelak@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH v1] drm/i915/aux: use polling when irqs are unavailable
Thread-Topic: [PATCH v1] drm/i915/aux: use polling when irqs are unavailable
Thread-Index: AQHcmn9uoyvsDaJTM0OeO60C+clU9bW9PkHAgAciYACAAVwqcA==
Date: Sun, 29 Mar 2026 12:42:29 +0000
Message-ID: <CH3PR11MB73006943DE437D325A3B4540BA55A@CH3PR11MB7300.namprd11.prod.outlook.com>
References: <20260210111952.4138954-1-michal.grzelak@intel.com>
 <IA0PR11MB73072FD0F4A1F94AA63B5A04BA48A@IA0PR11MB7307.namprd11.prod.outlook.com>
 <dbb4a305-612a-c01f-37e3-e7f86c72cc69@intel.com>
In-Reply-To: <dbb4a305-612a-c01f-37e3-e7f86c72cc69@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH3PR11MB7300:EE_|CH3PR11MB8518:EE_
x-ms-office365-filtering-correlation-id: 66a682ba-3181-4655-2290-08de8d90a3b8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|22082099003|18002099003|56012099003;
x-microsoft-antispam-message-info: yQ51nA13gkTFHWvyUTBEHguRKsJxd390fOv/Yptt4kz0M9dP+yvcz1V/Q1WlDnQFhQkS+lLXbS72jBLljldRfBs4IGz+u1oz7jx/Iv+DWY24DySuu0IaUq/SkUHSBg92UT/as3FjaP1h0YIlyq8JPwZxHvd9Mt6ZSkmNRBFTL+EhgJXyGS3+mSwKqwva/C/Rsx2e9IuHgT3TP5ITcJVS7Zz89h2EpodwHLiJJ5E//hd0+OuPLWq7aZWk8ShRW8oQUNG6xKNBHhiXhEmUKbFyHtKxKzQDA8OXW1U9NvYzFFQrxrP1GpZ23j8ukNgOVkpY9YvMEgucvFpZj/hb6CQuw/Q26SDwr2syJgRRPYed6zi5Ua+ikxk3PXdWwl4JHZVUfP7GAbpnKKZjgt4EDsVSdLNghVOYdGjX4DbzjGqdr78SkHCV/HlvYyn8LLFh3DzIcQgWieSLSQsASx8a3GIVgLfukNnHf7flU6REuJKkhJFC6ubaKdbr78bIUX7uvYk76BoUEpXEHkLHdFLCWyWak4BNacSey3btqgGfgLt/ryvh//FOzSaJedI06qSoJeqLI2Wh1cCkNbvUwquEtsph2QhowN3gChZtMgazBmhlAA3PjpGVi6YCJJUIqcjAWHCU2aUWThl+5YLU8hB5xSutLjVzM3mjdRdUso17jswYAEmD0pmJ5kJCI33WzysWHwargN/qgYbjaahtAb8dlvJ377vATeu29kRpY4wRGdO6nkbZ7FoNtV8f+gfeqpycKX6DCJ3nzzZ8YhzcF24QFkK9ZjosRAKUsU5/lcAgaLARTrw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB7300.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TG9HYXhOSXZaMWN3TzdqZ3NQMllPL25qMzFtZk5CdHk0T2dmRGs0SHE0YkRK?=
 =?utf-8?B?SW1wa1JRZ1JxcjcxWlpoOCtpRzl1S09TWWh0cng2Mm5Sbk8yY2QyNzlWWVlK?=
 =?utf-8?B?dG14cGpXdDAxcmhZVGl4WG8vMjRLSTVOTHc0SzdlaDE0d1ArOTRSbDJyam5I?=
 =?utf-8?B?WGJQaDJhOUdndXVzR1MwMzNCM3YrNEJNT2NENGFtRXNnRXVyTHR1UzNtcG9Q?=
 =?utf-8?B?TmdhQWFNL3dIaXdUTmthakRrYnlCaTltRUNabVRzNkQ3bG1DR2xYN2RBMFEr?=
 =?utf-8?B?eFpBRjlpOFQwKzUvQS9SUWQveXlGNko0NkhDQlpnL01FRGNFN1oySWFtSXAr?=
 =?utf-8?B?Kytac0ExR0Y0MzYwSW5VVW0rck5nYnFMRS81ZXMzNnFmSnZiYzNFNnB1MnJM?=
 =?utf-8?B?NTFCVElybUx2WTJUQlFvS1Q5a29WUE0zdjBiTjlOY2FPWElwYXRWNXVBTmRq?=
 =?utf-8?B?SFc2ZmRqdzlnOWNxakRmWllhTDNWK2szaDFHbWU5K0psTzdZanRoa25INjJm?=
 =?utf-8?B?b2dBM3R0aW4xYmh6cnFLMDk2ZEtFUzNSMHoyeEZzdzZ6ZFdkWFlKdVgrdmM4?=
 =?utf-8?B?K1did3RzREhWWGkyRTJVVExPWGw3b2Y2ODJMSG5Ja2Y2VXJQMUV0OXAxMkhD?=
 =?utf-8?B?NnhZc0RvS0l1Ums3NEQ4c0FiTnl3VDFuQ1E0T08xV1I2NnRzUGlSRG95ZG96?=
 =?utf-8?B?NHc5ayttcVh1bGNpdXBZVEsrMkJmUHljYkZITlhrM055dzFUQ0F1aE82Zkhu?=
 =?utf-8?B?VXBTT0JuWTltUDBJbmJTeGNXSE9hdXBVcklLanpGOVVBRExBYWhYOXRpRmtU?=
 =?utf-8?B?d2VIdUtZOXIydmZoelgyNFFnUGlxcmt1Umt6dDI5M2xORzVsckNORlBHOFJS?=
 =?utf-8?B?Q0hVbUFTV1UvOGp3aDJKZlhNRmh1RHlHdHhncm1UeHpyenovSEYvcXRhbE1L?=
 =?utf-8?B?NGxlaXJFQnROYlhaUjhITjV1RGRHQXV2REtpbkZSRlRmTHhBTUtBd3M1VHBW?=
 =?utf-8?B?K0dyK3VtNUE2R2R6aWc4andsWXFGcnNwUUFxNjg3N01laUo1ZXQwM2hLZEVv?=
 =?utf-8?B?SzQwekp6N001NzZpQy9tcFh2WXFVSTF0V2tBNTV0aDAyQVRLUUhXamNYNHFn?=
 =?utf-8?B?bUdXZDdlc3VlY2FtdmpvOFhBSklpTmh5SzVicFRJSXpBVDNKbmtnalFFbHRj?=
 =?utf-8?B?VEpLcmRKV2N1RDBHSGJFbHV1MFN2eUtuajR5aFAxRHBRNmVtOW45dFNQVDA4?=
 =?utf-8?B?K25PRXdTYzBPQmZtUW1ScmVPWXZhZ1RONTBZQTRoSnk5OHdnUkRFdTY3Tzli?=
 =?utf-8?B?enFWR2tEMCtZdkltcGpKNjQzZEJtWEh4bGl4anZocm1pMEJLTXZCU0hsZWIr?=
 =?utf-8?B?aVBDVzA2NnFRbHJTdFF2M3pFY001Wnk1R3NUMzdUVXNMdi9McHN4VkxYSThB?=
 =?utf-8?B?eHBiMUhYSlBYMWZoRGpmWG0rNXE0THkxTlJsaUR3aUdhOW8vWW96VlRGang4?=
 =?utf-8?B?V24wTFk2dTBZYVRJYWlwNDBoUnJXZmNYV2lJd2ZXbUFoa2xuSDJkcmdpWkJP?=
 =?utf-8?B?cmJybmpzTWJmUkdsSE9hSXhjVEJVZVBoc1VRNi9DQ0lpSTRMajJnT0JXeG4y?=
 =?utf-8?B?UEw0elVUbExSa0R0YnZ3L3FhUFhlUXRVNGFtMVE2RXRxV2s4eUtnS25uOG9t?=
 =?utf-8?B?TTNwOWl2K3BaMDVOY3ZWUSs4T0I5aGxYaklTMURaSEh6c1ZxTXNsbTRlK3pV?=
 =?utf-8?B?VkxpTkxCc3NqeW9WR3NzZ1puU3V0ZXdJYTk0cFJCS0F6cWVucDZWTGo5TXhl?=
 =?utf-8?B?dmlQT3JlVzJuTHpqcjVSOHMrSEVocFlIYi8wL2ZHdXAyRHJwNXAwUGt1Z0VC?=
 =?utf-8?B?bGdIZVk1c2IrT1c2MFE2NnNMYWJuVE9CNk9MdXhyOXVZSjdabFpqRml0a2NS?=
 =?utf-8?B?TFd3aXUxWFNwRkNaT0QyUmpBM3lqKzFrYmV5Y0svbHlUTzV0OW9zV1pQai9J?=
 =?utf-8?B?NlpxclhqMzhlOFovSjdyU3pyaUduUjhNNGZOT0NibWNGZy9hN3AxQzEvNy93?=
 =?utf-8?B?eUUvVTUrM3BrNk1IblpvbGJVOXk0bXRyakI3Tlp4a24wYWtacHJTNkFLelJq?=
 =?utf-8?B?WWdGcnR0TDBqcVFhN2xBNCtBbFV3Z3JCM011cUZIN2FIMmxOUnUzVVU5ZEdO?=
 =?utf-8?B?ZDhqeHRkdUQzMUZ6bzcvdW1PRjN4blZSYzRzNnBEOGRhUmtjd0Y0Q1BZS0NQ?=
 =?utf-8?B?YTMwcGxnYk1aVHB1aGo2MW1ubVBzYWZQaE9RZnp6NWJGZGoxVy9JVWFLa3I1?=
 =?utf-8?B?TW9hOEkxY0l6Z1pndFdmS01TY3BWNjlpWVg4UGx2eHNoeW1oTHQ4UT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: nsTKq5CwUW4ULCMEV95sU/9z7JTs92a9EUPm2BjB3BJSKnBMDs4/8sGzYW49h9N8ZYxfXNOk4zn29XYvOjn52KAHdRdKC+nNyhi40uLBzukud7j5AXyCiB+ZUZcfXZNbzqXpsDmA8/Bb8nM5qXDEQA7uV+BpxPABuMBKB371nXlLX/SVA8XGzTRz0fofIxMNdkv+74kqLZfW48IPqnFtagUKu8P+5mrW9oGQkdcPQDAFNX+5zKdGJVDmcNAbnVpWUEUkbotHGpSYtdjPVGRTuH22+dM+aauke2QhBuKllikQHoX0Vgt4XG0oW4FC7FWHFhAM8G1hfKG9qDoQLsXnvQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB7300.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 66a682ba-3181-4655-2290-08de8d90a3b8
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Mar 2026 12:42:29.4702 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LL9Wn8C4qCR29VpcbLU6bXQSFc2GKh61vD22C8EoewyLarcQu2bRM7wheL2l/Lh7VOxQavmUA5j/DqhXBIqrkw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8518
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,xe_guc_mmio_send_recv:email,lists.freedesktop.org:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 9B480351F81
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBHcnplbGFrLCBNaWNoYWwgPG1p
Y2hhbC5ncnplbGFrQGludGVsLmNvbT4NCj4gU2VudDogU2F0dXJkYXksIE1hcmNoIDI4LCAyMDI2
IDk6MjIgUE0NCj4gVG86IE11cnRoeSwgQXJ1biBSIDxhcnVuLnIubXVydGh5QGludGVsLmNvbT4N
Cj4gQ2M6IEdyemVsYWssIE1pY2hhbCA8bWljaGFsLmdyemVsYWtAaW50ZWwuY29tPjsgaW50ZWwt
eGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOw0KPiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnOyBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiBT
dWJqZWN0OiBSRTogW1BBVENIIHYxXSBkcm0vaTkxNS9hdXg6IHVzZSBwb2xsaW5nIHdoZW4gaXJx
cyBhcmUgdW5hdmFpbGFibGUNCj4gDQo+IE9uIFR1ZSwgMjQgTWFyIDIwMjYsIE11cnRoeSwgQXJ1
biBSIHdyb3RlOg0KPiA+DQo+ID4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4+IEZy
b206IEludGVsLWdmeCA8aW50ZWwtZ2Z4LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBP
biBCZWhhbGYNCj4gPj4gT2YgTWljaGHFgiBHcnplbGFrDQo+ID4+IFNlbnQ6IFR1ZXNkYXksIEZl
YnJ1YXJ5IDEwLCAyMDI2IDQ6NTAgUE0NCj4gPj4gVG86IGludGVsLXhlQGxpc3RzLmZyZWVkZXNr
dG9wLm9yZzsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+PiBDYzogR3J6ZWxh
aywgTWljaGFsIDxtaWNoYWwuZ3J6ZWxha0BpbnRlbC5jb20+OyBWaWxsZSBTeXJqw6Rsw6QNCj4g
Pj4gPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiA+PiBTdWJqZWN0OiBbUEFUQ0gg
djFdIGRybS9pOTE1L2F1eDogdXNlIHBvbGxpbmcgd2hlbiBpcnFzIGFyZQ0KPiA+PiB1bmF2YWls
YWJsZQ0KPiA+Pg0KPiA+PiBQVEwgd2l0aCBwaHlzaWNhbGx5IGRpc2Nvbm5lY3RlZCBkaXNwbGF5
IHdhcyBvYnNlcnZlZCB0byBoYXZlIDQwcw0KPiA+PiBsb25nZXIgZXhlY3V0aW9uIHRpbWUgd2hl
biB0ZXN0aW5nDQo+IHhlX2ZhdWx0X2luamVjdGlvbkB4ZV9ndWNfbW1pb19zZW5kX3JlY3YuDQo+
ID4+IFRoZSBpc3N1ZSBoYXMgbm90IGJlZW4gc2VlbiB3aGVuIHJldmVydGluZyBjb21taXQgNDBh
OWY3N2EyOGZhDQo+ID4+ICgiUmV2ZXJ0DQo+ID4+ICJkcm0vaTkxNS9kcDogY2hhbmdlIGF1eF9j
dGwgcmVnIHJlYWQgdG8gcG9sbGluZyByZWFkIiIpLg0KPiA+Pg0KPiA+PiBBcHBhcmVudGx5IHRo
ZSBjb25maWd1cmF0aW9uIHN1ZmZlcnMgZnJvbSBub3QgaGF2aW5nIEFVWCBlbmFibGVkIHdoZW4N
Cj4gPj4gdXNpbmcgaW50ZXJydXB0cy4gT25lIHByb2JhYmxlIGNhdXNlIGNhbiBiZSB4ZSBlbmFi
bGluZyBpbnRlcnJ1cHRzDQo+ID4+IHRvbw0KPiA+PiBsYXRlOiBpbnRlcnJ1cHRzIG5lZWQgbWVt
b3J5IGFsbG9jYXRpb25zIHdoaWNoIGN1cnJlbnRseSBjYW4ndCBiZQ0KPiA+PiBkb25lIGJlZm9y
ZSB0aGUgZGlzcGxheSBGQiB0YWtlb3ZlciBpcyBkb25lLg0KPiA+Pg0KPiA+PiBBcyBmb3Igbm93
LCB1c2UgcG9sbGluZyBmb3IgQVVYIGluIGNhc2UgaW50ZXJydXB0cyBhcmUgdW5hdmFpbGFibGUu
DQo+ID4+DQo+ID4+IEZpeGVzOiA0MGE5Zjc3YTI4ZmEgKCJSZXZlcnQgImRybS9pOTE1L2RwOiBj
aGFuZ2UgYXV4X2N0bCByZWcgcmVhZCB0bw0KPiA+PiBwb2xsaW5nDQo+ID4+IHJlYWQiIikNCj4g
Pj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+
ID4+IFNpZ25lZC1vZmYtYnk6IE1pY2hhxYIgR3J6ZWxhayA8bWljaGFsLmdyemVsYWtAaW50ZWwu
Y29tPg0KPiA+PiAtLS0NCj4gPj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHBfYXV4LmMgfCAyMA0KPiA+PiArKysrKysrKysrKysrKysrLS0tLQ0KPiA+PiAgMSBmaWxlIGNo
YW5nZWQsIDE2IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pDQo+ID4+DQo+ID4+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2F1eC5jDQo+ID4+
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9hdXguYw0KPiA+PiBpbmRl
eCBiMjBlYzNlNTg5ZmFkLi45YzliNjQxMDM2NmQ1IDEwMDY0NA0KPiA+PiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2F1eC5jDQo+ID4+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4LmMNCj4gPj4gQEAgLTEyLDYgKzEyLDcg
QEANCj4gPj4gICNpbmNsdWRlICJpbnRlbF9kcC5oIg0KPiA+PiAgI2luY2x1ZGUgImludGVsX2Rw
X2F1eC5oIg0KPiA+PiAgI2luY2x1ZGUgImludGVsX2RwX2F1eF9yZWdzLmgiDQo+ID4+ICsjaW5j
bHVkZSAiaW50ZWxfcGFyZW50LmgiDQo+ID4+ICAjaW5jbHVkZSAiaW50ZWxfcHBzLmgiDQo+ID4+
ICAjaW5jbHVkZSAiaW50ZWxfcXVpcmtzLmgiDQo+ID4+ICAjaW5jbHVkZSAiaW50ZWxfdGMuaCIN
Cj4gPj4gQEAgLTYwLDE4ICs2MSwyOSBAQCBpbnRlbF9kcF9hdXhfd2FpdF9kb25lKHN0cnVjdCBp
bnRlbF9kcCAqaW50ZWxfZHApDQo+ID4+ICAJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkg
PSB0b19pbnRlbF9kaXNwbGF5KGludGVsX2RwKTsNCj4gPj4gIAlpOTE1X3JlZ190IGNoX2N0bCA9
IGludGVsX2RwLT5hdXhfY2hfY3RsX3JlZyhpbnRlbF9kcCk7DQo+ID4+ICAJY29uc3QgdW5zaWdu
ZWQgaW50IHRpbWVvdXRfbXMgPSAxMDsNCj4gPj4gKwlib29sIGRvbmUgPSB0cnVlOw0KPiA+PiAg
CXUzMiBzdGF0dXM7DQo+ID4+IC0JYm9vbCBkb25lOw0KPiA+PiArCWludCByZXQ7DQo+ID4+DQo+
ID4+ICsJaWYgKGludGVsX3BhcmVudF9pcnFfZW5hYmxlZChkaXNwbGF5KSkgew0KPiA+PiAgI2Rl
ZmluZSBDICgoKHN0YXR1cyA9IGludGVsX2RlX3JlYWRfbm90cmFjZShkaXNwbGF5LCBjaF9jdGwp
KSAmDQo+ID4+IERQX0FVWF9DSF9DVExfU0VORF9CVVNZKSA9PSAwKQ0KPiA+PiAtCWRvbmUgPSB3
YWl0X2V2ZW50X3RpbWVvdXQoZGlzcGxheS0+Z21idXMud2FpdF9xdWV1ZSwgQywNCj4gPj4gLQkJ
CQkgIG1zZWNzX3RvX2ppZmZpZXNfdGltZW91dCh0aW1lb3V0X21zKSk7DQo+ID4+ICsJCWRvbmUg
PSB3YWl0X2V2ZW50X3RpbWVvdXQoZGlzcGxheS0+Z21idXMud2FpdF9xdWV1ZSwgQywNCj4gPj4g
Kw0KPiA+IFdvbmRlciBpZiB0aGlzIGlzIGEgY29ybmVyL2Vycm9yIGNhc2UsIGFzIHRvIGhvdyBp
bnRlcnJ1cHRzIGFyZSBkaXNhYmxlZC4NCj4gPiBSYXRoZXIgSSBmZWVsIHNob3VsZCBmaW5kIG91
dCB3aHkgaW50ZXJydXB0cyBhcmUgYmVpbmcgZGlzYWJsZWQsIGlmIHRoaXMgd291bGQNCj4gYmUg
YSB2YWxpZCBzY2VuYXJpbyB0aGVuIGluIG1vc3Qgb2YgdGhlIHBsYWNlcyB3aGVyZSB3YWl0X2V2
ZW50X3RpbWVvdXQoKSBpcw0KPiB1c2VkIGluIGRybSB3ZSBzaG91bGQgY2hlY2sgaWYgcGFyZW50
X2lycSBpcyBlbmFibGVkISBJbiB0aGF0IGNhc2UsIGNhbiB0aGlzIGJlIGENCj4gd29ya2Fyb3Vu
ZCA/DQo+IA0KPiBJJ20gbm90IHN1cmUgSSBnZXQgd2hhdCB5b3UgbWVhbi4gQ2FuIHlvdSBlbGFi
b3JhdGUgbW9yZSBvbiB3aGF0IHlvdSB3b3VsZA0KPiBsaWtlIHRvIHNlZT8NCj4gDQpIYXZpbmcg
aW50ZXJydXB0cyBkaXNhYmxlZCBmb3Igc3VjaCBhIGxvbmcgdGltZSBpcyBhbiBpc3N1ZSBhbmQg
d2lsbCBoYXZlIHRvIGlkZW50aWZ5IHRoYXQuDQpUaGlzIHdvcmsgYXJvdW5kIHdvdWxkIGRlZmlu
aXRlbHkgaGVscCBpbiB0aG9zZSBzY2VuYXJpb3MgYW5kIGEgZ29vZCB0byBoYXZlIGluIGRyaXZl
ci4NCg0KPiBNeSBzdXNwaWNpb24gaXMgdGhhdCB5b3UgYXJlIGFza2luZyB0bw0KPiBzL3dhaXRf
ZXZlbnRfdGltZW91dCgpLzx0aGlzIHBhdGNoPiBpbiB0aGUgd2hvbGUgZHJtIGRpcmVjdG9yeS4g
SWYgdGhhdCdzIHRoZQ0KPiBjYXNlLCBJIGRvbid0IGtub3cgaWYgaXQgaXMgcmVhbGx5IG5lY2Nl
c3Nhcnkgc2luY2UgaXQgaXMgQVVYLW9ubHkgcmVsYXRlZCBpc3N1ZS4NCldoeSBpcyBpdCBvbmx5
IEFVWCByZWxhdGVkLiBGb3IgQVVYIFR4IHdlIGFyZSByZWxheWluZyBvbiBpbnRlcnJ1cHRzIGFu
ZCBnZXR0aW5nIHRoaXMgaW50ZXJydXB0IGlzIHRoZSBpc3N1ZSBvdmVyIGhlcmUgZHVlIHRvIHBh
cmVudCBpbnRlcnJ1cHQgYmVpbmcgZGlzYWJsZWQuDQpTaW1pbGFybHkgaW4gb3RoZXIgcGxhY2Vz
IHdoZXJlIHdhaXRxdWV1ZXMgYXJlIHVzZWQgaW4gaTkxNSwgY2FuIGhhdmUgdGhpcyBXQSB0byBt
YWtlIHRoZSBkcml2ZXIgbW9yZSByb2J1c3QuDQoNClRoYW5rcyBhbmQgUmVnYXJkcywNCkFydW4g
UiBNdXJ0aHkNCi0tLS0tLS0tLS0tLS0tLS0tLS0tIA0KDQo+IENvdWxkIHlvdSBwdXQgc29tZSBy
YXRpb25hbGUgYmVoaW5kIGl0Pw0KPiANCj4gQlIsDQo+IE1pY2hhxYINCj4gDQo+ID4NCj4gPiBU
aGFua3MgYW5kIFJlZ2FyZHMsDQo+ID4gQXJ1biBSIE11cnRoeQ0KPiA+IC0tLS0tLS0tLS0tLS0t
LS0tLS0tDQo+ID4+IG1zZWNzX3RvX2ppZmZpZXNfdGltZW91dCh0aW1lb3V0X21zKSk7DQo+ID4+
ICsNCj4gPj4gKyN1bmRlZiBDDQo+ID4+ICsJfSBlbHNlIHsNCj4gPj4gKwkJcmV0ID0gaW50ZWxf
ZGVfd2FpdF9tcyhkaXNwbGF5LCBjaF9jdGwsDQo+ID4+ICsJCQkJICAgICAgIERQX0FVWF9DSF9D
VExfU0VORF9CVVNZLCAwLA0KPiA+PiArCQkJCSAgICAgICB0aW1lb3V0X21zLCAmc3RhdHVzKTsN
Cj4gPj4gKw0KPiA+PiArCQlpZiAocmV0ID09IC1FVElNRURPVVQpDQo+ID4+ICsJCQlkb25lID0g
ZmFsc2U7DQo+ID4+ICsJfQ0KPiA+Pg0KPiA+PiAgCWlmICghZG9uZSkNCj4gPj4gIAkJZHJtX2Vy
cihkaXNwbGF5LT5kcm0sDQo+ID4+ICAJCQkiJXM6IGRpZCBub3QgY29tcGxldGUgb3IgdGltZW91
dCB3aXRoaW4gJXVtcyAoc3RhdHVzDQo+IDB4JTA4eClcbiIsDQo+ID4+ICAJCQlpbnRlbF9kcC0+
YXV4Lm5hbWUsIHRpbWVvdXRfbXMsIHN0YXR1cyk7IC0jdW5kZWYgQw0KPiA+Pg0KPiA+PiAgCXJl
dHVybiBzdGF0dXM7DQo+ID4+ICB9DQo+ID4+IC0tDQo+ID4+IDIuNDUuMg0KPiA+DQo+ID4NCg==
