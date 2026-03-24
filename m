Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id NECaLgcMwmnKZAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2026 04:59:03 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0917D301E7A
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2026 04:59:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4BD610E089;
	Tue, 24 Mar 2026 03:58:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F+seMutJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C10D010E008;
 Tue, 24 Mar 2026 03:58:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774324739; x=1805860739;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=B8WZlHCWt8IjcGypEUgW/RJfKqCbX8+bAZtWCtQt5g4=;
 b=F+seMutJILc2Fmekqc0Ew5Ih1BfYnRmtCxT4ythCjL490PFL6hM3tvR8
 vF+s/ZA+SdUs68OhZlfLJvVx3iWQ/SlyPJ9o0dAaOJnVgFiNjPWz87EKk
 5Vgi9K6VNGTIS11+UFii/zTNynnzOJp02HHlIj85EZ6VyUNk9m3Z7Riov
 JL7isGpr4rKOafoU/5glpo8AXUIYQbqv49firDbgYzHY6ZFP9r2mfKkD9
 bsZvSYNLnoYBx8ZjYZO3U9TyNe1nJOEravdTVePm/bHDsYXAS5Qhg0e04
 vlm/HtOo63cTJTxbuHcYs1Dnbe6g6KG4uBVLuXfM/W4faXeVVphWUT2Qo A==;
X-CSE-ConnectionGUID: wG1sJQnhRgewzu/nyWLI+g==
X-CSE-MsgGUID: WsrR3ENQTNu1ckj5ULR09g==
X-IronPort-AV: E=McAfee;i="6800,10657,11738"; a="74354776"
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="74354776"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2026 20:58:58 -0700
X-CSE-ConnectionGUID: TMgop4u7Tqy/LrjeyzY0lA==
X-CSE-MsgGUID: MPdOtOTiTUy2BxE8jqBP9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="229165760"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2026 20:58:58 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 23 Mar 2026 20:58:57 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 23 Mar 2026 20:58:57 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.28) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 23 Mar 2026 20:58:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Q+YKAdXIe3j+usW10YITWFZ8EONKA9PJi8K3/c2hyPWuvUf8p0mLQstwlfraq4Hht6kVo/d+FgTd0JpgWUnslllRwjrsfBc7YtsByasivVTHmT83mMz9rXDQuMZNOzuvgCCuSeTi8KrjUb20GMvXIwCGR4rpKWRU16sWakVqB/wLOWpvTLVwCFMQpbDfqgL+5sVc7l+xD+dT7jqclLadn+2AwiPgPQDOu/S4PxrQvexgteGkqjBHl8lGu+WZ+cJmVZh3l3/eo/0nJ6qpeqm8tNbImkNTsedYUKHZxBMxEe/K/YD2jfAYScQxoz56lvcel3+4BFJNeZmZotBerEC37w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B8WZlHCWt8IjcGypEUgW/RJfKqCbX8+bAZtWCtQt5g4=;
 b=K0L570bydsxH8i2dwCNWPV/H+0zDvEsje+7HGaRgYN15hVfA3ohj5Tc26J1cEgzhvYPXD36lCAbx+oialIPRM4aTE1Cix6o3qC0uP8JwwvUZlyJ1chNsUjIKOeuyqyf08pgvm2vzcZJAO/3YbD2qmscjV67F+OuWmjbvY4FTW1GHSUuXOTaerFbo+I2ukYYIdRpH+TDsmMkO0ravqpMZvft0y8jbAQKqKLkYHq3zTz0GnYUB55ixyZoNlMbfacl7RPDgIsSMZPrO0YrhOlc4rCkQjc0YHi1/8+TUK+WC0R0M5vGEYe3L6gsdyzXoZQaw0vYXvUtYyKgNAJCPWSTksA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by MW4PR11MB7053.namprd11.prod.outlook.com (2603:10b6:303:221::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.20; Tue, 24 Mar
 2026 03:58:54 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7%6]) with mapi id 15.20.9745.019; Tue, 24 Mar 2026
 03:58:54 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Grzelak, Michal" <michal.grzelak@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Grzelak, Michal" <michal.grzelak@intel.com>,
 =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH v1] drm/i915/aux: use polling when irqs are unavailable
