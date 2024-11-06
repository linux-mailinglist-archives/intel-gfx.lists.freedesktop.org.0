Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2D349BEDCE
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 14:13:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEF4D10E6DD;
	Wed,  6 Nov 2024 13:13:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AtpRisrt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E02110E6DC;
 Wed,  6 Nov 2024 13:13:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730898819; x=1762434819;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=vx/1eaLsJIMk6h9QLj6+ANio1HZaToF7HpRdLT2ukHU=;
 b=AtpRisrt+asHos2CEZ8/LJpNE2HfkQ/aN7/PgE2YgiGOwj6zqhSTo/wv
 y48qC+7MLGF+JI94S4/MfjwzynMwFkE+je6rBob7Ze1EjCBhd+blGaqqk
 aNmGgXwNmiWuLH7NO8/nezTdY76YXB5hWMWtJHBW5LO11i6HHYSFxqtz0
 uIRSmx1xMeCZDr9wMw/b/+6DmyeH2mKC7MbRpK/vWLsWwcSPKgkNLnNV3
 fz9Ma0g7hYq7WmeETKThG2hdtiLEMMPtpG3OAuAlG7Yj6zHddyGOvNIp4
 lYlNIEDNZCjeitKuAMIQH6mcUgNK7JEOgOr00nx32h7HoRvlA49AoxBUw g==;
X-CSE-ConnectionGUID: kUZO6BOdRq27Hvqveg+uUw==
X-CSE-MsgGUID: DH/pRTRrTNu7GOZKfjjh/Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="41243220"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="41243220"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 05:13:38 -0800
X-CSE-ConnectionGUID: RPjaODdHSwCgmlz+lHK9+g==
X-CSE-MsgGUID: N88zEXf9T6i0Id7h/wWz7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,262,1725346800"; d="scan'208";a="115315183"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Nov 2024 05:10:22 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 6 Nov 2024 05:10:21 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 6 Nov 2024 05:10:21 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 6 Nov 2024 05:10:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ColVasuz4iREhHqTsHm4Y91VUVGZQP43mOuidDBT1k5+k0CcvNiQg2eH2ZTrEBqizYOkOc9M0My3Sea+Ho9KRkxN0LC6/W9NGxWUjsp43xbILcNZYnZT988cL6bR+4Mt/6jK4vbWdpHegF8TrHEamEwZFdBLnjmy/8BA74H86UwvMa+YcKjAmdvHdrqldFJusvJPv4d1U/EopQluuJn1jvGIO1TNfFMSQdyAtsN8FYdkeA5R+beKo1037m0/6m0QUiyG9+jMSmAGmPKq0H+EHx5/n3gdM9PCK4uDbiHeejPoAmkvQ+MuZ7gKw7U9S9H7nqUD6rLg+ItwiExwzkNqbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vx/1eaLsJIMk6h9QLj6+ANio1HZaToF7HpRdLT2ukHU=;
 b=M/I+3iEKXR4HPvc6Ec+UC59TzdCXyA6UmhS+1bOzLKxY+ElHVrH4AKEIkGs9pUSRJ09uiAPLkV4LUj7FwcqeS7PWTLGO6nypXULSswB/2nLgOEHfLlosEQlB8/K5CjcVruUq8bqpi+fY9qmMYGjaU6PJj/Iw834QQetJPggOM9tAUdjuU9TJkNOqGqBLHk/qJHd4WeQFpF8G6pg0HI5/cFVJF/8T3RgtHRAIn/Dlld5mbRvi7zOmpfBb+sB+E8mY+Osk3rRsfESu+o2j3XUnRFR0xXv5EPk8PSo9ujcWopiYQHshcgrikQZXwYcB4P2yGIATAs6QWT1fSNwExw64Mg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by MN0PR11MB6112.namprd11.prod.outlook.com (2603:10b6:208:3cc::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.30; Wed, 6 Nov
 2024 13:10:17 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%4]) with mapi id 15.20.8137.018; Wed, 6 Nov 2024
 13:10:17 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 14/15] drm/i915/display: pass struct pci_dev * to
 intel_display_device_probe()
