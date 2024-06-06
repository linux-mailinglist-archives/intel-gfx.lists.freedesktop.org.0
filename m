Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B27A58FF0CF
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 17:37:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35ED210E9A2;
	Thu,  6 Jun 2024 15:37:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RkULmS2f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A709A10E9A6
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 15:37:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717688272; x=1749224272;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=ZMPsi092f1gCIxDcD/yaFacjWKyTdY95iwzutwd45Ok=;
 b=RkULmS2fdiq5YyOzYXZTetlsb3gHPrzSsqfH73FzuAMd+SCLeJz/u3X/
 IAbyZv32wTrIFHWcvHJsSURXFc2djWvyfseuRbAuPqCT35mNZsLQlN9HS
 RfgyiQHHAvL/rl8KFqHhCJPjSuihqTl4b40+9vIPh8aAdnXI5bMcj2Arg
 KZRIIpYAMMaIgVnTJXxS0/Jpu33ZV+liWwd0+wI7yIPsOQ9C0qsnGeKU0
 ZR5zjRmuZvImb1xsTqiLjEOZkK7V6F3Drs0/VBMkcRtIBBkM0yLhMza7D
 upxta1XVmmytPl47gWa5ihyzm7lGBlOOZHBb3eEs9Q3GopIN2IUobKKTb Q==;