Thread-Topic: [PATCH v1] drm/i915/aux: use polling when irqs are unavailable
Thread-Index: AQHcmn9uoyvsDaJTM0OeO60C+clU9bW9PkHA
Date: Tue, 24 Mar 2026 03:58:54 +0000
Message-ID: <IA0PR11MB73072FD0F4A1F94AA63B5A04BA48A@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20260210111952.4138954-1-michal.grzelak@intel.com>
In-Reply-To: <20260210111952.4138954-1-michal.grzelak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|MW4PR11MB7053:EE_
x-ms-office365-filtering-correlation-id: ce78be29-aeba-4b7b-ccf7-08de8959aaef
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|10070799003|366016|1800799024|38070700021|22082099003|18002099003|56012099003|7053199007;
x-microsoft-antispam-message-info: Hlg02IZGDe6QZ8PN64xoKz5ocmVargWj1Amo8ib9WEKENoaYShA0x4Z2YfNtr4qlhIS1oh+PcnYnZLVdcZiDLH+mFTCJcF0vFJ02RGQCXxbSmDeK2Ig355eTs1mzuk5/qKyjxPvXqoGKvywG/zpWIW9kizbtIUv6EA4Ic0EesdHKYS/b47Aa7tMWQi/PXjcYjC6rluAv3vHKULYQ+vbPSefud5wq5YOOwvXpCBP1HIn/hKTgvwgr6UzSKHJUViosemuvCLJy0m7XDZGrhRg+DuARbPPVFs49JdBncAmx4HIWxPdPGi2okb04YtCCimlic8+WFKZT0MLP9gt283hKNaQc0ROmixrUfcBJt6e9RI2LHCHoGGzK/l8y+DHuzjsg6EcgOtJK3Znh/MXu3itPIVPR8FVa5P2GmOBNmQUxB4fX/LkfIZ7vXTAX9nXoqALE+89HcwoKb2Qn4/uq/wrXDpFxjcyPMHlPaH6Y6uG5sYYxJQJO9UNlKa03bsr9x3n8b+nQqChm8UL5StKNM+r6+kI3wkX+QH1yooaMQz1rkq2kw5c4KAMVsD4qVaJDwXJijyg/IPgphLJy3Tr5kDk/V3rJNK92cm8m4hEKDNv7U2HOM3Po4IgumddCMgl/v/ekkZSPy7r37cfqoJw7fn4wBbpqMm/w1EYymYLh/K/A7m8fGl2aLq6fVq7qmEkNnCdFjVSBBMXySotdeMNf6CYK23rOBi663YRpDX1lKrqeifZ+ZYJ0U7TLaQK7raDlEuidDSXQcs5ETwatl4Z7kcF+2bVv0yAfikSsigmDIUVq0gk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(366016)(1800799024)(38070700021)(22082099003)(18002099003)(56012099003)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RUNrMlJOM2UyTk5nRUxhWVVDL2RUYXNoODZpMktEbDJSaUJubTlmN3hteVZi?=
 =?utf-8?B?VTdPVEhQaCt1ak1WSGh4dC9ReE9rMzlYUVJoZVF1aSsrd0t2UjVvaHQ2YUpO?=
 =?utf-8?B?bDJvRXJaVEgxaExsejAwSFZGMEtuemthRTZ4Sm5GSzRQTXllSUU2R3E4MTVv?=
 =?utf-8?B?NEJOVFc2Zndsb3ZETFRGRFo2bXBTcktqNDc4UXJOdGZSTksyZzlQa0Vtd0M1?=
 =?utf-8?B?R1pOOXZPR2pDd2ozeDdaNWFmVmM4RWtxVUloSTYvREFNb0RzSFVYMG5UbWNq?=
 =?utf-8?B?dThzT3YrLzdWOGxoQUxEWFBlenNBT1JOaWh2RC9mRW1Eb1NhVk9WR0RSNkJw?=
 =?utf-8?B?M0tHL3hXVHhUREtTbmMyT3I5TmlEZWIxSWwwNFRhbzJxb2g0YzRzUmY0QVd5?=
 =?utf-8?B?eFZJZFpJN01KUGlkdkphdzNYMERBQXJObmpOdFJUK1kvZ2hNZjFYS1JnZVY3?=
 =?utf-8?B?WkJVUlJUMkVGeHM3MDNRNVZCeHZzd2p0YlEyMk9BbE5WSm45aUg0M0x3RHFV?=
 =?utf-8?B?bnRvNjdkeUxqbVRham8vR1UxaVBpYmxzZU5ya25VaEROZ3gzeTViV3E0NUlQ?=
 =?utf-8?B?MEZOaE1BQjlYYnU0c2RuSStadEg1NENJSTBmN3lJUDg1dU4rTVVwRnJUVVFh?=
 =?utf-8?B?Tmllbm15dWEzVHlybDBsMkRGMXF3clE1eXMrVityZnV6MmRPZkp3d1hURTA2?=
 =?utf-8?B?U1JQRTJiUm0rdnpBcTRZdmVBK25BeEY2RlNaMzAraHFJOHpGUUtXZ3RiRjBx?=
 =?utf-8?B?Y0VuaVpDWlIyYitCUVlZTzV3VHJjRm5YU0JEdHZ3SExPcE5LZTl1cTNLNUU1?=
 =?utf-8?B?ME1pUldmNXlNbnFKZnE1b0ZUNkc2VndadEZxV1RmVndBQmxKYmVDZXJhZmc5?=
 =?utf-8?B?VThjOVFCV0hET0x3UEpkT1pibTJTRHdyeDMxZmkrVUVERW1nMStLQndYRDRQ?=
 =?utf-8?B?bitQRXVBMUhRd0ZKSWx1THVRa1ltZkk3VFpHRGdRMmxzRVdnWENRaXdXRTdB?=
 =?utf-8?B?QldCaUtoRDQ4cElFaGR1Tm02NC8xd2FvUzNwVjdycEU3TzhON290UGt3cmdN?=
 =?utf-8?B?dkl6U2w1WE55YVZ1SzBia0FId3lST0ttbG5nU3RlQ2JEMGJoT2ZIQlFyYldS?=
 =?utf-8?B?RjU2QTlxaXVoUHZMUyt5dCtBbGNpbXJzZk5zanFQWDhqL2FBanduTkU1a3RW?=
 =?utf-8?B?K2p1WVJmMS9qWGlYTjJXSFUreURUT2I2alZvNFl6SjVzcldMUG90a2JYeW5q?=
 =?utf-8?B?Tjd3UWRNbjQzMHBCTjB5ODREOGtsczJCV25EeWt4RzFJM3ZHN2dibEg5Z1Y4?=
 =?utf-8?B?OWRuck1POERwQjVFVml2WS8rcTMzWkxuNy9hZDdGeU9mcG9TN0kwQnNBYVJF?=
 =?utf-8?B?azNkNkJsRXNJSVQrMTdlV3o5b1U5R08vZFNiczQ1VXY5M0dYNVlUOGluUWNS?=
 =?utf-8?B?REFDbmt2NklHdjdyWkZUMCtjQlh3YWdQSms3MnlLTkNNdnNRNXJmckplL0JU?=
 =?utf-8?B?bE5XREpkTWMyWUJKcjM5UU16aU8vNUt2QTNvL3U4WEdiM1ZqUGduOWZ5N1I2?=
 =?utf-8?B?OGlRUUdMVVg3cU1sL3ZtSFhHd21LZ2NMc3k5RDdiUzdZK1R6OUwzMzRORFVy?=
 =?utf-8?B?eDRCRUJEWjk2SmwrOHhsTzh0TEk5NTV2UE42ZU1RSkVoWXN3aW1TeGVKTDhm?=
 =?utf-8?B?TG1yTEdvRWVQMFFLWm5NRHlLc2tBdENtajVQVkxSdWljY1U4QmdVUXJob2pT?=
 =?utf-8?B?S1NYMTZGdmY0VEZrMHpKTU9vc0k0bUZKUWJBYXMrdHphbHJKTVRDYTFzb2dV?=
 =?utf-8?B?RmZ5Vkxvbll6OTVRWWx6R29yQTFxV3lBMTJNQXQ3UFQyVmRFV09RTll5U3dt?=
 =?utf-8?B?MGNDZCtkd1A5U1hMQjB1Tm1wM3gySUlHek1XZG54bVFxbVovVUdLN3Q2MzJX?=
 =?utf-8?B?emVpRXhXaHpyZk5venptTTk4cGlmblFqb3E0OGlxNGFVTWZLOWh6bUlsZC80?=
 =?utf-8?B?YldEUldOcTBWaGtDNmlWekhwT2QyTDFXRlFYS2tiQ2twRi9VZ0RMYmwyQ2tB?=
 =?utf-8?B?ZlR1bnFaa1NWU0V0Vm82c3M0SHhJUnZvNGpGeVAxcSttNWdLVEp2UUpMMVV2?=
 =?utf-8?B?Sk92ZHdkd3JFKy95NnFPV1R1UFBNV1dBUWs5S1BlNXhiMW91UTN3bm1NMHFE?=
 =?utf-8?B?SUFHOThOL0VXUDAvamlSWS93WlZXN3hLdUMraDRFT1RiNDQwOHJRRzZVMDNU?=
 =?utf-8?B?OHJ1TlE4eTBoV2NGbnR3eVA4YWhJYU1POXlXYjVrSFdJOVBIYnJvR1ZFL3hj?=
 =?utf-8?B?QXJRY0h5d21YNksxZHlJRzErWTlsS3ljejEwQ3AwcVIzRGc5MWozclRLUU1Q?=
 =?utf-8?Q?7nYGOm7EKKuqNv0RJcTRHZb45Utpy5LKWAL9wpE6fP8QS?=
