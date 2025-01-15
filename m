Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCEA8A12F54
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 00:41:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3DDF10E84C;
	Wed, 15 Jan 2025 23:41:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P+72TxGK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BE3E10E84C;
 Wed, 15 Jan 2025 23:41:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736984470; x=1768520470;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=8F1/OTbvsqUbqk2j8liZ9dgUiCuHyVIJq2z35E9d6Gc=;
 b=P+72TxGKU0nEV8U8GNwnQAbTVGfsZfIpJbgfyKqpdX6TXWxwsMcNOWaJ
 BPSzpY5BE/RaL6Vh16pNf0ilai5CKiMli41Q2ILspwTxTFpkxrCybbBuL
 fCcB+0DDBOaCtrwO6g8pmUY+YXFXpYN9bvLaH9M8B5bDLmJ7fUeYvBb0V
 qHnqAbIhE+JfEi0jVz3MnMYal1KVG/x4hsjQuB/VJDEsWQivOf6XVim9r
 64Z3KZqUTYM6jGATsOSabJbK2rcNTOQaFZhRWGBpcy72XRxntxMnxCB6V
 pXas/LpB/Q6JHf1V+eP7IK61BDS2qjki9fFy0kIfCuukeGi5pwN7g7vHz g==;
X-CSE-ConnectionGUID: YbmrJCKXRVeALByaAvMJOA==
X-CSE-MsgGUID: Qpfe/FgzT0qpGJCltH2a7Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11316"; a="37572469"
X-IronPort-AV: E=Sophos;i="6.13,207,1732608000"; d="scan'208";a="37572469"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2025 15:41:10 -0800
X-CSE-ConnectionGUID: o6F45UkAQXmJhNoxsrFsyA==
X-CSE-MsgGUID: A/BXHrRjTG2I84qZ3sOOYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,207,1732608000"; d="scan'208";a="105837309"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Jan 2025 15:41:08 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 15 Jan 2025 15:41:07 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 15 Jan 2025 15:41:07 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 15 Jan 2025 15:41:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=n5AC0zBk1YzrLJwxc731foKx0zZjwQcU2L6uIrgtvKuLMFNo/xPRwgkkZtH08WcLuQBB7rROXpNfrbeVqD1moeX14XZfZJCtqqq5dd/yNHBY5xMGHBMCV6S/4FsghhCJMe3LJQn2cspTAjTjFwzzcXGH7ApS4bzVrHtSMINiDPIn9gmCbCEG3W5TT1xEZaBkvHTZjTM45NWesM841CFo6iwOC5XSCAi4xzukDhKZOCnyMnxGAtg565JYJkg83UpyKaQC56jsEQelLnT71g9705a3EnXcZKYelULoUOneOQSHtcSW7mnEJeCTxnkj/1lZvh37bCDqkkve2HpDNMHiyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8F1/OTbvsqUbqk2j8liZ9dgUiCuHyVIJq2z35E9d6Gc=;
 b=MOKz/HsA97KAQ6JVwPGSqsFm6Zr8v7ISQr+ieGq9Wgna6hsuQvru8S5zA56bm3eGyIW+AOCQBuxvVFLK2D8OEif6engJlGl06aK5a5B+l1xI2xpMsYRdp5lm38WM5BbFBvpGp5aFFUyIOBdbAIjgq7ZYOM9FE+wYsRjGjM43abtPg2zNzlD/1iGdlhFcnsulldg8aA9rgG1Y7F2mcUiO1NrJ+yxJ148EWxvaCISPCmwVDVOlaUMPntC2j7QFLcCSNKDhWvlC8uP/tsaBn4iLreTxmJ/yQr6U7GTRvQNgPGVgROft+ZUtcWUzrWmSblaIZ/hbPlr61XEInDXsOoPrOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4620.namprd11.prod.outlook.com (2603:10b6:303:54::14)
 by PH8PR11MB6880.namprd11.prod.outlook.com (2603:10b6:510:228::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.17; Wed, 15 Jan
 2025 23:41:04 +0000
Received: from MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::5b47:1b5a:71b2:4f20]) by MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::5b47:1b5a:71b2:4f20%4]) with mapi id 15.20.8335.011; Wed, 15 Jan 2025
 23:41:04 +0000
