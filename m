Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YCEiNJPh5WnfowEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 10:19:31 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9AF64280D5
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 10:19:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6BEB10E462;
	Mon, 20 Apr 2026 08:19:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nszgEmPQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83A8910E468
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2026 08:19:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776673167; x=1808209167;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=C087qpVfxmUKpYvrjPr9pG+jjyO01JmvYGsRlVugbAM=;
 b=nszgEmPQiQajcPm419HOT3Z19wuTUx3NXm1nLYVSN6jRceiai+IzMU41
 udtpPjDdiwfAn+MIJy6VoadEw8PfaJPmyqhKtgt2WodqrKX11flgB6DOT
 2JN+4+dzHAYf/ppe2IiLdYOuoXujr9Si96TmUF6T14YXApEpHdgXnPHPq
 flKAFrhYLeiSlrkwty+h/jy4lYEm1qful3OwFNC3ziF43a5oagxnQmke+
 cjfF5z0zrIw0K2BKbxBnv4TcupxIF3sQG8bZMgIv9O2EQdanpUKSJAf0G
 FnDLI/l/MD9GlSmE7IeOnIReIkAnlW5v6GCGx2UZakVV4ZfRbrg3LJjV9 g==;
X-CSE-ConnectionGUID: mU84GgyqRiW9MWzVT0n7DQ==
X-CSE-MsgGUID: Y76eRa3xRymHyQXo6c1HHw==
X-IronPort-AV: E=McAfee;i="6800,10657,11762"; a="81190179"
X-IronPort-AV: E=Sophos;i="6.23,189,1770624000"; d="scan'208";a="81190179"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 01:19:27 -0700
X-CSE-ConnectionGUID: mc8F81S+T/CQYg8zSKdO2Q==
X-CSE-MsgGUID: Fcek3W0LTpG2XLAS3I/fWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,189,1770624000"; d="scan'208";a="228974757"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 01:19:27 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 20 Apr 2026 01:19:26 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 20 Apr 2026 01:19:26 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.12) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 20 Apr 2026 01:19:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=e43Qb3fFPpSfOgxQk+tXl5GEF5DemPCjoQe5uuo/AlGBoKAVoXZmL4V9lhugDwHs9wRhuaPwBhKJf1BHLos1GPSH4zz5UbqBZx9fH14lsbxNJsoqsyEV+pb39NDYW4ASbSdrgaslUNhBIVhtz9uEDfBbUwAfRbGcXfoNtF8rBJI49KYfIQnuKzcDE+gPzzPYjqnKk+m8t+D0JNRuYv/4zOlg4BoyIMznZ6LXUi1QHPszJ6ylpLVJ2mOfUfStkIz03hERGu8bUH3PXsplRbG6dwrpuYBhTLxZFfuwqfNF1XIrl42gjWP6qHKfv3Nkp6NhFMuYnZLCdHbTl9vLbqWFIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C087qpVfxmUKpYvrjPr9pG+jjyO01JmvYGsRlVugbAM=;
 b=JuBaEk6Qc3sMmIfx8RIkwVK4fxv29mYLrd7ByrnSgJw3TS246wx1dq6JD1i3VydbdJp4m90gOSMbdkE9Co8BmeEUN5kCtZnw+sgyQt9zK7o4ygccqJPxOnI1S1P7HBrQ903isJ0Fex4oxHnp2Ajd5T/l4cQQEFJUtdHSi3G7vmLU6foLolnrPRzSztTF7pt9gu0MFngk0KBJKBNEmnfeGpIPDg6uBFcCdr+vU3Hu+UgqQ5roMrddcuzrIFjmmBeTfJy8DltQa7ndzNq7mBcIuJVkVITNpc0erkX0N/8JyMo7xlUeNX6641seQaTjC4xSutVlcU87iIdG4DmqibV6tQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB7256.namprd11.prod.outlook.com (2603:10b6:8:10c::8) by
 CYXPR11MB8756.namprd11.prod.outlook.com (2603:10b6:930:d6::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9846.15; Mon, 20 Apr 2026 08:19:24 +0000
Received: from DM4PR11MB7256.namprd11.prod.outlook.com
 ([fe80::86bc:2f46:443f:51dd]) by DM4PR11MB7256.namprd11.prod.outlook.com
 ([fe80::86bc:2f46:443f:51dd%4]) with mapi id 15.20.9846.014; Mon, 20 Apr 2026
 08:19:23 +0000
From: "Grzelak, Michal" <michal.grzelak@intel.com>
To: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Garg, Nemesa" <nemesa.garg@intel.com>
Subject: RE: [PATCH v2 09/10] drm/i915/scaler: abstract scaler searching loop
Thread-Topic: [PATCH v2 09/10] drm/i915/scaler: abstract scaler searching loop
Thread-Index: AQHcydshESDFtxM/sUaRuZWVFz4dDbXc8xiAgAqv36A=
Date: Mon, 20 Apr 2026 08:19:23 +0000
Message-ID: <DM4PR11MB7256CE839D448D21DC83EAF18F2F2@DM4PR11MB7256.namprd11.prod.outlook.com>
References: <20260411174526.2850179-1-michal.grzelak@intel.com>
 <20260411174526.2850179-10-michal.grzelak@intel.com>
 <adzlZzTcNo7Ampmj@intel.com>
In-Reply-To: <adzlZzTcNo7Ampmj@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB7256:EE_|CYXPR11MB8756:EE_
x-ms-office365-filtering-correlation-id: d41acc7e-c225-4942-07f1-08de9eb58797
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|56012099003|22082099003|18002099003;
x-microsoft-antispam-message-info: P7CxKJaxLOLXQj10Y9qn4u/+IgBvXsgNnr5g+D+QSmrVmpz6cxcJ7PJC7ZUO2oN6JQXGbYVVPFhKvJO9FCZ6fBvPDRCuNAkXKRt1EHTVMmWfjr/+/8gYWG7UNOroX507RRwFU8OjjETAmNzinEK+iDuGYl22l6Xai0IBmLKKXDX++JqHa5pHThFzeEqnhNzoQ/2zw9XwrtrRxTM3WMZ7sbTHZJDFZJsx2jZ+Wft9qP7mfzbTaVr2YXpeMV1/+w1+d4m2FCrqiXcUzsh1Sv+A7MWj76SyCKKawIoZCehglCns8Qzk6RjlgfeEj10LQGznArPuUXSgGfiADE+lyBCaOV5zhDDGUzkgQLTNofjEdvJjuCOnzb4gt85XvPS09muxxgYk0q3Dl1cOOfhgnPqAGzKwbuSBcU5GfXEqIoHUwbC0uGTq+zpGJo7m8cNK77TBj6rPkydb4BLsTt+/LpmCfR/EyGm6C9VsLJELRCpqBkKiCKzS+3NJSxWI3+OYN9BHflJOjB/Qrd3WETyJZ6uP9zkUU5Y6ofMY5UgNObLml/1MtRN9C827+NwEVUg9/j9gpZrl1Y1OLVTqViCiqj3kN5rL/+RTPr7kMdx7qo6gev/ZCHgpRQn5huosw9aVrjQ4OOSnZCu0U6K5RHowARypi6TOFkUe7KzpZ+qoxtAytBYKDFgvygokeoUpwwfY0Zxu2j4BwdHVHwBT7Ww77CHIQn3RZxfgocR1zZxkxzaozBvTFUJu5ynJFvHwZo+4KNoHwfAPA6gncrpa/5eaCMaJhQWsg6TZHnKdn/Vr9huw1n0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7256.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WnFwUHZWeWgraHdQWDducUNqVTVsVkQ4T2hhQTNwYkpkNzFPWk5DYkhTbWxY?=
 =?utf-8?B?T21LSkNSQ0F4SjFMYUxJZ1ltMTA4ak1wTDA1SmN1RTh1WmhQNmxCZjdzcGJz?=
 =?utf-8?B?ZmVsUllTWTNuVEgwejJha1A0VkRkS0pqNGFuY3Bwdk96M1JYQ2hJd3VOYlNi?=
 =?utf-8?B?VVVyV0NveW9pOXpKajhsQU1oV0NJc2VkSnRvOU0wcXF2a1JPQWFVZVFxelpo?=
 =?utf-8?B?WnJuWDRWMG5nTEYzUExkemdhODI1MmZjelVEdWsvTko4KzBWRjV2Y3ZibW9S?=
 =?utf-8?B?L0p3emVKa0Y1cDV4N1I0ZUpmbGF6UnFrTEV3ZFQ2eThiamhMNDEyWEZjT3ZG?=
 =?utf-8?B?bTBOcE9LbWljSTFLUzJoTFNvN3VEWklhakU0WDVSdks3Yjg2YXNjS0dtTkpj?=
 =?utf-8?B?bEY4T3pKcmUzc0xiVkl0VDZlLzJld1IxNkdIV3ptckFCaG1HUFRmWVVERG43?=
 =?utf-8?B?NDlkcTNnZXUrU1NQYmc4UDR1TUx2clBlaG9KTXdSalg1UEh0VDI3NGtwZGdy?=
 =?utf-8?B?RlMzSUxDc3pxc2JhK1MyVlZodjZvc0hyUUpVMnlybDJZSkFyMnlQOFg1T3Zu?=
 =?utf-8?B?WG9VQUZXOG9NdzZ4Z2NKM0laNVZ0VEdOb05rVDR4NzdpdWgwc3laMHdDWmcw?=
 =?utf-8?B?OUFSRWRpdWZpSjFJd1hTcVNWQkdNbGorZUg3OGUwV3o2ZHVxRkUxM1VXSkJV?=
 =?utf-8?B?djJ0OTJnaXEzMkhIRndZQ0YxbVNYSlRvSi9GbTJPdlNTT2lmN0t5NlV2OFMr?=
 =?utf-8?B?REl2NFIwb2FubmwxRlJ3blQ4ZlRkTkpJSGRwU2RlY2t2aXJwOTQvcGJUT1BC?=
 =?utf-8?B?Z05ueTFtVlhLbmlsdDE5aGpMblZ3VFRvYTJJRDlZMUdZQWdwdmRQd3BLWGpU?=
 =?utf-8?B?VjlFNzRIRjgwb25qK2Q2YTVnOXZtWEtQS2dTUnNJR1RHZFZQNlYxeitzOGpr?=
 =?utf-8?B?eGQwRVF1NGFwWjhyNlQ2UnA2OTR4L1Qrc2JoUUU2MG9nZDE3b1JrdHFtdUV5?=
 =?utf-8?B?TWM2Y3RGWXhYUDk4Ty9mT3NkN1dUR0tnb0FSWG0yRytmT0lFVE52QnFMeVd3?=
 =?utf-8?B?S3JHOTR4c2lpaWltdEJjU2ZWUWxyRHlOVis3YTgyekMrTXFDeDBySTIrTzBM?=
 =?utf-8?B?U1FEUDBoNmw1MUtLanB0ZW84dUZhcXRFOWpIM0dQK3UzSGhPMzZMQmcwNmNJ?=
 =?utf-8?B?NEp4d3llMmNZanQ5bmFHMUZQVVV1M2dERHZia1YyaXNMYUVOb0RDcGlaTDFj?=
 =?utf-8?B?MEhNbDc1YmRGTmlQZmNtR2NldVU3NjM3QnlnbWFjMzBKeU0vMlBPTkw2Rjly?=
 =?utf-8?B?Lzgza3BhWDlHUjhzdTl5T1MxUTZpREVFaVBoM2FPSTVVUEI1ck9pemFXRVdQ?=
 =?utf-8?B?a082eElqMWVMUnhnc1N2Z2VLdHVrNDBmcDh1SU9JYjA2a0ZvZU9jSEdkYW1j?=
 =?utf-8?B?MW4yOGZVdmdiS2Z4aHlQSEdhdHpBR1FnRTNPeGlHcnVOT2dIOEMrRXdCNHV5?=
 =?utf-8?B?VlF3UVNua2p4QkxlNGpDd3NGbVJsZkMzMkwzQ3FjYSt3ejN6WXNuYXlaK1R5?=
 =?utf-8?B?N3ljWTRRRGpyWHhUUXJDYllsQkxIRUREVFlDMkF5dFRGY2hHbDlkQmZ2dWZZ?=
 =?utf-8?B?S2lIQ1BOQWFuOEpwWTh1Q3BUcklYUzNIMGFBOTFaVUxkT0c1T2pCbUdGRkJW?=
 =?utf-8?B?T1NkanBVZnljRjM2T0FrMXZLU1hLT3RtMEFvRGFhaEdxaENxODB4YUNvZHph?=
 =?utf-8?B?dE9ra3RyTWxCelRjTUxiWGprQVhaMDFSVU1TdHRNSW5HdTVnb3FESkVpSkh3?=
 =?utf-8?B?d3p6bWJBL3pQM3kza3ovRnhzQlBFUjR5dWswenBZQUVlRytOT0RjdTR0RGZS?=
 =?utf-8?B?ZFFGRVlZR2tuVitlUEJ3dGF5TTJtOGRoQmNSbWFNWFZwb1dMV1dvRG81VVRY?=
 =?utf-8?B?UFJFL2NqemxkS3RXL3A2ekgvUFYyTGlERy9saEUzTUxvOVZqZ0dTQVFnZDZq?=
 =?utf-8?B?VzExanMvcUhEdU1Gdnd1eW03K1JhNitRWGlaa3M0czArY2lOWHVQSUdyVzQy?=
 =?utf-8?B?NzZTcitMMnorVlFZZU9rbFVTc25ndDhTYnU3a3RNeDMzeEZZTDlMcFRHVmFG?=
 =?utf-8?B?LzE2eUl3NjhabmNNVnhlSlpIQW9QL3R1cUIwdHkwL2llcHRMaWFUYUx6ckhj?=
 =?utf-8?B?ajZlRnhYN1JzQndOT1BISG9HUlBReE5XcFdWSEh3ZG5pSzQxc1pzV3Y0Uzc2?=
 =?utf-8?B?K0pTSU1ld0RlbGt1WXJhd2piQnBzWHFGUG5hZEtqUXBQUElKKzhqS050eWpE?=
 =?utf-8?B?K1hLWHhiczVuWnFFZ0s4aXJKbzZtcEhFZFk4OGcveWJvVzUxZENHQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: uKo3XGH1zUTjnALBdMejY2hiDEKtG2Hxwex4+BydWI8LFxn009+fMY4eMks/k3hT7Fe7Kl+IRMkSqr9vxs8C16WxZEPkbxlHpSAL7b3wI0IjQ639oCM1+jiKRS37K4g68g3ehHF3whxz1vf3CmyllF46bKOx95u5KwV6521s62rJ5e9p9i1PzxYLdLyo+MboAnrrvIm6LL7sW3Sm0f0Zao8UwpseAjxAnI16Cro1WcOh6CORaWv014xwED2rldMeCaHhh4PpoWYXUxsPVFdP5xRni3op1z/KNbxdfeh0nc17RvzI06M0SGWUwKPGhzXgEpRsxjBeyn6DYn57V3srlQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7256.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d41acc7e-c225-4942-07f1-08de9eb58797
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Apr 2026 08:19:23.3873 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: f6/ga4nUP5Zn9t3vRbwKZROL9I0vZVZPwuXR0WhWwdoUccDPv5WXB/y3az0rxM7IEZMvLbJ9XO52xL8bIBdoDr/ch4WLQ69fEpMoOL3qIdc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYXPR11MB8756
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:ville.syrjala@linux.intel.com,m:nemesa.garg@intel.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: A9AF64280D5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4gDQo+
T24gU2F0LCBBcHIgMTEsIDIwMjYgYXQgMDc6NDU6MjVQTSArMDIwMCwgTWljaGHFgiBHcnplbGFr
IHdyb3RlOg0KPj4gQWRkIGEgaGVscGVyIGZ1bmN0aW9uIGhpZGluZyB0aGUgc2VhcmNoIGZvciBz
Y2FsZXJfaWQuDQo+PiANCj4+IENjOiBOZW1lc2EgR2FyZyA8bmVtZXNhLmdhcmdAaW50ZWwuY29t
Pg0KPj4gU3VnZ2VzdGVkLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPg0KPj4gU2lnbmVkLW9mZi1ieTogTWljaGHFgiBHcnplbGFrIDxtaWNoYWwuZ3J6
ZWxha0BpbnRlbC5jb20+DQo+PiAtLS0NCj4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L3NrbF9zY2FsZXIuYyB8IDI5IA0KPj4gKysrKysrKysrKysrKystLS0tLS0tLS0NCj4+ICAxIGZp
bGUgY2hhbmdlZCwgMTggaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pDQo+PiANCj4+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF9zY2FsZXIuYyANCj4+
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfc2NhbGVyLmMNCj4+IGluZGV4IDRl
MmY0YzRmZmM0NWEuLjFmNDdjNWZjMTgwMmYgMTAwNjQ0DQo+PiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L3NrbF9zY2FsZXIuYw0KPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9za2xfc2NhbGVyLmMNCj4+IEBAIC04MzYsNiArODM2LDIxIEBAIHZvaWQgc2ts
X3BmaXRfZW5hYmxlKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0K
Pj4gIAkJCSAgUFNfV0lOX1hTSVpFKHdpZHRoKSB8IFBTX1dJTl9ZU0laRShoZWlnaHQpKTsgIH0N
Cj4+ICANCj4+ICtzdGF0aWMgaW50IHNrbF9waXBlX3NjYWxlcl9nZXRfaHdfc3RhdGUoc3RydWN0
IGludGVsX2NydGNfc3RhdGUgDQo+PiArKmNydGNfc3RhdGUpIHsNCj4+ICsJc3RydWN0IGludGVs
X2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KGNydGNfc3RhdGUpOw0KPj4gKwlz
dHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+dWFwaS5j
cnRjKTsNCj4+ICsJdTMyIGN0bDsNCj4NCj4nY3RsJyBjb3VsZCBzdGF5IGluc2lkZSB0aGUgbG9v
cC4NCj4NCj5JIHN1cHBvc2UgdGVjaG5pY2FsbHkgJ2Rpc3BsYXknIGNvdWxkIGdvIHRoZXJlIGFz
IHdlbGwsIGJ1dCB3ZSd2ZSBlc3RhYmxpc2hlZCB0aGUgY29udmVudGlvbiB0aGF0ICdkaXNwbGF5
JyAoaWYgbmVlZGVkIGluc2lkZSB0aGUgZnVuY3Rpb24pIGlzID50aGUgZmlyc3QgdmFyaWFibGUg
ZGVjbGFyZWQuIFNvIHRoYXQgb25lIHNob3VsZCBzdGF5IGhlcmUuDQo+DQo+PiArDQo+PiArCWZv
ciAoaW50IHNjYWxlcl9pZCA9IDA7IHNjYWxlcl9pZCA8IGNydGMtPm51bV9zY2FsZXJzOyBzY2Fs
ZXJfaWQrKykgew0KPj4gKwkJY3RsID0gaW50ZWxfZGVfcmVhZChkaXNwbGF5LCBTS0xfUFNfQ1RS
TChjcnRjLT5waXBlLCBzY2FsZXJfaWQpKTsNCj4+ICsJCWlmICgoY3RsICYgKFBTX1NDQUxFUl9F
TiB8IFBTX0JJTkRJTkdfTUFTSykpID09IChQU19TQ0FMRVJfRU4gfCBQU19CSU5ESU5HX1BJUEUp
KQ0KPj4gKwkJCXJldHVybiBzY2FsZXJfaWQ7DQo+PiArCX0NCj4+ICsNCj4+ICsJcmV0dXJuIC0x
Ow0KPj4gK30NCj4+ICsNCj4+ICB2b2lkDQo+PiAgc2tsX3Byb2dyYW1fcGxhbmVfc2NhbGVyKHN0
cnVjdCBpbnRlbF9kc2IgKmRzYiwNCj4+ICAJCQkgc3RydWN0IGludGVsX3BsYW5lICpwbGFuZSwN
Cj4+IEBAIC05NTAsMTkgKzk2NSwxMSBAQCB2b2lkIHNrbF9zY2FsZXJfZ2V0X2NvbmZpZyhzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4+ICAJc3RydWN0IGludGVsX2Rpc3Bs
YXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KGNydGNfc3RhdGUpOw0KPj4gIAlzdHJ1Y3Qg
aW50ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjKTsN
Cj4+ICAJc3RydWN0IGludGVsX2NydGNfc2NhbGVyX3N0YXRlICpzY2FsZXJfc3RhdGUgPSAmY3J0
Y19zdGF0ZS0+c2NhbGVyX3N0YXRlOw0KPj4gLQlpbnQgc2NhbGVyX2lkOw0KPj4gLQl1MzIgcG9z
LCBzaXplOw0KPj4gLQ0KPj4gIAkvKiBmaW5kIHNjYWxlciBhdHRhY2hlZCB0byB0aGlzIHBpcGUg
Ki8NCj4+IC0JZm9yIChzY2FsZXJfaWQgPSAwOyBzY2FsZXJfaWQgPCBjcnRjLT5udW1fc2NhbGVy
czsgc2NhbGVyX2lkKyspIHsNCj4+IC0JCXUzMiBjdGw7DQo+PiAtDQo+PiAtCQljdGwgPSBpbnRl
bF9kZV9yZWFkKGRpc3BsYXksIFNLTF9QU19DVFJMKGNydGMtPnBpcGUsIHNjYWxlcl9pZCkpOw0K
Pj4gLQkJaWYgKChjdGwgJiAoUFNfU0NBTEVSX0VOIHwgUFNfQklORElOR19NQVNLKSkgPT0gKFBT
X1NDQUxFUl9FTiB8IFBTX0JJTkRJTkdfUElQRSkpDQo+PiAtCQkJYnJlYWs7DQo+PiAtCX0NCj4+
ICsJaW50IHNjYWxlcl9pZCA9IHNrbF9waXBlX3NjYWxlcl9nZXRfaHdfc3RhdGUoY3J0Y19zdGF0
ZSk7DQo+DQo+SSBkb24ndCBsaWtlIGhpZGluZyBzdHVmZiB3aXRoIHBvdGVudGlhbCBzaWRlIGVm
ZmVjdHMgaW5zaWRlIHRoZSB2YXJpYWJsZSBkZWNsYXJhdGlvbiBibG9jay4gT25seSBwdXJlIGZ1
bmN0aW9ucyBzaG91bGQgYmUgY2FsbGVkIHRoZXJlLiBTbyBpdCdzID5iZXR0ZXIgdG8gZG8gdGhl
IGZ1bmN0aW9uIGNhbGwrYXNzaWdubWVudCBqdXN0IGJlZm9yZSB0aGUgPDAgY2hlY2suDQo+DQo+
QXBhcnQgZnJvbSB0aGF0IGl0IGFsbCBsb29rcyBnb29kIHRvIG1lLiBTbyB3aXRoIHRoYXQgYWRq
dXN0ZWQgdGhlIHNlcmllcyBpcw0KPlJldmlld2VkLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxl
LnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPg0KPkJ1dCBsb29rcyBsaWtlIHlvdSBmb3Jnb3Qg
dG8gY2MgaW50ZWwteGVALiBXZSBkbyB3YW50IHhlIENJIHJlc3VsdHMgYmVmb3JlIG1lcmdpbmcu
Li4NCj4gDQoNCldpbGwgcmVwb3N0IGNvcnJlY3RlZCB2ZXJzaW9uIGxhdGVyIHNpbmNlIG5vdyBJ
IGRvbid0IGhhdmUgYWNjZXNzIHRvIG15IGRldiBib3guIEFuZCB0aGFua3MgZm9yIHRoZSByZXZp
ZXcgPSkNCg0KQlIsDQpNaWNoYcWCDQo=