X-CSE-ConnectionGUID: gJgeBzVUQo2lgM2gpl66Kg==
X-CSE-MsgGUID: gq0X1OIsQiCNF2KNZN3vBQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14249705"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14249705"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 08:37:40 -0700
X-CSE-ConnectionGUID: yaMjloKRRimi1jeQxMvcbQ==
X-CSE-MsgGUID: uM6ilJ9IQ3CbYWGuuRA4Pw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="38076231"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 08:37:39 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 08:37:38 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 08:37:38 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 08:37:38 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 08:37:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mRTXK7JqYckkOorImYhWkOkQw4ZZZN1aecB+etiIxh8PsW3Eyr0tFJcbuQIlkUV1OBuec8eHP2ql/vsnPH0mKA+OFlfNQqtzi5mvZ4t6uGb9J6flQk61buZdiMF3aEPLQc4aHgnxt4ZabePe8f92aF0z2sd2aFz8MOx3nf89sBek3RdELRjoqD35CGlqV6ecPs3LNPeAebliRBYhz2d7bqlZlgu284P6+2mQqkj+ZfZJsGQzYRX4SbIYM6EnXG1B7wCQmWxyPJAiQWKFOFOLNfupMw2A85n+N4LYZpB0L+uynY01UTBZbu9DVLi0APzr/83yNp90u3r6QX9qBuyA9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZMPsi092f1gCIxDcD/yaFacjWKyTdY95iwzutwd45Ok=;
 b=GBUzpKz2ZpZCixd6ycb6aBBtIlLsE3Imxd7YKlGoze+N6dmCzNQdj5IDk70wn/AV5FXFxOoq7N5VOuqR4WecWAGlLaMXmlRcbv2f8fqDxvelDgJBnBf+vJJrxl78ACUiyI6FHh+ycU76/DI2Zn+SWPLGHzFllxqCSQ5JDMaMVbLi0q3Zu+eGfsnwOoeoEMRl+yEjdWVa0Cpjth00XxUqd2t/FSxfNNffDJqYHlPrJNNFkInEkP0wyO9pochCzuszV/LMeH5S2cJ8eCWnPw8uo/oxcxqMck6YxeUuH+7nh+0/nMn2rxyBY5DZGIRrRY0jNfLENFVUc1Bz7en3HgxDRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 BL1PR11MB5320.namprd11.prod.outlook.com (2603:10b6:208:316::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.33; Thu, 6 Jun
 2024 15:37:35 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.7633.021; Thu, 6 Jun 2024
 15:37:35 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: Re: [PATCH v6 10/26] drm/i915/psr: Print Panel Replay status instead
 of frame lock status
Thread-Topic: [PATCH v6 10/26] drm/i915/psr: Print Panel Replay status instead
 of frame lock status
Thread-Index: AQHatzLdk0u8esr/NUmTtgOTZLsbvrG6zzMAgAARSwA=
Date: Thu, 6 Jun 2024 15:37:35 +0000
Message-ID: <9ee0016b8bc858f011066d22703bcbc06d054515.camel@intel.com>
References: <20240605102553.187309-1-jouni.hogander@intel.com>
 <20240605102553.187309-11-jouni.hogander@intel.com>
 <PH7PR11MB598181E00446463602261261F9FA2@PH7PR11MB5981.namprd11.prod.outlook.com>
In-Reply-To: <PH7PR11MB598181E00446463602261261F9FA2@PH7PR11MB5981.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|BL1PR11MB5320:EE_
x-ms-office365-filtering-correlation-id: 740d4285-2620-41a4-ad67-08dc863e96c2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|1800799015|376005|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?bm51K0FXYkEyT2l2anFkLzBsN3V4empQbjlRNWlUc2dreC84MzNhaldzN3Q1?=
 =?utf-8?B?bmp5UkxGYkF4NFJBZG1Xa1RVbVgveHJuTCsxOS9QcThZaWJaNUszSjVpbXox?=
 =?utf-8?B?Y1NTRklpUkRUZG9EcDYzWnJyVUxuMTRUVXVTWEl4TzhnUU5NeXZhNm5xNnd4?=
 =?utf-8?B?YjY1cDN0UGJENk85ZExzU2kwdUU3N05FUHIrdGdUaVE2dVZMN3JzU2VEV0dD?=
 =?utf-8?B?WloxdS9kQVM5TllKM3ZoQmkvTHZEUDFZU1hpK05yOUFDaGFjbGJFWldadkYw?=
 =?utf-8?B?SkpSNm91aDFaSlgwU3NHZjFoNFoxaFo0b2N0VmJ3OGV0VlNMQk9iQWppOHo4?=
 =?utf-8?B?Sk9GRnF1clZyb01ya2FBQmpsTmQzSFZJQmpHamxraHZ5TnJCL05pVkwyZFNP?=
 =?utf-8?B?c3hlNmdHL0pLZ1k5MHZlczk2SlVxTEU5ZkYycWlZZUZURmpHQmtGK1Zuanh0?=
 =?utf-8?B?TVo4S0N2MFVxaCs0WG1VVXFOQWh2TU1DN3pNTXNIc1BFK2w3RGtiSy9kMVA1?=
 =?utf-8?B?blBuZUgrY3VxazBjR1Q4ejJ4cHI2TWdqUEgrUVF2eUZWelBkZFc0VnBoTGVQ?=
 =?utf-8?B?WXI5djVqaHE0clhacitWU0REZWhkbm9jYityQ1AwbGUxNE1yOExwSTkwaVR4?=
 =?utf-8?B?eUNnK2JvelErVEw0Q3hEVFk0MTFxbDh1WTJzWUNoK2huUjJoMldJakF5TzRY?=
 =?utf-8?B?ZGdpQ3JBYmdqSVNUcU1qbEtyZElCcVdSdm45V3ZqdW5FN0FwazZVcTczbmlO?=
 =?utf-8?B?SGs3ZWxmWS9DaXFaRzhMK3YyNnpGeExoWmJaOWROWFU2QmI3N0tZOXJDdEZ5?=
 =?utf-8?B?YXRVd1ZtS1RXMzBmSzV1Ym11S25xQ05RSkJnS3drTm4yNllMaHpLU3o3dGc3?=
 =?utf-8?B?NVBrVERUS01vYlZmTUN0dmFEeUI1M0hvSElyTkVLWGZmZ2VISmJMSFZpdjlx?=
 =?utf-8?B?NjJDR2NYQjIzTDJRT1U0a3ZQQzBHQzRubGo3SjFuaGZWUDNFQ2NsNisrajNQ?=
 =?utf-8?B?YktRMDROMGhqVDE4YnRnZEJzM0xseDUzMWROWEpzTUxQUm9kTkFQWEd1djZr?=
 =?utf-8?B?dGlMVFhlejJHU2ZWZ09KUE9aZzVGSzkxOUlpbjBZMy8xdkpDZGJkZERRNkhQ?=
 =?utf-8?B?Z3ZMbkR2Zm43clVlWjNET2NEc1NYUE5BT3UzL0srVlNxeUVOMXlEc25xSUdC?=
 =?utf-8?B?VFYzc0FUdE96bjJiVEFUT0hya25VSG9rRWwyc2p2WHV5c2IxRmhOTE9DOUZP?=
 =?utf-8?B?ZUV6M3hMUVl4VVM2d0RsWEY4UmhLVm1iUGlWNWNiV1FQeEEwcnpmSHVtdUFX?=
 =?utf-8?B?YTVDWmVNUllkRndiS0JCR0tWQklXV1ZORXpEUTJMRHRxY3lIcTk5V0lCSkpM?=
 =?utf-8?B?dDZlM2JkcDE2Si9IdnN1b3pDc2wwWWo3MnRSQWdMSDlhRitxWW5wYW1rbTIy?=
 =?utf-8?B?WFdiZ2lPOEhyNWhVYndQbld6RjJ3bTU1cVg5NVRKSDlyYXU5Zmo1NDU5VU9C?=
 =?utf-8?B?TitUbHlwUUd1WUxyOEUrTis0MTQ3cTlmeEdmYWduM0E3Q0NkUHRTeVE4c05x?=
 =?utf-8?B?Z0s3YzdnUkJYSU1aN3Z4OWFzb3dqZGJQY203alUvbHpYN1YyRHN5RXRreCsx?=
 =?utf-8?B?OElncVVWVkRJMTZuWVlQbjVVMjN0SE5kcjFldEhtdWpScGlwYjkza0RuTzZF?=
 =?utf-8?B?YVU4QkgvRmt2UEZpaE9BVXYrZUxJMkhlcFNOVVpYUDJmMjZhTmxiRUh1RzNU?=
 =?utf-8?B?R3Vna3BseHZhOEFNd3FvZUk1dDVDdU9nQnpEeFpCQ0plMHpST3A1ai9TNmlR?=
 =?utf-8?Q?SePTP+1bAEsAXV27xWdzwOUmBAET6OdCGutg0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?b0VkSnpyVk1rL2pPMXNFbUpHYUpnN3AzL2JhN1RxajFyUTIyeTkwZWhSVXkx?=
 =?utf-8?B?ZVhlYUpTUXlqUm1YOWtPaExpU0g5bUFkMEZrUGY2ZFZuYmJmNDd0ekJ1ZFFu?=
 =?utf-8?B?YkVlMnRTeHRpVFY1WC85U1BMYkYwZ2F2anVvUkh0MTRkcmRia0JwaDJUL2pR?=
 =?utf-8?B?Y2ttNk9SaktCc2d2OXBkdmpiSDlER1c0RXV3M0lBRjVEbGR0TkxKeTlvVGo1?=
 =?utf-8?B?TDJhY3orbm5WYUNicnRSNVVxVjd5V0RqWEVQeG5sbkZiK2JuZStNT3RWWkJp?=
 =?utf-8?B?VnE1cThldnpST1dnN2xWUlNsUGtlUFRoY3pEVkFKZmJ4YjhhdTlnSzdoZzF5?=
 =?utf-8?B?OHhnbEE2SkxMV1RabWFjUEJMdnB2SnkrbEF1QnlCaGx6Ungybit6a3VuN3RG?=
 =?utf-8?B?Nk9VQWZlZlZWNVMvcHBkV215Q0hOMzZlbnpNcWcyZnBkL0VDWXF2U1V5dlcz?=
 =?utf-8?B?LzA5YXE4UVQ3aVdxWFhaaVRtUW5SUU9EZmduSTE4T1JzNzVlZmtScWxtV0tM?=
 =?utf-8?B?Y3czQkxVVzU3bkN3UXVQSW0yU2JXanF2b2psakg0VVRVM2E2M0R5YTAvVmRK?=
 =?utf-8?B?WmVYaDBsN3poZkFnMUlUbjVhVm1wVTRnU1RWQmRmbDVWZWRaOHc4VUlGMFIv?=
 =?utf-8?B?MGRwMHVLb0dwNEo1WXBEa1BNUjZuQVBHV25yWjVSU2JwZDFYUnFZMzdpMXlp?=
 =?utf-8?B?WUZpejBWSDhUM2x6NEh1OFlGUHR6UEhjdE43VDlIdTRPdCtOVWx1Z2c3blR1?=
 =?utf-8?B?Y0ROOGNDSnVvYUVHdjI0azZLVFZmNXVJaHdFNXhLT2ZwZ0greU5MOEUzMFN2?=
 =?utf-8?B?YVRwSU9ZdDRwRCsvZzJKNWk4ZTNFMDZPVU8rZWpNMTI5UW90M0V4QlpQenR5?=
 =?utf-8?B?TkdsZFdrQ2E3RFg1SkJlWERUN1JmeU5VOG1uK3RUbXVaMjlwRnR0UUY5UjNQ?=
 =?utf-8?B?SklybzlzVjZ3ZThwS0NudGVadHp3NCtUMUh6WFJOYmZJbjFEWXM4QnBYR3VV?=
 =?utf-8?B?c0FpRHVJbWErVzQ5WWpva1Arc3lEZGlrOFk5dWdtM3VSYlF6L2M1Y1RCN3RL?=
 =?utf-8?B?V05BODM0YTEzbHlaQU9jUkM2a09VYngyYnZGK1A1cm1LVU9FS3lTSlo5Z0hi?=
 =?utf-8?B?RFJPem10cXJpWmZEQmo2TEVzS0VyWHhtMFRiUjN0dG1WcGZIZVdpU1k3dkpt?=
 =?utf-8?B?dnlsOC9YSFJtOG1lRHl1bUZlZ1ZaWlFIamtPUkFWMFNLR2NIYlB3LzRtY0FO?=
 =?utf-8?B?NlhLRmh0Q2E2WEJtMXRzcXZ2QlN1aDc5cHR1R2hEaWcyMWZZWTJhNkJ4eXh1?=
 =?utf-8?B?aG1DV3I4QmlHMXdNS1Y2M0VTbXdIaFFHb0M4U2VIMmFqNUhzRFhoNDgxb1Ra?=
 =?utf-8?B?M3RseU1EaFh2bStxNEN2bU1aZ0F3eEhCMzBaSmw5TmJ0UEpSVjJwcjdvbm43?=
 =?utf-8?B?R2c5SytNTHQwT283WFdLaXpoZFNVcFRFWS82a0Jja09LOFdGM2ZOdTJiUWsr?=
 =?utf-8?B?TzNwNWFPSDVXdk12YVVjYVU2R3RsTFZCY3NNUnUzemhKd3Q3ZHJuWlJibnRz?=
 =?utf-8?B?aWZMTG1WeFEvNklnTW0xVFJtdGVuQW1heGRqSjh0aEwvVkU4N093S0RBa0E1?=
 =?utf-8?B?Mkl3dWNKUnA0Z0hrZ09MTFAxN05Cc2F5bklsMnVrUUFLeXdpeS9sUHBNL2dw?=
 =?utf-8?B?UTVjUzE1WG9BVVdqck9IOG5lVjJuSzU0Z2FsQ3B3OC9xdGlXL3BYY01BZDAr?=
 =?utf-8?B?cC9tc1VvandlcVlIcW05dDU0czcwcWNJN3dTZTM0SFJWR1FtbmRmcTE3em9R?=
 =?utf-8?B?Z0FyamYrTXp3Z2tYWUZLRDdod0J3cjBjTmREWkloMjVqU3VCek1wVGpxUWVC?=
 =?utf-8?B?TUJuNWNSb1hHZTM2SUsrMWxHakw2aHRkeVBKOWxuRmNJZmd2RHF0UkkyQXk4?=
 =?utf-8?B?blF6THk4TlR0U0JRaVpUb3J5elg0NGFPNFZvemYrZVZrcy9mZ3pZR2J2OXZ6?=
 =?utf-8?B?NjR1MlBKa1NXUHl6cmF5cG50VU1HckpNU1lITUtXMmZkUVVsYmE5MzZ3NG1G?=
 =?utf-8?B?Z3J2MEgydnNwaTB0VzNyN3pIcFJFb2lYcUZtOEsydmZFcmsvazd6MUFIMUIy?=
 =?utf-8?B?ZUozZm5BaFRoMHhZdmVvbHhPOFBPUWFPcEFBcCs3MkZSNUM2K0JscGg5VVR2?=
 =?utf-8?B?ZlE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <D3027B5B4ED318409CD9402B7C7D8891@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 740d4285-2620-41a4-ad67-08dc863e96c2
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2024 15:37:35.5130 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /v6AgAE2VXBXLypfcyx43W9wUW/u19pRan6vraP84wmUpBEeMHcI3kUrQp/BPCdLcJbaSQ5DeBn+E9091yzOI8MnrFONEcyiDwxTouRG2iM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5320
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

T24gVGh1LCAyMDI0LTA2LTA2IGF0IDE0OjM1ICswMDAwLCBNYW5uYSwgQW5pbWVzaCB3cm90ZToK
PiAKPiAKPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gPiBGcm9tOiBIb2dhbmRlciwg
Sm91bmkgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4KPiA+IFNlbnQ6IFdlZG5lc2RheSwgSnVu
ZSA1LCAyMDI0IDM6NTYgUE0KPiA+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cj4gPiBDYzogTWFubmEsIEFuaW1lc2ggPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPjsgS2Fob2xh
LCBNaWthCj4gPiA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPjsgSG9nYW5kZXIsIEpvdW5pIDxqb3Vu
aS5ob2dhbmRlckBpbnRlbC5jb20+Cj4gPiBTdWJqZWN0OiBbUEFUQ0ggdjYgMTAvMjZdIGRybS9p
OTE1L3BzcjogUHJpbnQgUGFuZWwgUmVwbGF5IHN0YXR1cwo+ID4gaW5zdGVhZCBvZgo+ID4gZnJh
bWUgbG9jayBzdGF0dXMKPiA+IAo+ID4gQ3VycmVudGx5IFBhbmVsIFJlcGxheSBzdGF0dXMgcHJp
bnRvdXQgaXMgcHJpbnRpbmcgZnJhbWUgbG9jawo+ID4gc3RhdHVzLiBJdAo+ID4gc2hvdWxkIHBy
aW50IFBhbmVsIFJlcGxheSBzdGF0dXMgaW5zdGVhZC4gUGFuZWwgUmVwbGF5IHN0YXR1cwo+ID4g
cmVnaXN0ZXIKPiA+IGZpZWxkIGZvbGxvd3MgUFNSIHN0YXR1cyByZWdpc3RlciBmaWVsZC4gVXNl
IGV4aXN0aW5nIFBTUiBjb2RlIGZvcgo+ID4gdGhhdC4KPiA+IAo+ID4gRml4ZXM6IGVmNzVjMjVl
OGZlZCAoImRybS9pOTE1L3BhbmVscmVwbGF5OiBEZWJ1Z2ZzIHN1cHBvcnQgZm9yCj4gPiBwYW5l
bAo+ID4gcmVwbGF5IikKPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmku
aG9nYW5kZXJAaW50ZWwuY29tPgo+ID4gLS0tCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHNyLmMgfCAyMiArKysrKy0tLS0tLS0tLS0tLS0tLQo+ID4gLS0KPiA+IMKg
MSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMTcgZGVsZXRpb25zKC0pCj4gPiAKPiA+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCj4g
PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKPiA+IGluZGV4IDdi
ZGFlMGQwZWE0NS4uMzUzMGU1ZjQ0MDk2IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuYwo+ID4gQEAgLTM1NzksMTYgKzM1NzksOSBAQCBzdGF0aWMgaW50
IGk5MTVfcHNyX3Npbmtfc3RhdHVzX3Nob3coc3RydWN0Cj4gPiBzZXFfZmlsZSAqbSwgdm9pZCAq
ZGF0YSkKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgInJlc2VydmVkIiwKPiA+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgInNpbmsgaW50ZXJuYWwgZXJyb3IiLAo+
ID4gwqDCoMKgwqDCoMKgwqDCoH07Cj4gPiAtwqDCoMKgwqDCoMKgwqBzdGF0aWMgY29uc3QgY2hh
ciAqIGNvbnN0IHBhbmVsX3JlcGxheV9zdGF0dXNbXSA9IHsKPiA+IC3CoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAiU2luayBkZXZpY2UgZnJhbWUgaXMgbG9ja2VkIHRvIHRoZSBTb3VyY2Ug
ZGV2aWNlIiwKPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAiU2luayBkZXZpY2Ug
aXMgY29hc3RpbmcsIHVzaW5nIHRoZSBWVG90YWwgdGFyZ2V0IiwKPiA+IC3CoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAiU2luayBkZXZpY2UgaXMgZ292ZXJuaW5nIHRoZSBmcmFtZSByYXRl
IChmcmFtZQo+ID4gcmF0ZSB1bmxvY2sgaXMKPiA+IGdyYW50ZWQpIiwKPiA+IC3CoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAiU2luayBkZXZpY2UgaW4gdGhlIHByb2Nlc3Mgb2YgcmUtbG9j
a2luZyB3aXRoIHRoZQo+ID4gU291cmNlCj4gPiBkZXZpY2UiLAo+ID4gLcKgwqDCoMKgwqDCoMKg
fTsKPiA+IMKgwqDCoMKgwqDCoMKgwqBjb25zdCBjaGFyICpzdHI7Cj4gPiDCoMKgwqDCoMKgwqDC
oMKgaW50IHJldDsKPiA+IMKgwqDCoMKgwqDCoMKgwqB1OCBzdGF0dXMsIGVycm9yX3N0YXR1czsK
PiA+IC3CoMKgwqDCoMKgwqDCoHUzMiBpZHg7Cj4gPiAKPiA+IMKgwqDCoMKgwqDCoMKgwqBpZiAo
IShDQU5fUFNSKGludGVsX2RwKSB8fCBDQU5fUEFORUxfUkVQTEFZKGludGVsX2RwKSkpIHsKPiA+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc2VxX3B1dHMobSwgIlBTUi9QYW5lbC1S
ZXBsYXkgVW5zdXBwb3J0ZWRcbiIpOwo+ID4gQEAgLTM2MDIsMTYgKzM1OTUsMTEgQEAgc3RhdGlj
IGludCBpOTE1X3Bzcl9zaW5rX3N0YXR1c19zaG93KHN0cnVjdAo+ID4gc2VxX2ZpbGUgKm0sIHZv
aWQgKmRhdGEpCj4gPiDCoMKgwqDCoMKgwqDCoMKgaWYgKHJldCkKPiA+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIHJldDsKPiA+IAo+ID4gLcKgwqDCoMKgwqDCoMKgc3Ry
ID0gInVua25vd24iOwo+ID4gLcKgwqDCoMKgwqDCoMKgaWYgKGludGVsX2RwLT5wc3IucGFuZWxf
cmVwbGF5X2VuYWJsZWQpIHsKPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZHgg
PSAoc3RhdHVzICYgRFBfU0lOS19GUkFNRV9MT0NLRURfTUFTSykgPj4KPiA+IERQX1NJTktfRlJB
TUVfTE9DS0VEX1NISUZUOwo+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlmIChp
ZHggPCBBUlJBWV9TSVpFKHBhbmVsX3JlcGxheV9zdGF0dXMpKQo+ID4gLcKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBzdHIgPSBwYW5lbF9yZXBsYXlfc3RhdHVz
W2lkeF07Cj4gPiAtwqDCoMKgwqDCoMKgwqB9IGVsc2UgaWYgKGludGVsX2RwLT5wc3IuZW5hYmxl
ZCkgewo+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlkeCA9IHN0YXR1cyAmIERQ
X1BTUl9TSU5LX1NUQVRFX01BU0s7Cj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
aWYgKGlkeCA8IEFSUkFZX1NJWkUoc2lua19zdGF0dXMpKQo+ID4gLcKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBzdHIgPSBzaW5rX3N0YXR1c1tpZHhdOwo+ID4g
LcKgwqDCoMKgwqDCoMKgfQo+ID4gK8KgwqDCoMKgwqDCoMKgc3RhdHVzICY9IERQX1BTUl9TSU5L
X1NUQVRFX01BU0s7Cj4gPiArwqDCoMKgwqDCoMKgwqBpZiAoc3RhdHVzIDwgQVJSQVlfU0laRShz
aW5rX3N0YXR1cykpCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc3RyID0gc2lu
a19zdGF0dXNbc3RhdHVzXTsKPiA+ICvCoMKgwqDCoMKgwqDCoGVsc2UKPiA+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqBzdHIgPSAidW5rbm93biI7Cj4gCj4gcHNyX2dldF9zdGF0dXNf
YW5kX2Vycm9yX3N0YXR1cygpIGlzIHJldHVybmluZyBmcmFtZS1sb2NrZWQtc3RhdHVzCj4gZm9y
IHBhbmVsIHJlcGxheSwgSXRzIGRpZmZlcmVudCBkcGNkCj4gRFBfU0lOS19ERVZJQ0VfUFJfQU5E
X0ZSQU1FX0xPQ0tfU1RBVFVTLCBub3Qgc2FtZSBsaWtlIHBzci4KClBhbmVsIFJlcGxheSBTVEFU
VVMgfj0gUFNSIFNUQVRVUyBpZiB5b3UgbG9vayBhdCBkZXNjcmlwdGlvbiBvZiB0aGUKcmVnaXN0
ZXJzLiBGcmFtZSBsb2NrIHN0YXR1cyBpcyBjb21wbGV0ZWx5IGRpZmZlcmVudCB0aGluZy4gSSBk
b24ndAp1bmRlcnN0YW5kIHdoeSBwc3Igc2luayBzdGF0dXMgZGVidWdmcyBpbnRlcmZhY2Ugc2hv
dWxkIHByaW50IGZyYW1lCmxvY2sgc3RhdHVzIGZvciBQYW5lbCBSZXBsYXk/CgpCUiwKCkpvdW5p
IEjDtmdhbmRlcgoKPiAKPiBSZWdhcmRzLAo+IEFuaW1lc2gKPiAKPiA+IAo+ID4gwqDCoMKgwqDC
oMKgwqDCoHNlcV9wcmludGYobSwgIlNpbmsgJXMgc3RhdHVzOiAweCV4IFslc11cbiIsCj4gPiBw
c3JfbW9kZV9zdHIoaW50ZWxfZHApLAo+ID4gc3RhdHVzLCBzdHIpOwo+ID4gCj4gPiAtLQo+ID4g
Mi4zNC4xCj4gCgo=