Thread-Topic: [PATCH 14/15] drm/i915/display: pass struct pci_dev * to
 intel_display_device_probe()
Thread-Index: AQHbLt36jWNG+KDIRkSqcFnW/oL48bKqPLUA
Date: Wed, 6 Nov 2024 13:10:17 +0000
Message-ID: <429b4e153f2465141c481b86812feb8ae68f1dbb.camel@intel.com>
References: <cover.1730740629.git.jani.nikula@intel.com>
 <ad1b3446adc741cf94051efa5d69e7a82f6aee87.1730740629.git.jani.nikula@intel.com>
In-Reply-To: <ad1b3446adc741cf94051efa5d69e7a82f6aee87.1730740629.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|MN0PR11MB6112:EE_
x-ms-office365-filtering-correlation-id: 9b5eb820-c383-40d9-d433-08dcfe645c09
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?YWd2cHJ1WjBWc3ozelZNVThNMDNNV2dMWVlxTS9BeUhJL0JWL0RFZkN0S01J?=
 =?utf-8?B?bk1NclRXczJDZm55MUxSYngxczlNck53ZVNlWFNXODRqOWdhZVh2bDRDaGJZ?=
 =?utf-8?B?OVY4WE9MMmh3Qkp1cDNqWEtWeXo3OHhJZ1VtQ3FWVEFkTHFhWGxUV1hFSG14?=
 =?utf-8?B?ZkhIQlZaQkNuMitMUVh2TDFSMVp1WFlBSWJKd1R3T2x4R2NGa3ZZWmxZUHI4?=
 =?utf-8?B?TmZKdi9MZUFaNTBvcHNZMlhEWWtmcEQ4WGV1RXhOb09IcjNRN082NXZ2eE9S?=
 =?utf-8?B?VExPVE5FQlFnWWN5cEFPdCt3Vno5bVdpOStSajNrdmpDTjl1Tlgrc2x0d1dz?=
 =?utf-8?B?RGs2LzRlS1E5SFhJalJZKzdKOFFLd3Vzc004OVQyMHhFNTdNOFBDRGxyVmI1?=
 =?utf-8?B?Q0ZPbkd2TkUwUWxXU1BjMzV3ckw5VnVFWGtMbC9RcllZV1h2ZnIySnpraEd2?=
 =?utf-8?B?SW1RREVVbkN3UXFEanFQaWJwNm1jOFYrUlB3bEdkbmJBeFBONFJKK0hFbkp6?=
 =?utf-8?B?WXFKOXgybmxDU0NLeWMrdU4xMm9jR0VxV0RUR1grZng2QU1XYWFLS0V3clNN?=
 =?utf-8?B?aU9aRzVrNDBJekVsdGRhaElieGFIeVNkbktIaldNVnBxeTMyMmExSEkzclND?=
 =?utf-8?B?YjgrQktna1pLSmxqcFBSaEFDR3hQZExVR0M2ZDh2dHQ5WGtVQWgzWWRQTUIx?=
 =?utf-8?B?Q3RxT0gyaHUwUkV6dHFrR1lDY25CYUNYdlNVeVU0NkNqSUJ3S2Rub045cnMx?=
 =?utf-8?B?eHRSWUs3cVhEZk10YU9wbDdiSUFHNkx2TkJ2R2FqeGtVenZib2lBekl4a1Vv?=
 =?utf-8?B?UWN4eHpWSkNhM1V1N2pGNFVmZjM1SDZ1aEhERG5IajFHaGVBQ0prQnRsVE1a?=
 =?utf-8?B?MmN3NWF4aDBLTDlCd05pWDJzQ0xsd3RTb0tjVUd5VGFtcFlBckM5MVB3TEhw?=
 =?utf-8?B?VGNnR1BGVW1XQjRROGloeFFmdDdrTjZ3ZlI3N2N6WHc4V0FHbzB2OXRzc1I2?=
 =?utf-8?B?UXRPdXVDMkxrbWoyTzkxazcrTTJCejEvbFIweVEzY1NtTWFTOURVS09Ienhr?=
 =?utf-8?B?ZTltaXFxQlFYNXJ0Sk1Tek0rdVdMVncyVy9sOVMzYjdLdWpYa3pMTU1URW9D?=
 =?utf-8?B?aEZYb2hDZVBmVUtBbkVFdEJLZXR1SFFxMUV1QXlsbVArS2lPVUJHdHU5VlBi?=
 =?utf-8?B?S2hhbXpaSTNmTllLanEzdC9tVGwrSnNCZHdURW9CM1BCWk1Oc1dsTVRQSXR0?=
 =?utf-8?B?cGVKcnNsYmluOWozOUVwQUpOZk0xS2VyYkdUMVBabld0bHVyeDFMdis5OG5v?=
 =?utf-8?B?ODNITHVQQjV3S3BsSEJGVGdNQXFhNk9LK1BoQk1pOXV1anFoaC81U1lDOGd0?=
 =?utf-8?B?Tk9vR3MxQmYwZXRhMUtxVisxZHd2VVNyUHlDZGZPc1h4NXVMVk01MzRHNjdN?=
 =?utf-8?B?SS9BMlhNSXJNSi9RMkI5RDY1ZXQ4djVGQU5VbGdpRFliRTViaDBCN1ZpZEpK?=
 =?utf-8?B?VjNSblNkU1I4dHBBbzNPUUF6cXhLSHhiMG9hSW91K09lMFU2L2h3QWJrN21R?=
 =?utf-8?B?NklrbHlpaHN6SWxtOEhlRko3cFI5aE9ucWJlRE9iaFRJQTdBaFJ1eGl6enI2?=
 =?utf-8?B?TE8yMWdaNkFBM01jUHBtNTFSN0JLeWJnTXBhWEhFc2p5WlFNTWpvMHVJZSta?=
 =?utf-8?B?bTBVdFBpczBRckNsNkVFNGFyK1VuM3JhNWxiV3RKbXVTa0Q5cmxWMVUxYkhS?=
 =?utf-8?B?RjgvdEJDcW8rRW1OWHI2Z2FXb2thUSs2VzU2aCt4ZmszTkdCYTRnRkJCMDJr?=
 =?utf-8?Q?FukqVmYfeDINBAf94+4N/CtA+FqnO8+Uex2ns=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Rk4xVS8zUFFSSU90WmU0aS9EYzlHd1VTUkJDaXU2RWhkUnRoaDJUVkF2dW9F?=
 =?utf-8?B?dy85ZmNERHNsZ3B0WTJVRnA2T1RPZUdPcE1kM2lWTU1JMXI2UTFYQmhqbDM4?=
 =?utf-8?B?c2xkZ2d6dUhQRlNKYUZneUlaLzUzckxtb0N1RWlnSzZ3Vlc2Ny82WHhkazZI?=
 =?utf-8?B?SWwrdHZoSDNWcHZWSUF4b2Zib0NhdTgvRDVzcFVCWTJSOVNBWnBCcGVwNXBQ?=
 =?utf-8?B?aTB5WHZWbmx2ZWdzWU5PdWxab3gybnZKZTF3eUgzME53MTA3dFRvRDBFd29O?=
 =?utf-8?B?Wmp5YkQ0OSt5bEdiZXB5c2ZydVFtYjlQeko0eUpBQ1NOUVJpalIrc1JPa2ta?=
 =?utf-8?B?ZGFSbDJlaTJ2TmpuMktYR0FYcExOVnVvbWRlTTNiT1lkdUZmVWx3elFwb3N2?=
 =?utf-8?B?cklMSUMzMFJDdU13a0VwVDlCL1JKS0RNL25peU9LTE9LbXZzUHo3ekUrYTUy?=
 =?utf-8?B?WDBOVVBwby9QeExSWVlJelMwVWNHY1k5bDJaOE93R2x4MUZsYjNHcjM5VUFn?=
 =?utf-8?B?cUh2Sktaay9OSThENUREaU1nVUZ0SnhLbHpSMXFsb1FMSHczZFVwaGlIcUVy?=
 =?utf-8?B?bWhWdXFSUi9rRW15dUpMK2F0eHkwbVE0L21zTWFvOWp0YnJ2RHVFMTFBcVJT?=
 =?utf-8?B?dWRUWk95bFpSTkZmZ25wOWtwOEVjcVdFR3dIemNla0NvajlhZFZSWko3SzRB?=
 =?utf-8?B?bU1pdHFZbXR1MkR1WDdUcXJ4NWIrNHhoVVUvbjFCUlN6TENEd2NWVWc0QU5u?=
 =?utf-8?B?WG9UcDd0dEVIVEdzRWFFck9UNWRTV1pvNDI4NHF4WndDOFM3WHlXNmdrRnRL?=
 =?utf-8?B?b3NSNVNNN0xLZHluNlJYUjU4QktmNDlzQnJ4RHlpMWUzUW9iNTBwM3hPUS8y?=
 =?utf-8?B?b3picEJrbUlPVlA1TE1XMDl2UEo5RmcwaEttWXBOL0J0MkVBRm5GWW9kNEN3?=
 =?utf-8?B?ZE9KQVgyVlZRdU9INTRnSW5rYVd6V0FaSkpNTE5IRnlDU1pCNDRiMHNlWlRz?=
 =?utf-8?B?OWFOVFJWbEFTbFk3Qm1MSUhFVFl4TENmVnRCb29KVFEveUM3MjRhTll3Y0Ux?=
 =?utf-8?B?TkNjQkFQc0g5UlhiQnhxc3ZBNk12aGZ6dklhbjVmS3l1UUx0TGFBYXBIcUE2?=
 =?utf-8?B?SVhKTm02VFlZZXlVdG54SnVTZ2J4dG80aXBvUXcybWtzc0xvdGh6aG5KcWhD?=
 =?utf-8?B?ZWt1NEI3Z0ZyRTJQNmhLbTh6VUU4bGpQUEtlTFZZb2tLb2FVd1NTa2NDN0xi?=
 =?utf-8?B?TzF3dW5FNERLa3hjcFFuMzNaZnZxY3JpVTExV2xkZkxhcGNLaXpiL0xyU2Qx?=
 =?utf-8?B?cURIOW1kNUM4RktPRktmSEVtWFVpMlJUSTgyT3FUcWJTckFMTGRodFVCMHpW?=
 =?utf-8?B?VzV5ZkY0S0tyM09QdEdEZFVydXFlUVBMTGJJenhKNnF5a2lMeFRoYVZkZVhr?=
 =?utf-8?B?VUdyVUljeUhmVlpzZmFkR085QTBTMjFXQzJjRmVTbzFBaWlyd1YybCt5bXhr?=
 =?utf-8?B?MnlubzRET3RMdzlRVmY2WTVjand6RGdGZlJFeDFnZVplQUhpZUk5K0RKTndM?=
 =?utf-8?B?WXlOZTZrbkJOYy9CbmNINFAwcmpJNjFpTEZpdSt0aUF2MklXSDY3czM2Zmxj?=
 =?utf-8?B?N1lRbVd5dXkvREU1SlFPc2p6eXF6eVg0UzhuVUdNb1BnYnN5YWxURHFtZ0hq?=
 =?utf-8?B?M2NNODNKKytvUmkxa1Q5TmtCcXR2Vzh3V2VSVDA4ay9Da2tldDJCZmdCYnUz?=
 =?utf-8?B?SUpQYmVxTDJqS3BSMTdEV0ZndHc1b1BnL2o2MUo4TGVHVEdzcGQrS3FyTm5y?=
 =?utf-8?B?UTBDQk1JU0NKcjlROVhRcEM1eE9PU0hKVTVTbXJxQXJiTmFKeGEzNmpyY2px?=
 =?utf-8?B?QWQxMmg2VE8rMzY2aityZ1FIT0RmYVF6RDhZS1FUMlY3Y0lWRjEySTVvcm5k?=
 =?utf-8?B?aGV2QW1halpXWUprcWR4RlBzT2NkdUpWazlEMFNQUVNxM2VITGh2Y1pzYnpK?=
 =?utf-8?B?NGsvK3d0ZFFQNElHeWhsei96cWFVQW02VityVSt0ZFdlNTNkWXNna2lDU2xR?=
 =?utf-8?B?b0oxQk1yREFNdC9iYlBubC9LSHBWOC9UUEhpQlN2QitHcXVnc210YWoyYnFk?=
 =?utf-8?B?NTVWdWlmVGNUNTk3V3hsZ0RYN0lwMWllNm5ORWtXSlJseEs5bUt6K3FZQi9Y?=
 =?utf-8?Q?kjXn3+ogg5n6J+zHo/gLZk4=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <0F669903EFC9EB44B955DB719EEBC22C@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b5eb820-c383-40d9-d433-08dcfe645c09
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Nov 2024 13:10:17.3572 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZzxsyQlOMymAK81SocbTClK+1MgUsJMFt8CR1UtngNo++S8udgB6Cxpxtn+3BoQG3PUdbO+kCfSBM/LsbMU4jTNQBSkodtTb6Xsll2c2zWA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6112
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

