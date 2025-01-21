Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85FF7A187D8
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2025 23:46:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB96310E0F5;
	Tue, 21 Jan 2025 22:46:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PCK78LgB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74DAA10E0F5;
 Tue, 21 Jan 2025 22:46:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737499592; x=1769035592;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=RHBrkKPZx46XuoFKEGSUrR8TeVYryX1FeBkCq+Dh904=;
 b=PCK78LgB9Wu6KfEQLgTGcJZ6DCqoYZm0U6bxIK6yB4M52i2MZ5FZXzbK
 qbQ8W8xD2d2ZE7J8un6co6AccEVu2JeG8mC8ylAuwXD17Qq590W4Z1fGj
 DE5xu2Yg/VAg/o/baIqqbbrraG3Xn8kDLQuEEAA9ZCP4fxY+1uYjUTVd7
 WrZkggRwNn08xqY09M4qcv/njQ3skQ2zw+1fSJzXFELfII0EOSgchHZja
 F78aJTH8slejnc6fgXpWgQjrGQ0J2ii1jaEM1fhXtRxBCwpXOz+KdZX/q
 RbGM9Ldeh6oMBinFMKUlLqVouM1k+YpXJ8Yx5218dIW9wKYpQJZbNhSws w==;
X-CSE-ConnectionGUID: 2IBHIn6ZSimXzyRQP6h5Iw==
X-CSE-MsgGUID: c1nEHOpfTEGNbFZUnJ+dFw==
X-IronPort-AV: E=McAfee;i="6700,10204,11322"; a="49334384"
X-IronPort-AV: E=Sophos;i="6.13,223,1732608000"; d="scan'208";a="49334384"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2025 14:46:31 -0800
X-CSE-ConnectionGUID: MnZeyUD9RSOSOU11mC2Pcg==
X-CSE-MsgGUID: Zw0LOJoWTquVXns4ISF1SA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="144196480"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Jan 2025 14:46:24 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 21 Jan 2025 14:46:23 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 21 Jan 2025 14:46:23 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 21 Jan 2025 14:46:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=s8fEaAuHJrrt5zwZ1V35IkLM3d2GEQDQJHIyemXAt2k8CTlVSlUtMK8fQr1PhXEVhIR8/rvYS+NHOfXQK5wH3V3Yiiusc+bsdLPdZ1CV0Q4ctH9SUDtTRywPkxZrTZCTlORTmeGIdQHekT9od6K0dm9MTD/Ispdjb57Q+6xfM0bBzkrKUql/av67MNkgfNBKNCFlr3Y904WVNZKsGdn1NkgaUJbwN3gME3+EttqTLwEm3Lom0mlx2dQS7xf66bYdGPzp1kdQrHgcBdP6lliIVcIP/Wr6roJPXdPckexkmMDyHumiSY6iiVdjjLRME9BTcwP8oHmiVf0sqoKhPoz01g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RHBrkKPZx46XuoFKEGSUrR8TeVYryX1FeBkCq+Dh904=;
 b=gTU5w3tGc+HbAwZgduYskJddsXPk+Lty/w72tG3pqZVAGv7Xlxd64KymJKBGHlPbHB2pU7VYM8Sa0VS/Kb+3j6rrpONqoHuoI9YEfulLob8NvUdP7HuaCKvHQvOSCFWhyhT7AM7yc0VlPOSKOgIlI4XgmpV+ZUlwERzU4hmCxfNy9mwOx8ilt0EhCxJtJ217JBueP3l+i0nzpg9Q1jXLwUMtSr9eIMO73qNh6ITRHaF5wp7FtddJMcJ89msWzg0Z90wFINv3GAXLzmiUWFbWJC7Iw44AmIxq4TcFY5rUpUr2KzTPlUYXSowaTKjyib1WHtPOlynj+3GmgMuMYS61nA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4620.namprd11.prod.outlook.com (2603:10b6:303:54::14)
 by IA1PR11MB6076.namprd11.prod.outlook.com (2603:10b6:208:3d4::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.20; Tue, 21 Jan
 2025 22:45:46 +0000
Received: from MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::5b47:1b5a:71b2:4f20]) by MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::5b47:1b5a:71b2:4f20%4]) with mapi id 15.20.8377.009; Tue, 21 Jan 2025
 22:45:46 +0000
From: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kandpal, Suraj" <suraj.kandpal@intel.com>, "ddavenport@google.com"
 <ddavenport@google.com>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>