From: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Taylor, 
 Clinton A" <clinton.a.taylor@intel.com>, "ddavenport@google.com"
 <ddavenport@google.com>
Subject: Re: drm/i915/display: HDMI C10 PLL entry for 265250 MHz
Thread-Topic: drm/i915/display: HDMI C10 PLL entry for 265250 MHz
Thread-Index: AQHbZ6bwcWtyOqUmykudRyTjmiAJmA==
Date: Wed, 15 Jan 2025 23:41:04 +0000
Message-ID: <ba160c734f0bd0d5d9fafe639465ab61a5302ec6.camel@intel.com>
References: <20250115230859.2410966-1-clinton.a.taylor@intel.com>
In-Reply-To: <20250115230859.2410966-1-clinton.a.taylor@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW3PR11MB4620:EE_|PH8PR11MB6880:EE_
x-ms-office365-filtering-correlation-id: cb99f924-907d-4eb1-4963-08dd35be137f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?Qkk1bU5TZU02VHczVGRPVytMZzdBbVVYb3NhbHNOZGMwZ2hRL1NGWitnVkdI?=
 =?utf-8?B?OUp1UXdnY1VZNmVOQ1NtWGc2elBZTGF3TlpzNGxIeTdZU1h2RE9VOG9ndFlO?=
 =?utf-8?B?S3VFd0REZFcvU0QydGd5a09JYVdQbXhUblFBNmJaNSt2N0JvaEFvMytNbVZt?=
 =?utf-8?B?MGJoR2V5ejlXY3o1NWdoTC9EZ0JDR2N0MlZmdFdIcVI3WGtValRKRm13aHV0?=
 =?utf-8?B?OFFqWXEyb1FqVVNoblVsZGRaL3VYN2JKaHR1MXhTTzZaVjZmYmhyTjUzellk?=
 =?utf-8?B?Y0ZpSitHQ29nRXQ0MGFlRlE5Qmd5RVo0YmR6cnlFZkVESHhCQmlsSG5EZTBy?=
 =?utf-8?B?aGhueEpCdDBGUHdsejZDekdBZFJ3dVFhYXhxcmdwa2U2VDBwMmp5dURya1JP?=
 =?utf-8?B?dTJQbzRkN21aR3ZjbG9mVnRyc1NRa2JUN1VBL1djODRTZlA5S2ZPVVBvSVht?=
 =?utf-8?B?OWhkT0pHVDhGSU0yYkRkWlIzZ1hmZldsTENoSjU5RStERjRsV05mVDNwcmJJ?=
 =?utf-8?B?UTRaMjU5NTZIOC9zUlNXWDNhandLL2pGalVVM1Q2SjhqaDk3QUt1MDFZdXYv?=
 =?utf-8?B?WlhRV3l0OXloZG40SWhWRHlMUWgwZDBnWXpqUS91alpEMWdTOS8raG41b2dm?=
 =?utf-8?B?ZzBUZGxnZWN1ZWUzcy9ZRG93TXorV0JlYWVMYng3ZzFyaUduZys2WnQ5ZzFK?=
 =?utf-8?B?eWorcmpmSG5FR3hYUGdEaEpPK2c1Y055NWZRZ09IWkJKTng3SnF1dHhEazNX?=
 =?utf-8?B?aThBR21RbEx4ME9BbU9icnM4RDB6NzlUdERjVldJSVFJTFhwM0hsVlBlSlZ0?=
 =?utf-8?B?RWFzeVFiMWl3N1EwcVdSemtqT0szSzhLeHhxRHhxRE5GaitCSFBEK1o5ZnJE?=
 =?utf-8?B?M1lST1kzL1FpMG9IYk1XUFR6NWtrTGppT0ovOTV3U3U1aG9QREtaV1pEMWVx?=
 =?utf-8?B?N2dtTXZmNXhzbFg1Q1ZmekpGS0dqM0lyK2dsL1IzbEZUWnVyajFPUkc3Qm84?=
 =?utf-8?B?cjcvNm83aUg3UjZWOUFmN0Z4UjV2MXNWU0tiVXc1V1VGQUNKMXRvZmpBZm45?=
 =?utf-8?B?VTFnK2EwMFdGUUtxOXA1UmQwb004UlZzdzBtQ2taRThURi9FN1AxTTlZeHB4?=
 =?utf-8?B?Rk9DUWd4L2JJbDl5eG1UQTl5YkVWZHRFK0w0QnN4ejdvYytuUXRkZUN0Sy8r?=
 =?utf-8?B?OWsxaWZoOHU1TnVpVTREQlFhNmdBKzVRMFdZcG9pR2orWlJ0S01UZ3VPSDdo?=
 =?utf-8?B?YnNPTXVRZDVJYWd5dHdPS1A4MjVoVTdUMGdvT2FOK3ZvSDFUZEJFY1FUclI2?=
 =?utf-8?B?aThWK0djNzlMR09EdVFPUll6R2ZCZktGSW1Rb2xLYlVIZ2tjeGRUbkNBdHZ6?=
 =?utf-8?B?RzU1R2kxMWdtZm83N0J1RWFQTUc5a1Y3RHdZOW1peUtodVFGd3NJMFQyZ1VD?=
 =?utf-8?B?V00yRFNjM2VzL0E3N1BNNEoxcldEdkduUWdyaUZXTEsxM0hWdVQzS0tSa09X?=
 =?utf-8?B?bjJ1NWdMWUN5bHRUYWlBNzlHRHhaWFA3eVdlRW9tUDVpZzhBUVBsdmRLNmNU?=
 =?utf-8?B?K2F0Y1NCVlRNUytGTS9OdmhaZEsvT1RMSFR0elJRMDZabjJ4dHZPc3k2WXpP?=
 =?utf-8?B?VGVKcEs1SWl4K3A5b0VJaFhrT2tZQlFVd0lac3pSczM3WXZ1UUxlajlEa1pm?=
 =?utf-8?B?c2RjWEgycURRWXhXOVZ4bWg3b2NaUmtybmNYMm9RRVRhYWt5U3ltNlRQdkk4?=
 =?utf-8?B?VlNtYU9ZTWhkbEFJQUtFSnJTOUxmNFlYSkFuaEF3c3dxR2V0aVZOVDhJeFlT?=
 =?utf-8?B?MUEvR2NGampJMFJKYk9VRjBFSldHUXJiL2kxV3NuUzhSZ0E3Vi9tK3RWRVR2?=
 =?utf-8?B?aDNwY2VFTTRQK0Y2cWxSckdFOUZGR0ZkWU43aTJqcGFrbVZlWUI0VmZjbnRk?=
 =?utf-8?Q?fqmZeuEiNo9yq0fM/Abfhcder3KRPL1O?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4620.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cXF2UmN5RFRnelFSLy9YSlFoZFVzckNjVUJLSzFPbG1taEtwcnZQMFprVmVH?=
 =?utf-8?B?ajhOQ1RZSnRyeS9lS01JWFhiUlFqRDVMSXQrN1laTC9hcmlYcFVNc010Uy9V?=
 =?utf-8?B?MmYxUEpNZjlkRG1KYURCTytTRXh6U2xrMWs3bHBHWEVrQkdKTWZJZ1lUWVdY?=
 =?utf-8?B?R0xzbkQzTGM5VlJvSFlCVFY1eEJlQXYrWTFWNm4vZHB1dDVBaHNZdllnWms0?=
 =?utf-8?B?c3ZQVHZLU3J0cm9oSlhQUUlmODhoSzhFWHNyTmhlVWdQSHRYOUxlckMwMGEw?=
 =?utf-8?B?R2hkZ3o2MHZlbEEwR2ViZ3lKY3pEc1M0ZTBKYnNqZ3A0TkR3aE9lT3B5L1Nm?=
 =?utf-8?B?MitHRkQxVytyMzduWmlTNnB3QmJIOGJwcmFid3d5Wmp5NmMwY1FHTjlzLzJD?=
 =?utf-8?B?RWovaXBwYUo1WHpna28xMzVtVm9CRUFXQ2RFZkl4U3QzbXI2OHVDeUpjb1BF?=
 =?utf-8?B?c1lpaG9ZZGxid3FwaFU3OWl2c2p4SkxLNEViS3FqSE05b1JscjRkdVlqTEpR?=
 =?utf-8?B?aThBNGRNcG9MOGk3SlhoU3QrMUpBR0ZIYjM2Qm1UTkt1SFFaelowZFdzNWZs?=
 =?utf-8?B?Z3RIZnE0VHJ4T3JPbytXTHdFNWdyNEhYMk0xWGYySTFUbGRIVEg5VGwxWTV3?=
 =?utf-8?B?Y3hVeEQ3ZS9HY1YvNTYrdUFMWjdKN0l6YTlUSVpmY0MvQXRwbi9yYURlU1M2?=
 =?utf-8?B?TktmN2xrZ2pxTlhneGR0QXRUeXBCYktSZWpEUW5uVnFxQ1hIYzlyMGczanVj?=
 =?utf-8?B?MXNNcDRwWC9YRGRQNkljMCtOQ1Q1bzBIcjVmcXNBMVlWV3dER0ZjK1Q5aDhU?=
 =?utf-8?B?dzRsZTJHY295cEtuRUNLYTRoRDlnczZ0dk8rTnNDTlE1WUkwemVDOXV2a2VV?=
 =?utf-8?B?dG5yakM3Umc2c0VyZXl0eG04Y1d2eDhqTVFpOUdoT0gwZmxxcGxBSGpwb2t1?=
 =?utf-8?B?UnZ1ZXBaVzd3eThoRTFEa0NiRjVaVnZZTTJaVFhFWUtublBZUm8vOTkwN1FZ?=
 =?utf-8?B?UDlTWU9yOUZtYmVKRE1MdGFiWlZQdkR2TTBib0hDdnJJdWtoamVwL2JlL2Fs?=
 =?utf-8?B?RHo4Z0s4a1BwdzB4d0cydHZySEEyYm4zTTR5azFIMERZYVhQbGFBNkV4QU96?=
 =?utf-8?B?aGdUSWFMYTk4bDFPMjFybXV2NzRoTEJXY0k1cmE3dXF5MDB2RUZRTU1uOEtO?=
 =?utf-8?B?cS9wWXBrcnowUlh0dzhRNkR2bGpZSE5rLzlOdmZoVE4yTFpaYmRrK2ptSWt4?=
 =?utf-8?B?YktPNGtGdTNheVhlVGIxOGZEY0tOcVBjVHNDS1R2SU9CUlZoQng0cS9TZlBH?=
 =?utf-8?B?R0EveUJiOGZOZW5aay83elQzUlVMZ3U3V0JvZWxhbkI3VEV2MXZ6aGxDZzF3?=
 =?utf-8?B?N3pzREhpQWpJUUh6V1pDYW04REtqbnY2MnBQQ2ptUDExb1pGaDA4S0dFQVkw?=
 =?utf-8?B?UXRQam9qWENBdmg1Sk41N1FZUUlCOXRNeFM5alovWUt4cGJFbEh4bTZ1TFo0?=
 =?utf-8?B?TUNTOGRVeXRoaUl6TklsbXM3UCs2RnBZOHN5SG9OZmFDcmNuNUlsSFJlVWty?=
 =?utf-8?B?S2ZKSDVQVWhMbkV5MmhJbjQ5UGVtbldiYkFSUVFSSkFTQ0F4SjlPRjdDMHlJ?=
 =?utf-8?B?SWRXc1k1K29iL05zL0kvQzhFOTk4WGpvd1BSWGw1ejFyZDBWWTFDN2E0ZU1F?=
 =?utf-8?B?OTlHWUxQdnR2UWtBekxiTG5tSXlHV2V2YXlNeVNpaUJTc25VbXg2bkRRSFFI?=
 =?utf-8?B?K2hKVDlDMHhTL0l0a05jTkprbG1pNHRMZnhLZzNTVDh1YTMwMXE3L29saG1v?=
 =?utf-8?B?WDQ5V2NLQXgwWm9HU3dVSzRlOUlmOGw0TWh6VVZxUXBSd2Fsanl4UitPRUcz?=
 =?utf-8?B?enh3bGVUZmpsR25aU1loaGRzK3pGTTRCc3F5VC9OUjdRZGxaajJMbmR0NUxr?=
 =?utf-8?B?WTR6TkxlS1pUaG1tRVM4U2FUVHVRZ0l3UnNDQXNMeHBFeTg0OUFPVHhFRU9L?=
 =?utf-8?B?Ull3eWZuS3djNWNqaHJvZXRpUXNPV2JoZ2tHdEViZFdwVTRWSkd2SzdBME1u?=
 =?utf-8?B?TC9Yc2VpQk9iMEt2c290UEN3T3c1OXBnc3lHMUY2RkY0VXFldGhMZnZ3ZFZx?=
 =?utf-8?B?aGRkb29hQTkvaUhUNkpTWFFRdDh6Nk11VTlielRaVzBpWTBDT0djQVVYNVha?=
 =?utf-8?Q?hpAmNP6Rzg4SkAA1ASmDYVs=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <4EF6A3D187B6B84EB35A24BF346E1082@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4620.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cb99f924-907d-4eb1-4963-08dd35be137f
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jan 2025 23:41:04.3092 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rtpciJ1i8l//uCc1C5Hy6EALbfU/djmWJlRYZLqb1e7BrfJDGFTTWsMyui25z1QJmzmIZ36Ck1Uc5H1ME8e2WEHIrhopJNBPsu9xEdZI3sc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6880
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