T24gTW9uLCAyMDI0LTExLTA0IGF0IDE5OjE5ICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
Q29udmVydCBpbnRlbF9kaXNwbGF5X2RldmljZV9wcm9iZSgpIHRvIGFjY2VwdCBzdHJ1Y3QgcGNp
X2RldiAqIGluc3RlYWQNCj4gb2Ygc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKi4gUmV0dXJuIHN0
cnVjdCBpbnRlbF9kaXNwbGF5ICogaW4NCj4gcHJlcGFyYXRpb24gb2YgYWxsb2NhdGluZyB0aGUg
bWVtb3J5IG9mIGl0IGxhdGVyLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGph
bmkubmlrdWxhQGludGVsLmNvbT4NCj4gLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5jIHwgMTAgKysrKysrLS0tLQ0KPiDCoGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZXZpY2UuaCB8wqAgNCArKy0tDQo+
IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcml2ZXIuY8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgfMKgIDIgKy0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVz
dHMvbW9ja19nZW1fZGV2aWNlLmPCoMKgwqAgfMKgIDIgKy0NCj4gwqBkcml2ZXJzL2dwdS9kcm0v
eGUvZGlzcGxheS94ZV9kaXNwbGF5LmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDUgKysr
LS0NCj4gwqA1IGZpbGVzIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygt
KQ0KPiANCg0KUmV2aWV3ZWQtYnk6IFZpbm9kIEdvdmluZGFwaWxsYWkgPHZpbm9kLmdvdmluZGFw
aWxsYWlAaW50ZWwuY29tPg0KDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmMNCj4gaW5kZXggYWFiZjZlY2U0MGM0Li44YmEx
YjQ2NTJjYTkgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheV9kZXZpY2UuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmMNCj4gQEAgLTE2LDYgKzE2LDcgQEANCj4gwqAjaW5jbHVk
ZSAiaW50ZWxfZGlzcGxheV9wYXJhbXMuaCINCj4gwqAjaW5jbHVkZSAiaW50ZWxfZGlzcGxheV9w
b3dlci5oIg0KPiDCoCNpbmNsdWRlICJpbnRlbF9kaXNwbGF5X3JlZ19kZWZzLmgiDQo+ICsjaW5j
bHVkZSAiaW50ZWxfZGlzcGxheV90eXBlcy5oIg0KPiDCoCNpbmNsdWRlICJpbnRlbF9mYmMuaCIN
Cj4gwqAjaW5jbHVkZSAiaW50ZWxfc3RlcC5oIg0KPiDCoA0KPiBAQCAtMTU2OSwxMCArMTU3MCw5
IEBAIHN0YXRpYyB2b2lkIGRpc3BsYXlfcGxhdGZvcm1zX29yKHN0cnVjdCBpbnRlbF9kaXNwbGF5
X3BsYXRmb3JtcyAqZHN0LA0KPiDCoMKgwqDCoMKgwqDCoMKgYml0bWFwX29yKGRzdC0+Yml0bWFw
LCBkc3QtPmJpdG1hcCwgc3JjLT5iaXRtYXAsIGRpc3BsYXlfcGxhdGZvcm1zX251bV9iaXRzKCkp
Ow0KPiDCoH0NCj4gwqANCj4gLXZvaWQgaW50ZWxfZGlzcGxheV9kZXZpY2VfcHJvYmUoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpDQo+ICtzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqaW50ZWxf
ZGlzcGxheV9kZXZpY2VfcHJvYmUoc3RydWN0IHBjaV9kZXYgKnBkZXYpDQo+IMKgew0KPiAtwqDC
oMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9ICZpOTE1LT5kaXNwbGF5
Ow0KPiAtwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgcGNpX2RldiAqcGRldiA9IHRvX3BjaV9kZXYoaTkx
NS0+ZHJtLmRldik7DQo+ICvCoMKgwqDCoMKgwqDCoHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNw
bGF5ID0gdG9faW50ZWxfZGlzcGxheShwZGV2KTsNCj4gwqDCoMKgwqDCoMKgwqDCoGNvbnN0IHN0
cnVjdCBpbnRlbF9kaXNwbGF5X2RldmljZV9pbmZvICppbmZvOw0KPiDCoMKgwqDCoMKgwqDCoMKg
c3RydWN0IGludGVsX2Rpc3BsYXlfaXBfdmVyIGlwX3ZlciA9IHt9Ow0KPiDCoMKgwqDCoMKgwqDC
oMKgY29uc3Qgc3RydWN0IHBsYXRmb3JtX2Rlc2MgKmRlc2M7DQo+IEBAIC0xNjQ5LDEwICsxNjQ5
LDEyIEBAIHZvaWQgaW50ZWxfZGlzcGxheV9kZXZpY2VfcHJvYmUoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmk5MTUpDQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIERJU1BMQVlf
UlVOVElNRV9JTkZPKGRpc3BsYXkpLT5pcC5yZWwsDQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHN0ZXAgIT0gU1RFUF9OT05FID8gaW50ZWxfc3RlcF9uYW1lKHN0ZXApIDogIk4v
QSIpOw0KPiDCoA0KPiAtwqDCoMKgwqDCoMKgwqByZXR1cm47DQo+ICvCoMKgwqDCoMKgwqDCoHJl
dHVybiBkaXNwbGF5Ow0KPiDCoA0KPiDCoG5vX2Rpc3BsYXk6DQo+IMKgwqDCoMKgwqDCoMKgwqBE
SVNQTEFZX0lORk8oZGlzcGxheSkgPSAmbm9fZGlzcGxheTsNCj4gKw0KPiArwqDCoMKgwqDCoMKg
wqByZXR1cm4gZGlzcGxheTsNCj4gwqB9DQo+IMKgDQo+IMKgdm9pZCBpbnRlbF9kaXNwbGF5X2Rl
dmljZV9yZW1vdmUoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpDQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmgNCj4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmgNCj4g
aW5kZXggMDFlM2NjMGZkZTRiLi5lMTM5ODY4OWNkYTUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZXZpY2UuaA0KPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmgNCj4gQEAgLTEy
LDkgKzEyLDkgQEANCj4gwqAjaW5jbHVkZSAiaW50ZWxfZGlzcGxheV9jb252ZXJzaW9uLmgiDQo+
IMKgI2luY2x1ZGUgImludGVsX2Rpc3BsYXlfbGltaXRzLmgiDQo+IMKgDQo+IC1zdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZTsNCj4gwqBzdHJ1Y3QgZHJtX3ByaW50ZXI7DQo+IMKgc3RydWN0IGludGVs
X2Rpc3BsYXk7DQo+ICtzdHJ1Y3QgcGNpX2RldjsNCj4gwqANCj4gwqAvKg0KPiDCoCAqIERpc3Bs
YXkgcGxhdGZvcm1zIGFuZCBzdWJwbGF0Zm9ybXMuIEtlZXAgcGxhdGZvcm1zIGluIGRpc3BsYXkg
dmVyc2lvbiBiYXNlZA0KPiBAQCAtMjg4LDcgKzI4OCw3IEBAIHN0cnVjdCBpbnRlbF9kaXNwbGF5
X2RldmljZV9pbmZvIHsNCj4gwqB9Ow0KPiDCoA0KPiDCoGJvb2wgaW50ZWxfZGlzcGxheV9kZXZp
Y2VfZW5hYmxlZChzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSk7DQo+IC12b2lkIGludGVs
X2Rpc3BsYXlfZGV2aWNlX3Byb2JlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KTsNCj4g
K3N0cnVjdCBpbnRlbF9kaXNwbGF5ICppbnRlbF9kaXNwbGF5X2RldmljZV9wcm9iZShzdHJ1Y3Qg
cGNpX2RldiAqcGRldik7DQo+IMKgdm9pZCBpbnRlbF9kaXNwbGF5X2RldmljZV9yZW1vdmUoc3Ry
dWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpOw0KPiDCoHZvaWQgaW50ZWxfZGlzcGxheV9kZXZp
Y2VfaW5mb19ydW50aW1lX2luaXQoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpOw0KPiDC
oA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcml2ZXIuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJpdmVyLmMNCj4gaW5kZXggNTk2YWFmOTQwZDBjLi4z
MTBjMGEyZTllMjYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJp
dmVyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcml2ZXIuYw0KPiBAQCAt
NzMyLDcgKzczMiw3IEBAIGk5MTVfZHJpdmVyX2NyZWF0ZShzdHJ1Y3QgcGNpX2RldiAqcGRldiwg
Y29uc3Qgc3RydWN0IHBjaV9kZXZpY2VfaWQgKmVudCkNCj4gwqDCoMKgwqDCoMKgwqDCoC8qIFNl
dCB1cCBkZXZpY2UgaW5mbyBhbmQgaW5pdGlhbCBydW50aW1lIGluZm8uICovDQo+IMKgwqDCoMKg
wqDCoMKgwqBpbnRlbF9kZXZpY2VfaW5mb19kcml2ZXJfY3JlYXRlKGk5MTUsIHBkZXYtPmRldmlj
ZSwgbWF0Y2hfaW5mbyk7DQo+IMKgDQo+IC3CoMKgwqDCoMKgwqDCoGludGVsX2Rpc3BsYXlfZGV2
aWNlX3Byb2JlKGk5MTUpOw0KPiArwqDCoMKgwqDCoMKgwqBpbnRlbF9kaXNwbGF5X2RldmljZV9w
cm9iZShwZGV2KTsNCj4gwqANCj4gwqDCoMKgwqDCoMKgwqDCoHJldHVybiBpOTE1Ow0KPiDCoH0N
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9tb2NrX2dlbV9k
ZXZpY2UuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9tb2NrX2dlbV9kZXZp
Y2UuYw0KPiBpbmRleCBhZTU3ZWIwM2RmY2EuLmE3N2U1YjI2NTQyYyAxMDA2NDQNCj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL21vY2tfZ2VtX2RldmljZS5jDQo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9tb2NrX2dlbV9kZXZpY2UuYw0KPiBAQCAt
MTgwLDcgKzE4MCw3IEBAIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICptb2NrX2dlbV9kZXZpY2Uo
dm9pZCkNCj4gwqDCoMKgwqDCoMKgwqDCoC8qIFNldCB1cCBkZXZpY2UgaW5mbyBhbmQgaW5pdGlh
bCBydW50aW1lIGluZm8uICovDQo+IMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9kZXZpY2VfaW5mb19k
cml2ZXJfY3JlYXRlKGk5MTUsIHBkZXYtPmRldmljZSwgJm1vY2tfaW5mbyk7DQo+IMKgDQo+IC3C
oMKgwqDCoMKgwqDCoGludGVsX2Rpc3BsYXlfZGV2aWNlX3Byb2JlKGk5MTUpOw0KPiArwqDCoMKg
wqDCoMKgwqBpbnRlbF9kaXNwbGF5X2RldmljZV9wcm9iZShwZGV2KTsNCj4gwqANCj4gwqDCoMKg
wqDCoMKgwqDCoGRldl9wbV9kb21haW5fc2V0KCZwZGV2LT5kZXYsICZwbV9kb21haW4pOw0KPiDC
oMKgwqDCoMKgwqDCoMKgcG1fcnVudGltZV9lbmFibGUoJnBkZXYtPmRldik7DQo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0veGUvZGlzcGxheS94ZV9kaXNwbGF5LmMgYi9kcml2ZXJzL2dw
dS9kcm0veGUvZGlzcGxheS94ZV9kaXNwbGF5LmMNCj4gaW5kZXggOWI4YWNmMjA3NGUwLi42MGZm
NDg2MDRlM2IgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS94ZS9kaXNwbGF5L3hlX2Rp
c3BsYXkuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0veGUvZGlzcGxheS94ZV9kaXNwbGF5LmMN
Cj4gQEAgLTUwMiwxMyArNTAyLDE0IEBAIHN0YXRpYyB2b2lkIGRpc3BsYXlfZGV2aWNlX3JlbW92
ZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICphcmcpDQo+IMKgDQo+IMKgaW50IHhlX2Rp
c3BsYXlfcHJvYmUoc3RydWN0IHhlX2RldmljZSAqeGUpDQo+IMKgew0KPiAtwqDCoMKgwqDCoMKg
wqBzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9ICZ4ZS0+ZGlzcGxheTsNCj4gK8KgwqDC
oMKgwqDCoMKgc3RydWN0IHBjaV9kZXYgKnBkZXYgPSB0b19wY2lfZGV2KHhlLT5kcm0uZGV2KTsN
Cj4gK8KgwqDCoMKgwqDCoMKgc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXk7DQo+IMKgwqDC
oMKgwqDCoMKgwqBpbnQgZXJyOw0KPiDCoA0KPiDCoMKgwqDCoMKgwqDCoMKgaWYgKCF4ZS0+aW5m
by5wcm9iZV9kaXNwbGF5KQ0KPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGdvdG8g
bm9fZGlzcGxheTsNCj4gwqANCj4gLcKgwqDCoMKgwqDCoMKgaW50ZWxfZGlzcGxheV9kZXZpY2Vf
cHJvYmUoeGUpOw0KPiArwqDCoMKgwqDCoMKgwqBkaXNwbGF5ID0gaW50ZWxfZGlzcGxheV9kZXZp
Y2VfcHJvYmUocGRldik7DQo+IMKgDQo+IMKgwqDCoMKgwqDCoMKgwqBlcnIgPSBkcm1tX2FkZF9h
Y3Rpb25fb3JfcmVzZXQoJnhlLT5kcm0sIGRpc3BsYXlfZGV2aWNlX3JlbW92ZSwgZGlzcGxheSk7
DQo+IMKgwqDCoMKgwqDCoMKgwqBpZiAoZXJyKQ0KDQo=