Subject: Re: [PATCH 0/5] Add HDMI PLL Algorithm for SNPS/C10PHY
Thread-Topic: [PATCH 0/5] Add HDMI PLL Algorithm for SNPS/C10PHY
Thread-Index: AQHbbFY1LfuODO6bU0Se/HAS3YpAlg==
Date: Tue, 21 Jan 2025 22:45:45 +0000
Message-ID: <444eadb3d664c4624c70d8205770b28e75b2061d.camel@intel.com>
References: <20250120042122.1029481-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20250120042122.1029481-1-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW3PR11MB4620:EE_|IA1PR11MB6076:EE_
x-ms-office365-filtering-correlation-id: 2ea5ffee-9025-4b9a-0457-08dd3a6d5822
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?V294VnhuWXNLczlDdVpRMW9NejNYQWFOUUsrTnFLQjBEUUNZSU9DTytRWFBF?=
 =?utf-8?B?YlUvSExwbkhlbjdwVm5YQWF6L2ZnZlRoVGFnaGprelZMNEJCWXRMdHpha1hv?=
 =?utf-8?B?WUlHNmErNnh0VEdJNXdDeldLdW1Ybk50WHl6NVV1QXJCTkZKRXpvZnV4K1JJ?=
 =?utf-8?B?bVh1MG1MeFFqdGtXQ0RuNVB2dFlXRmxkdnVta3lRY244Y21iMVhDTW14RjB2?=
 =?utf-8?B?blZLckZuaERhUGFZdnIxSVBqWEhCWmZOYStQMXB4b1NqWS9GQk1DTzFHd2hj?=
 =?utf-8?B?clBTOHl5WkYvakExM3F6TTNkSFJwaU9OUG52VGJNYnFScEpUYTRoT1Y0QmUz?=
 =?utf-8?B?c3g1eStjY2thOTk0RVViZmdoczBSRVlyRDdjeXcvNHc4REM3TE1DMHlEbG1v?=
 =?utf-8?B?dzZZRWxTU25ZVnRQdzl1bmNHZXpBV3loUGEyMzNNS0xvNC9HSUR1REMzMVcr?=
 =?utf-8?B?TTNrdDJaT1AycENPQUdKVVlCRiszQURHQUVBTDdaQUw3U1ZUd2pJMEFERncv?=
 =?utf-8?B?S29Nb0ZWKzZ5SGIrSDl5b29vM1BhY2ZxWS9OUCtOYTJIUWMvRS9uVTA1azY1?=
 =?utf-8?B?UzY4Wkg4TFpEbmxiVmhnOUlRT0dCUEJ5TlhpcnZydGpGc3NYNisvTklOQmtC?=
 =?utf-8?B?U3hIMTIxRVlpd0x0L1QydWhuWkVLc1JNL1JLM21lYm14UTR6TkR6cXVFaGZH?=
 =?utf-8?B?VjE1R0RUL3F2d29FcExzMEQ5ZmVKblR0Q0t5c0VOcWlzQkxmWlpPOUVZcUJy?=
 =?utf-8?B?eVpvb2d0Mk1oSjB1U2g0ZWdOUmRLUk82bUU2K095bmhGbGNrdm9mVnZoWE5i?=
 =?utf-8?B?VXNxRnFyZHhyUVovRC85SGF4UHJ6Vno0WmF5cFJNNm1GVTc5SlM4VzZSem03?=
 =?utf-8?B?R1NCa3dWY3BTUjNqVU81KzYwZ3pOUDAyeGdLeGxiVDVFRlVqdnM4UndqeDVY?=
 =?utf-8?B?c0dpLzNLWnFiTDhkNXorTHVNb1VyQ0VFR2o5U1V3UUhHQVdwczlXYlpQVy9G?=
 =?utf-8?B?NGRnbHpkWStOOGYwdUdIQ3JCOTRQM1NTTE9XekJwdGVYYjY4cDBoemNkekVl?=
 =?utf-8?B?M2lBejNacllXM3dXNnVkK0FPR0dVVlJ1aWYzbU5PRG93bzREVFRBREpOMGd2?=
 =?utf-8?B?SGFvMk95UDlpWFdBZGR0WEo1UnNOWFJmS2dIbjBZbnd6a2FJdUU5elpRdDgx?=
 =?utf-8?B?VTlkcTJ0ZHNsVkpyZnlFOXNZbkNVZyt3UyszU1ZHc00wU1BicUx2cGplZUpO?=
 =?utf-8?B?VDJtWTlTTUt6VC8vQXZzMUZxSnZjQUI0Q2x5UzRFWnRvQUllQm5HOGRmRUEv?=
 =?utf-8?B?VUY1eVEwSmtGeFpSRVdzTkc1L2pIR2ZvMEV0UVEyV3hDZ09vamxkWWI2amJZ?=
 =?utf-8?B?di9GNWlVallqeVMrZDNyL3pnWlA4bEtVNm8vSzh6anJoMDU2MHBEcGdHVG84?=
 =?utf-8?B?OVFPczhLZzArQ0dQbXIvQUxQbWJ4TjdLSGppd05FTUJOelNuRWdSdVhjc2g1?=
 =?utf-8?B?bVFjQXB3U0F4WHdaVUY1VFFOOGswM1dIbkVVWWhPVys2N015SGNKdHZ0Q2Yx?=
 =?utf-8?B?SVY3cUFMdWpQcTNmVXVoWGlXZkg5Wjd1T3VEdzY5QU42WWdYdTFEQUkvbVBQ?=
 =?utf-8?B?MCtQV1NqaWlGcGU5MmZFY3lEaHBDU1k4QTZCT0g2dXRldHJZSUlCcVRLQTBm?=
 =?utf-8?B?MzlibDMyTGtWZ0luT2Q5dW9hT2lSOGNaN0kwTGRRUndyazRhM0xYaUFoaVFE?=
 =?utf-8?B?UHIwTG1LUGtXZEJIRHdUN1k2UWtOTFo0RUdPZ05JVnZWMlFzMzdUN0pUTnRT?=
 =?utf-8?B?ZEhMTS9RWXZUY1crMmo3K0VkK3dXWmpIQ1dGWjdnMnNCaHJ1QnZrUm5xbjVx?=
 =?utf-8?Q?+GxwcIqeULz8c?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4620.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?M05EWVp1akJqbVN2M3A1SkxPcDZsY0ZtZ296U1BDTkdqOFI1T0JmL3Q0T0RR?=
 =?utf-8?B?QnRJd2w1RGtCQm94UU9GSUJrbjdHWTF0YnBTbGdWdkxNT0VJWnF5S3ozaUxD?=
 =?utf-8?B?R21Qdzh0K043ZUZmWE5DYW1GblF3MlF2KzFSRnFQRUVPYW1TdkNTeXZjUzUz?=
 =?utf-8?B?SzZ0TkR0U3ZWUFFCcmdHVndhdWlhUU1uZjY4UjVxNUxhNlk0K3FjTnIwV3NW?=
 =?utf-8?B?WnVTNjRTb0NmcVZKamtyQkRaQ1ptQXQ5MDhxV2NjWXI4VGFlR0tvTFV3WmNW?=
 =?utf-8?B?V0xlSDlnU2RValYvUkhud2RqaWtWVk93OTdDZGU0a0xQbUl5Q1BZaTBNV0VX?=
 =?utf-8?B?UXJ6aVRWcUNOTVJFU0pEK0RRK3VKWm5KblVISkVyQTh6WTNSTDI0R3VoaVEv?=
 =?utf-8?B?M3pzaFY1UmdzTGFnUm84UmgyWWZkdlI0Q3JKNzArcEtnTkdyOE01MS8ySnRF?=
 =?utf-8?B?cVllQWRQQkZFaEhLNFUrMXNEbGNhblNKWS9wSEhqaGd2YjBBTHRMYVd5eXdJ?=
 =?utf-8?B?VnVTRCt6Wm94U2hqcEIyN20ybi9jZW4zK2xCSmVyYXlrUFROb2EzUC8yeThy?=
 =?utf-8?B?aGE3akJtYmRtOHdjSTEyTVNPS0NmcENRM09LazFKciticGw1K3ZQemFPRHkw?=
 =?utf-8?B?ampvSVpucG53MW9TTzVkM2M3QXMzaitxK2NyYThBVmxiYWs4NkxxRkRNNGdZ?=
 =?utf-8?B?RDNuTS9mMUVqQld3bC9iSXd1OW5jVFljbXpHUXNodHR4Z1pKZU1JQjlyN1Vx?=
 =?utf-8?B?cUZ3SEVsZS9uVTBjVGU4dkZ3NThEZytqRnlURlZwWTZ4TnkyMDVTblFXMHJ2?=
 =?utf-8?B?VVhpOEVvMElaeHl4QzhLaG9yY2xkV3VVZkJNWmEzSU1vWHF4YnZvdzFvWFRX?=
 =?utf-8?B?QWRMcG9KbTJIdWVrWVBWNkh3Q1RySUtKVXN3c0o3RVIyS2U0dkViZ2F0R0Z3?=
 =?utf-8?B?YUNDZFhXbklwbWpYajk0d1FmSTArWkJEeWdtYlMzZjZkcitVTlpJQmpCMWRT?=
 =?utf-8?B?ZldMSjQ3dm1CWW5yZFlVVHBYaSswVkM1MmN5bXhnbzJjN0c3ajZNd3VydGtT?=
 =?utf-8?B?MFhzQkFnUHFWVXZYNlJVTTJlM2NEcTIyZW9EMEYzZ0F3ZGluaFBsM3dyQlZZ?=
 =?utf-8?B?VjFMVHBoWmJpOWw5akVLTTV0OXphVkpyWGVJN3FvaHZpL1dpcTlRV0RFK245?=
 =?utf-8?B?RUdyYU96aDVVQjA4cG1Yb2hZVytQNGpLNUV0VVVuVVBFYko5SU5yUTV0aFdR?=
 =?utf-8?B?Y1laQWF5SnU5VFNuSUxzeWlsNDlmQ1d6S0NQRVlnMEZEY1dvNDRYeVNsaGk4?=
 =?utf-8?B?ZEhkazVnbEw0OXNhem5QV2pWdURMa2VxeDRBOEZML2hOVm9TMkR6M3pEZW1j?=
 =?utf-8?B?V3MydTVEejgwOHNrZ3VNUW9VcTA2OUFDUlR6eVljMUQ0ZjFZVkl0Kyt5bzV4?=
 =?utf-8?B?R2tENTltamlFMnphb0plZWJDOVlMaG1UV2MzV01oL0xLZ2U5VmZEN2N6V1Uv?=
 =?utf-8?B?SkVOUnZWOXIyS1VMSmZKdll0ajcwSVRyb3ZMTm1KTEJxS05lRDBUS2JJNkd6?=
 =?utf-8?B?VEhWejR0dEFqY2daTXJ3MGpYQ3FuZ2lDTE1LbUVORHllSEpxdkZnMGk1SWJX?=
 =?utf-8?B?UlRiZmtQeGRSVGNaZUc0SWFuVDZ6NEhnV3FxRE81UjZGMnA5bEpzb2F4QUpW?=
 =?utf-8?B?QVdtVlg0K0Y1ZXdQZlh6L1RmMGJhQzR4dlZNWWZMZkprS0xVYU5UTVFXd25t?=
 =?utf-8?B?TWptaFNTd2N3VmhOS2ZWL1pWSHhNNzk3NlY0UWhsd210QzZEZTUzL3hGWGVX?=
 =?utf-8?B?ZjJVdkU4cDk5R2YrZkhLSlNDV3FmZWx4UzZhUERyaWpXblpFOFJ5eWNNcDNp?=
 =?utf-8?B?OTY1QkZYdno5THFkN0piNDlZbk9obUMvY0FIbkpzcXdTR0xLeHVCVnNyWi82?=
 =?utf-8?B?Zm9rVldWeVBYMVJLRmJkZnMzT1poZUtvZTdLOWlIQVgrdTdaZEFFa3VpMHhw?=
 =?utf-8?B?UTNyQmNsUUNyK2c5MmV2a3oybkw3c2dmZ1VFakhNTFJPaXo1UnE2L0RlVEJO?=
 =?utf-8?B?aFNHdmZFSkJndERIY2dVd1Fsc2krUUJwaWZSWWdtWm14YWZxWnZLK0ttQ3R6?=
 =?utf-8?B?SnpNc0l0N09PbzZKZDFTaTZIc2xNNG9pQVArLzF3WFdVd0d0amRVRXhDMTBq?=
 =?utf-8?Q?U23lQhfRYfvkzT2g8GdVTuU=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <3A0D33C7CBBE984F96963251CAF2D57F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4620.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ea5ffee-9025-4b9a-0457-08dd3a6d5822
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2025 22:45:46.0485 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yMZFcAF+B7D9zHt+qiINvqasgWhQnLXK04IsQHi20vFX7wMrwyV8BB/llB9Y+qEiJug7r3ZIsxvKOXs+fuWZ5XKnjFANshKQzY1vO+lceQM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6076
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