VGhhbmsgWW91IGZvciB0aGUgcGF0Y2gNCg0KV2l0aG91dCB0aGlzIHBhdGNoIG9uIG1vbml0b3Jz
IHRoYXQgc3VwcG9ydCB0aGlzIG1vZGUgbGlrZSBBY2VyIHgzNCBhbmQNCkxHIDM0R1M5NVFFLiB0
aGlzIHJlc29sdXRpb24gaXMgcmVqZWN0ZWQgYXMgZm9sbG93Og0KDQpbZHJtOmRybV9tb2RlX3By
dW5lX2ludmFsaWRdIFJlamVjdGVkIG1vZGU6ICIzNDQweDE0NDAiOiA1MCAyNjUyNTAgMzQ0MA0K
MzQ4OCAzNTIwIDM2MDAgMTQ0MCAxNDQzIDE0NTMgMTQ3NCAweDQ4IDB4OSAoQ0xPQ0tfUkFOR0Up
DQoNCldpdGggdGhpcyBwYXRjaCwgd2UgYXJlIGFibGUgdG8gZHJpdmUgdGhpcyByZXNvbHV0aW9u
IGFuZCBwaXhlbCBjbG9jazoNCg0KIHBpcGUgbW9kZTogIjM0NDB4MTQ0MCI6IDUwIDI2NTI1MCAz
NDQwIDM0ODggMzUyMCAzNjAwIDE0NDAgMTQ0MyAxNDUzDQoxNDc0IDB4NDAgMHg5DQoNClRlc3Rl
ZC1ieTogS2hhbGVkIEFsbWFoYWxsYXd5IDxraGFsZWQuYWxtYWhhbGxhd3lAaW50ZWwuY29tPiAN
Cg0KT24gV2VkLCAyMDI1LTAxLTE1IGF0IDE1OjA4IC0wODAwLCBDbGludCBUYXlsb3Igd3JvdGU6
DQo+IEFkZCBQTEwgdmFsdWVzIGZvciAyNjUuMjUwTUh6IHBpeGVsIGNsb2NrIHRvIHN1cHBvcnQg
cmVjZW50IDM0NDB4MTQ0MA0KPiBtb25pdG9ycy4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IENsaW50
IFRheWxvciA8Y2xpbnRvbi5hLnRheWxvckBpbnRlbC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jIHwgMTEgKysrKysrKysrKysNCj4g
wqAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jDQo+IGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gaW5kZXggZTc2OGRjNmExNWIz
Li5jNWVhODIwMmE0NTUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfY3gwX3BoeS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfY3gwX3BoeS5jDQo+IEBAIC0xNjIwLDYgKzE2MjAsMTYgQEAgc3RhdGljIGNvbnN0IHN0
cnVjdCBpbnRlbF9jMTBwbGxfc3RhdGUNCj4gbXRsX2MxMF9oZG1pXzI2Mjc1MCA9IHsNCj4gwqAJ
LnBsbFsxNV0gPSAweDA5LCAucGxsWzE2XSA9IDB4MDksIC5wbGxbMTddID0gMHhDRiwgLnBsbFsx
OF0NCj4gPSAweDg0LCAucGxsWzE5XSA9IDB4MjMsDQo+IMKgfTsNCj4gwqANCj4gK3N0YXRpYyBj
b25zdCBzdHJ1Y3QgaW50ZWxfYzEwcGxsX3N0YXRlIG10bF9jMTBfaGRtaV8yNjUyNTAgPSB7DQo+
ICsJLmNsb2NrID0gMjY1MjUwLA0KPiArCS50eCA9IDB4MTAsDQo+ICsJLmNtbiA9IDB4MSwNCj4g
KwkucGxsWzBdID0gMHhGNCwgLnBsbFsxXSA9IDB4MDAsIC5wbGxbMl0gPSAweDZBLCAucGxsWzNd
ID0NCj4gMHgwMCwgLnBsbFs0XSA9IDB4MDAsDQo+ICsJLnBsbFs1XSA9IDB4MDAsIC5wbGxbNl0g
PSAweDAwLCAucGxsWzddID0gMHgwMCwgLnBsbFs4XSA9DQo+IDB4MjAsIC5wbGxbOV0gPSAweEZG
LA0KPiArCS5wbGxbMTBdID0gMHhGRiwgLnBsbFsxMV0gPSAweDU1LCAucGxsWzEyXSA9IDB4MTMs
IC5wbGxbMTNdDQo+ID0gMHg1NSwgLnBsbFsxNF0gPSAweDU1LA0KPiArCS5wbGxbMTVdID0gMHgw
OSwgLnBsbFsxNl0gPSAweDA4LCAucGxsWzE3XSA9IDB4MEYsIC5wbGxbMThdDQo+ID0gMHg4NSwg
LnBsbFsxOV0gPSAweDIzLA0KPiArfTsNCj4gKw0KPiDCoHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50
ZWxfYzEwcGxsX3N0YXRlIG10bF9jMTBfaGRtaV8yNjg1MDAgPSB7DQo+IMKgCS5jbG9jayA9IDI2
ODUwMCwNCj4gwqAJLnR4ID0gMHgxMCwNCj4gQEAgLTE3MjgsNiArMTczOCw3IEBAIHN0YXRpYyBj
b25zdCBzdHJ1Y3QgaW50ZWxfYzEwcGxsX3N0YXRlICogY29uc3QNCj4gbXRsX2MxMF9oZG1pX3Rh
Ymxlc1tdID0gew0KPiDCoAkmbXRsX2MxMF9oZG1pXzIwOTgwMCwNCj4gwqAJJm10bF9jMTBfaGRt
aV8yNDE1MDAsDQo+IMKgCSZtdGxfYzEwX2hkbWlfMjYyNzUwLA0KPiArCSZtdGxfYzEwX2hkbWlf
MjY1MjUwLA0KPiDCoAkmbXRsX2MxMF9oZG1pXzI2ODUwMCwNCj4gwqAJJm10bF9jMTBfaGRtaV8y
OTY3MDMsDQo+IMKgCSZtdGxfYzEwX2hkbWlfMjk3MDAwLA0KDQo=