x-ms-exchange-antispam-messagedata-1: RqSHu5W0U4kGbQ==
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: n8LV+LkGRb5IQ/lvNWzhh+pxkrCWUL2QDYxKtx4a21tAYzV7Fmuv4iMqXEH9G7UHEUSdhdhv4QfcvRC381WXKEp8FuXccm77cvp3hX7cA1qSc39A7lwph7NdQBMjcclgs7f1X/u19nKp5IvJS4Ku8ANSLMYMS7S6pjItKDh70LPBsLy55nIhIV2Bg9hwDg3zjH7BN3fcEqZRKhL2uAbxAUi2MbeppyGDMg0S8EJgGk0RcEQv5nNKK6kvBAPksSUieE/gRPdoJg8Lp9XwsCTtXPVGd6zvmJu31bq6dwLH0h7GEXQSsEfenaG9v8CMKQ/d6PONxCeL0i2R4R/Lem8WMA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ce78be29-aeba-4b7b-ccf7-08de8959aaef
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Mar 2026 03:58:54.5930 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1OfPLvq1zZo/+7d6zik+uO+LXJBgL8LZX7YSDiotIZQdHp+UdJbQVFLzTGhnBq/c+dE4/cTyLHhw7rWsjyyXqg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7053
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,xe_guc_mmio_send_recv:email,lists.freedesktop.org:email,IA0PR11MB7307.namprd11.prod.outlook.com:mid];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.985];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 0917D301E7A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEludGVsLWdmeCA8aW50ZWwt
Z2Z4LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgTWljaGHFgg0K
PiBHcnplbGFrDQo+IFNlbnQ6IFR1ZXNkYXksIEZlYnJ1YXJ5IDEwLCAyMDI2IDQ6NTAgUE0NCj4g
VG86IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZw0KPiBDYzogR3J6ZWxhaywgTWljaGFsIDxtaWNoYWwuZ3J6ZWxha0BpbnRlbC5j
b20+OyBWaWxsZSBTeXJqw6Rsw6QNCj4gPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiBTdWJqZWN0OiBbUEFUQ0ggdjFdIGRybS9pOTE1L2F1eDogdXNlIHBvbGxpbmcgd2hlbiBpcnFz
IGFyZSB1bmF2YWlsYWJsZQ0KPiANCj4gUFRMIHdpdGggcGh5c2ljYWxseSBkaXNjb25uZWN0ZWQg
ZGlzcGxheSB3YXMgb2JzZXJ2ZWQgdG8gaGF2ZSA0MHMgbG9uZ2VyDQo+IGV4ZWN1dGlvbiB0aW1l
IHdoZW4gdGVzdGluZyB4ZV9mYXVsdF9pbmplY3Rpb25AeGVfZ3VjX21taW9fc2VuZF9yZWN2Lg0K
PiBUaGUgaXNzdWUgaGFzIG5vdCBiZWVuIHNlZW4gd2hlbiByZXZlcnRpbmcgY29tbWl0IDQwYTlm
NzdhMjhmYSAoIlJldmVydA0KPiAiZHJtL2k5MTUvZHA6IGNoYW5nZSBhdXhfY3RsIHJlZyByZWFk
IHRvIHBvbGxpbmcgcmVhZCIiKS4NCj4gDQo+IEFwcGFyZW50bHkgdGhlIGNvbmZpZ3VyYXRpb24g
c3VmZmVycyBmcm9tIG5vdCBoYXZpbmcgQVVYIGVuYWJsZWQgd2hlbiB1c2luZw0KPiBpbnRlcnJ1
cHRzLiBPbmUgcHJvYmFibGUgY2F1c2UgY2FuIGJlIHhlIGVuYWJsaW5nIGludGVycnVwdHMgdG9v
DQo+IGxhdGU6IGludGVycnVwdHMgbmVlZCBtZW1vcnkgYWxsb2NhdGlvbnMgd2hpY2ggY3VycmVu
dGx5IGNhbid0IGJlIGRvbmUgYmVmb3JlDQo+IHRoZSBkaXNwbGF5IEZCIHRha2VvdmVyIGlzIGRv
bmUuDQo+IA0KPiBBcyBmb3Igbm93LCB1c2UgcG9sbGluZyBmb3IgQVVYIGluIGNhc2UgaW50ZXJy
dXB0cyBhcmUgdW5hdmFpbGFibGUuDQo+IA0KPiBGaXhlczogNDBhOWY3N2EyOGZhICgiUmV2ZXJ0
ICJkcm0vaTkxNS9kcDogY2hhbmdlIGF1eF9jdGwgcmVnIHJlYWQgdG8gcG9sbGluZw0KPiByZWFk
IiIpDQo+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
Pg0KPiBTaWduZWQtb2ZmLWJ5OiBNaWNoYcWCIEdyemVsYWsgPG1pY2hhbC5ncnplbGFrQGludGVs
LmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2F1
eC5jIHwgMjAgKysrKysrKysrKysrKysrKy0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAxNiBpbnNl
cnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4LmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwX2F1eC5jDQo+IGluZGV4IGIyMGVjM2U1ODlmYWQuLjljOWI2NDEw
MzY2ZDUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHBfYXV4LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9h
dXguYw0KPiBAQCAtMTIsNiArMTIsNyBAQA0KPiAgI2luY2x1ZGUgImludGVsX2RwLmgiDQo+ICAj
aW5jbHVkZSAiaW50ZWxfZHBfYXV4LmgiDQo+ICAjaW5jbHVkZSAiaW50ZWxfZHBfYXV4X3JlZ3Mu
aCINCj4gKyNpbmNsdWRlICJpbnRlbF9wYXJlbnQuaCINCj4gICNpbmNsdWRlICJpbnRlbF9wcHMu
aCINCj4gICNpbmNsdWRlICJpbnRlbF9xdWlya3MuaCINCj4gICNpbmNsdWRlICJpbnRlbF90Yy5o
Ig0KPiBAQCAtNjAsMTggKzYxLDI5IEBAIGludGVsX2RwX2F1eF93YWl0X2RvbmUoc3RydWN0IGlu
dGVsX2RwICppbnRlbF9kcCkNCj4gIAlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRv
X2ludGVsX2Rpc3BsYXkoaW50ZWxfZHApOw0KPiAgCWk5MTVfcmVnX3QgY2hfY3RsID0gaW50ZWxf
ZHAtPmF1eF9jaF9jdGxfcmVnKGludGVsX2RwKTsNCj4gIAljb25zdCB1bnNpZ25lZCBpbnQgdGlt
ZW91dF9tcyA9IDEwOw0KPiArCWJvb2wgZG9uZSA9IHRydWU7DQo+ICAJdTMyIHN0YXR1czsNCj4g
LQlib29sIGRvbmU7DQo+ICsJaW50IHJldDsNCj4gDQo+ICsJaWYgKGludGVsX3BhcmVudF9pcnFf
ZW5hYmxlZChkaXNwbGF5KSkgew0KPiAgI2RlZmluZSBDICgoKHN0YXR1cyA9IGludGVsX2RlX3Jl
YWRfbm90cmFjZShkaXNwbGF5LCBjaF9jdGwpKSAmDQo+IERQX0FVWF9DSF9DVExfU0VORF9CVVNZ
KSA9PSAwKQ0KPiAtCWRvbmUgPSB3YWl0X2V2ZW50X3RpbWVvdXQoZGlzcGxheS0+Z21idXMud2Fp
dF9xdWV1ZSwgQywNCj4gLQkJCQkgIG1zZWNzX3RvX2ppZmZpZXNfdGltZW91dCh0aW1lb3V0X21z
KSk7DQo+ICsJCWRvbmUgPSB3YWl0X2V2ZW50X3RpbWVvdXQoZGlzcGxheS0+Z21idXMud2FpdF9x
dWV1ZSwgQywNCj4gKw0KV29uZGVyIGlmIHRoaXMgaXMgYSBjb3JuZXIvZXJyb3IgY2FzZSwgYXMg
dG8gaG93IGludGVycnVwdHMgYXJlIGRpc2FibGVkLg0KUmF0aGVyIEkgZmVlbCBzaG91bGQgZmlu
ZCBvdXQgd2h5IGludGVycnVwdHMgYXJlIGJlaW5nIGRpc2FibGVkLCBpZiB0aGlzIHdvdWxkIGJl
IGEgdmFsaWQgc2NlbmFyaW8gdGhlbiBpbiBtb3N0IG9mIHRoZSBwbGFjZXMgd2hlcmUgd2FpdF9l
dmVudF90aW1lb3V0KCkgaXMgdXNlZCBpbiBkcm0gd2Ugc2hvdWxkIGNoZWNrIGlmIHBhcmVudF9p
cnEgaXMgZW5hYmxlZCEgSW4gdGhhdCBjYXNlLCBjYW4gdGhpcyBiZSBhIHdvcmthcm91bmQgPw0K
DQpUaGFua3MgYW5kIFJlZ2FyZHMsDQpBcnVuIFIgTXVydGh5DQotLS0tLS0tLS0tLS0tLS0tLS0t
LQ0KPiBtc2Vjc190b19qaWZmaWVzX3RpbWVvdXQodGltZW91dF9tcykpOw0KPiArDQo+ICsjdW5k
ZWYgQw0KPiArCX0gZWxzZSB7DQo+ICsJCXJldCA9IGludGVsX2RlX3dhaXRfbXMoZGlzcGxheSwg
Y2hfY3RsLA0KPiArCQkJCSAgICAgICBEUF9BVVhfQ0hfQ1RMX1NFTkRfQlVTWSwgMCwNCj4gKwkJ
CQkgICAgICAgdGltZW91dF9tcywgJnN0YXR1cyk7DQo+ICsNCj4gKwkJaWYgKHJldCA9PSAtRVRJ
TUVET1VUKQ0KPiArCQkJZG9uZSA9IGZhbHNlOw0KPiArCX0NCj4gDQo+ICAJaWYgKCFkb25lKQ0K
PiAgCQlkcm1fZXJyKGRpc3BsYXktPmRybSwNCj4gIAkJCSIlczogZGlkIG5vdCBjb21wbGV0ZSBv
ciB0aW1lb3V0IHdpdGhpbiAldW1zIChzdGF0dXMNCj4gMHglMDh4KVxuIiwNCj4gIAkJCWludGVs
X2RwLT5hdXgubmFtZSwgdGltZW91dF9tcywgc3RhdHVzKTsgLSN1bmRlZiBDDQo+IA0KPiAgCXJl
dHVybiBzdGF0dXM7DQo+ICB9DQo+IC0tDQo+IDIuNDUuMg0KDQo=