VGhhbmsgWW91IGZvciB0aGUgc2VyaWVzLiANClRlc3RlZCBhIG1vZGVsaW5lIHRoYXQgaXMgbm90
IHByZS1jb21wdXRlZCBhbmQgYWJsZSB0byBzZWUgcGl4ZWwgY2xvY2sNCmNhbGN1bGF0aW9uIGRv
bmUgY29ycmVjdGx5IGFuZCB0aGUgYW5hbHl6ZXIgdHVybnMgb246DQoNCmFkanVzdGVkIG1vZGU6
ICIzNDQweDE0NDAiOiA1MCAyNjUyNTAgMzQ0MCAzNDg4IDM1MjAgMzYwMCAxNDQwIDE0NDMNCjE0
NTMgMTQ3NCAweDQ4IDB4OQ0KY3J0YyB0aW1pbmdzOiBjbG9jaz0yNjUyNTAsIGhkPTM0NDAgaGI9
MzQ0MC0zNjAwIGhzPTM0ODgtMzUyMCBodD0zNjAwLA0KdmQ9MTQ0MCB2Yj0xNDQwLTE0NzQgdnM9
MTQ0My0xNDUzIHZ0PTE0NzQsIGZsYWdzPTB4OQ0KDQpUZXN0ZWQtYnk6IEtoYWxlZCBBbG1haGFs
bGF3eSA8a2hhbGVkLmFsbWFoYWxsYXd5QGludGVsLmNvbT4NCg0KT24gTW9uLCAyMDI1LTAxLTIw
IGF0IDA5OjUxICswNTMwLCBBbmtpdCBOYXV0aXlhbCB3cm90ZToNCj4gVGhlIEhETUkgUExMIHBy
b2dyYW1taW5nIGludm9sdmVzIHByZS1jYWxjdWxhdGVkIHZhbHVlcyBmb3Igc3BlY2lmaWMNCj4g
ZnJlcXVlbmNpZXMgYW5kIGFuIGFsZ29yaXRobSB0byBjb21wdXRlIHZhbHVlcyBmb3Igb3RoZXIg
ZnJlcXVlbmNpZXMuDQo+IFdoaWxlIHRoZSBhbGdvcml0aG0gaXRzZWxmIHdhc24ndCBwYXJ0IG9m
IHRoZSBkcml2ZXIsIHRhYmxlcyB3ZXJlDQo+IGFkZGVkIGJhc2VkIG9uIGl0IGZvciBrbm93biBt
b2Rlcy4NCj4gDQo+IFNvbWUgSERNSSBtb2RlcyB3ZXJlIHBydW5lZCBkdWUgdG8gbGFjayBvZiBz
dXBwb3J0IChmb3IgZXhhbXBsZQ0KPiBpc3N1ZXMNCj4gWzFdLFsyXSwgYW5kIFszXSkuDQo+IFRo
aXMgc2VyaWVzIGFkZHMgdGhlIGFsZ29yaXRobSBmb3IgY29tcHV0aW5nIEhETUkgUExMcyBmb3IN
Cj4gU05QUy9DMTBQSFkNCj4gdG8gd29yayB3aXRoIGFsbCBtb2RlcyBzdXBwb3J0ZWQgYnkgdGhl
IGhhcmR3YXJlLg0KPiANCj4gVGhlIG9yaWdpbmFsIGFsZ29yaXRobSB1c2VzIGZsb2F0aW5nLXBv
aW50IG1hdGgsIHdoaWNoIGhhcyBiZWVuDQo+IGNvbnZlcnRlZCB0byBpbnRlZ2VycyB3aGlsZSBw
cmVzZXJ2aW5nIHByZWNpc2lvbi4gQXMgYSByZXN1bHQsDQo+IHRoZSB2YWx1ZXMgaW4gdGhlIGV4
aXN0aW5nIGNvbXB1dGFibGUgdGFibGVzIGFyZSB2ZXJ5IGNsb3NlIGJ1dCBub3QNCj4gZXhhY3Qu
IFRlc3Rpbmcgd2l0aCBERzIgYW5kIE1UTCBvbiB2YXJpb3VzIHBhbmVscyByZXZlYWxlZCBubyBp
c3N1ZXMuDQo+IA0KPiBbMV0gaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1
L2tlcm5lbC8tL2lzc3Vlcy85NzIyDQo+IFsyXSBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5v
cmcvZHJtL2k5MTUva2VybmVsLy0vaXNzdWVzLzEwNjU0DQo+IFszXSBodHRwczovL2dpdGxhYi5m
cmVlZGVza3RvcC5vcmcvZHJtL2k5MTUva2VybmVsLy0vaXNzdWVzLzEwOTU2DQo+IA0KPiBSZXYy
Og0KPiAtQ2hhbmdlIHRoZSBuYW1lIG9mIHRoZSBuZXcgZmlsZSBmb3IgSERNSSBQTEwgYWxnb3Jp
dGhtLg0KPiAtRml4IHN0eWxpbmcgaXNzdWVzIGFuZCBiaXQgcmVmYWN0b3JpbmcgZm9yIHJlYWRi
aWxpdHkuDQo+IC1GaXggaXNzdWVzIHJlcG9ydGVkIGJ5IGtlcm5lbCB0ZXN0IGJvdC4NCj4gDQo+
IFJldjM6DQo+IC1Nb2RpZnkgdGhlIG5hbWVzIG9mIGhlbHBlciBmdW5jdGlvbnMgdG8gYWxpZ24g
d2l0aCBmaWxlbmFtZS4NCj4gDQo+IFJldjQ6DQo+IC1SZWJhc2UsIGFkZGVkIEJzcGVjIHJlZmVy
ZW5jZXMsIGFuZCBhZGRyZXNzIHJldmlldyBjb21tZW50cy4NCj4gDQo+IEFua2l0IE5hdXRpeWFs
ICg1KToNCj4gwqAgZHJtL2k5MTUvZGlzcGxheTogQWRkIHN1cHBvcnQgZm9yIFNOUFMgUEhZIEhE
TUkgUExMIGFsZ29yaXRobSBmb3INCj4gREcyDQo+IMKgIGRybS9pOTE1L3NucHNfcGh5OiBVc2Ug
SERNSSBQTEwgYWxnb3JpdGhtIGZvciBERzINCj4gwqAgZHJtL2k5MTUvY3gwX3BoeV9yZWdzOiBB
ZGQgQzEwIHJlZ2lzdGVycyBiaXRzDQo+IMKgIGRybS9pOTE1L2ludGVsX3NucHNfaGRtaV9wbGw6
IENvbXB1dGUgQzEwIEhETUkgUExMcyB3aXRoIGFsZ29yaXRobQ0KPiDCoCBkcm0vaTkxNS9jeDBf
cGh5OiBVc2UgSERNSSBQTEwgYWxnb3JpdGhtIGZvciBDMTAgUEhZDQo+IA0KPiDCoGRyaXZlcnMv
Z3B1L2RybS9pOTE1L01ha2VmaWxlwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKg
wqAgMSArDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmPC
oCB8wqAgNDkgKy0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBf
cGh5LmjCoCB8wqDCoCAxIC0NCj4gwqAuLi4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gw
X3BoeV9yZWdzLmggfMKgIDI0ICsrDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9oZG1pLmPCoMKgwqDCoCB8wqAgMTIgLQ0KPiDCoC4uLi9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3NucHNfaGRtaV9wbGwuY8KgwqDCoCB8IDM2NA0KPiArKysrKysrKysrKysrKysrKysNCj4g
wqAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zbnBzX2hkbWlfcGxsLmjCoMKgwqAgfMKgIDE3
ICsNCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3NucHNfcGh5LmMgfMKg
IDM3ICstDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zbnBzX3BoeS5o
IHzCoMKgIDEgLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS94ZS9NYWtlZmlsZcKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDCoCAxICsNCj4gwqAxMCBmaWxlcyBjaGFuZ2VkLCA0
MjcgaW5zZXJ0aW9ucygrKSwgODAgZGVsZXRpb25zKC0pDQo+IMKgY3JlYXRlIG1vZGUgMTAwNjQ0
DQo+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc25wc19oZG1pX3BsbC5jDQo+
IMKgY3JlYXRlIG1vZGUgMTAwNjQ0DQo+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfc25wc19oZG1pX3BsbC5oDQo+IA0KDQo=
