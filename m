Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B83E8C9A75F
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Dec 2025 08:35:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC10010E54C;
	Tue,  2 Dec 2025 07:35:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R/oCgWa3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EFD110E54C;
 Tue,  2 Dec 2025 07:35:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764660925; x=1796196925;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NrYB3/QIvvfE7zewmbuv+z9cLkUVnCMWp/XW4EAxK1M=;
 b=R/oCgWa3EcDDZ3ueyey5yGaTL2BCRHJIIEgwfmtjYnuE3wZxrOqQ8cBK
 SaZiQch8mydz5wQUARXMPdoNewB15bozVRZO9yE9vjRt51wGykkJ+/XxD
 zgXzegbOaPa0jnuDrgzMkQMwtOHJeJlYQ5J+YTPo1wfyhe0ugFceyqSsv
 L03N1cUx8O3fcDJaM3GwXqiPxl3gOYNwMcI4/3I7imGH7ZhET7OoibE81
 VlyKSjzeblbk5xKIAGH7RJsTsdAwyEyf2xR9BhSX/4nkjyN1o+GlJFzP3
 VfmLWbFeCGV57DtEfPiHv/vREuHVXsCWxwlCmvEwKB7QILp9MJp2DMaxT w==;
X-CSE-ConnectionGUID: 3ckoykl4TPyAjW0PlqTyJw==
X-CSE-MsgGUID: eEzJP/oBS+OVc1N5NsVt0w==
X-IronPort-AV: E=McAfee;i="6800,10657,11630"; a="76938349"
X-IronPort-AV: E=Sophos;i="6.20,242,1758610800"; d="scan'208";a="76938349"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 23:35:24 -0800
X-CSE-ConnectionGUID: vLpafMGVSDqmnTlHTLUe3g==
X-CSE-MsgGUID: 2bpKD4K7RfKBLC1NFAxocA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,242,1758610800"; d="scan'208";a="195114017"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 23:35:23 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 1 Dec 2025 23:35:23 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 1 Dec 2025 23:35:23 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.33) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 1 Dec 2025 23:35:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DULIiXD+RnNSk+TEuVBuEvD94/9L4k7mT3U5sonZsl7lWQeqFzgtmImGbP0Qe9T1yu7s6pRyYmWSbSiqasPQIraLbooaXXGVybXVYhMsDbJTC3H5H9+1jR7xmBIFtVcEXG42iivhi0pRJpu0DwqWcsCKyzSMBt1n4BvJBHGXJfRtX4/p8LbBMRUV5SVzTuQcLgFV3cnzGSEZAVRjq9GXrRmLgcrCjaGlOzj+ma/FIDhC5lcYaV4VgiASYaiSnDMn9iFVifEeU8arrMMsYbNQXrS+enTvYqiee3Rr2a/XtJ2njfO6/PCB8W+YOEEkVyEoDt1hhZ+XfayKuV34SHGdag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NrYB3/QIvvfE7zewmbuv+z9cLkUVnCMWp/XW4EAxK1M=;
 b=XH/8bieXhbGqLk0SuQIrwWLvLzSqowUNd/lmJFTKutXG3VbbqCim7of2L2OisPria95puKA0E4Tt7CO2aD2l64n4Wpno5lx8yLZGfTKNiVE2fscbwf0zxxDypUubgJsrheS3pos/bNSKDsm2kb1dBiI5Uq17isvWcv6w6PVgM7uanFRcaGF9d2Rt+1J92lXXhkWEGW7/OGsAoxFBpU+o/WYQV7zFugWLT33DjWWGOeJEW4m3o5pPwC6nA5/Osn4n2rgpEaM/5mzs4iDN/UNZN8fy96te7Xb8aT6dNhVx7D8Q17d0JEiuxlsclLSmaAiZ8Lo8P/YNv/T1eIapwEcPJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by MN0PR11MB6231.namprd11.prod.outlook.com (2603:10b6:208:3c4::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.17; Tue, 2 Dec
 2025 07:35:20 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%4]) with mapi id 15.20.9388.003; Tue, 2 Dec 2025
 07:35:20 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH v9 13/17] drm/i915/display: Wait for VRR PUSH status update
Thread-Topic: [PATCH v9 13/17] drm/i915/display: Wait for VRR PUSH status
 update
Thread-Index: AQHcX36CdrIrJjm50U6eQLNd/nwepbUIFQwAgAXoOMA=
Date: Tue, 2 Dec 2025 07:35:20 +0000
Message-ID: <IA1PR11MB634866D489649379E9EE74CEB2D8A@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20251127091614.648791-1-mitulkumar.ajitkumar.golani@intel.com>
 <20251127091614.648791-14-mitulkumar.ajitkumar.golani@intel.com>
 <3d24eced-5cdf-45b7-b5a0-f0b2d47ab3cd@intel.com>
In-Reply-To: <3d24eced-5cdf-45b7-b5a0-f0b2d47ab3cd@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|MN0PR11MB6231:EE_
x-ms-office365-filtering-correlation-id: b61d1aec-5992-46dc-0fdf-08de31755901
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?U0JhbHowQzJMTTR0d1FDWFBscHdRVjNmV0ttalVWdmZSWElrZnZoaXdjck1U?=
 =?utf-8?B?QWNETTFVWVFuaGJrdXhiQUJIMGx2Z2trM3lJVnNkK1ErNEZCRFRwUzVEOFZl?=
 =?utf-8?B?Uzd0OHJTSHU5NVk3NWMvWEJqZzl2ZFpROUhNeDBqK0xZbk4zQWVzVnhZbDFj?=
 =?utf-8?B?WEN2SGMrNFA4OUNOS0V0TDRRajB4a0wzMzBVbExjbzRFcVBiUTZ5K0VobTc5?=
 =?utf-8?B?azdFK2ZYUGJpTU54cnBtS2JuejVQWlVsNHFxd0JWUEJNeUprS1A0Sk9NYlZP?=
 =?utf-8?B?cGZkWVU0Z1RhSk9JTldmWlRaV1F5Ny9nQTFMUUkrYWh5VElsaTBuOGRFY1Zr?=
 =?utf-8?B?MHp2Q1ArVTI2QW1JRVFRRURHUUVVSXlLTUl0STA0TXFubVJNTmFiWUJnMXVw?=
 =?utf-8?B?R3JqZFJyejFTUkFKNy9iUXNQa1JHbythTTBWbHRoc3h5SUk0cWFqQ1MvSFpV?=
 =?utf-8?B?Q3RMUCtZWFZqODZhVnYvVjFGNkR4NEltL0NsRVpMeGVJeTVFZUpjUTY5SlZh?=
 =?utf-8?B?RmVMRzRDMGM5enZYeUFaWHhjbXJIaGRzeFVRT2RZZnlONFdtMUxlRGVnTUxj?=
 =?utf-8?B?TVdaZXJWL0FvWS9wekdJanJxSVFvdlIveis0SE9DMXB2QUUxL1ZMTHB6UzlR?=
 =?utf-8?B?UUZrNzluMnQwYm9Pdlp1N1BqNEx4Y3h6SWxBdXhOZ1BuZERsUS91bzg5YXVh?=
 =?utf-8?B?RTdJcUFEMXRva0JDK25OU1dtRVhQWmR4RGViVkFvOURINDFsbm9DTGNGZ2tH?=
 =?utf-8?B?OTB3VWN2K0V5MFlscjNpNEVnNWpqaXAvejVNZUo5WHozY2pRSlpMb0dxNSt6?=
 =?utf-8?B?VWx6ZkxHcnkvVGkwL2FDRFRBYjQyV0w1ekFsRnZqOEZ5TG9CMDFEdGhOdDc5?=
 =?utf-8?B?cG8wTGM5L05PNWZkZi9IT0NTQit2U1dEaWJzTmp2c0I4UXpRdjRrWDVRVEN1?=
 =?utf-8?B?ODRVUVhheXZsdzdEcnNNczBWclZKbWtVRmova0dpaCtJcEJyNVRIazFJcDBM?=
 =?utf-8?B?WllXQmd6c0ZtV1hIMVBVRE9BV3F5KzZMRlRvaXpYdVdXeklZVjhta1FweGxs?=
 =?utf-8?B?TVNScUNTSEhFWDZWTUdlQjZJZGZiME05TFErWStrUjUrZFB5VGxNT1JWU2hF?=
 =?utf-8?B?TWNYTmVPMWtlZUpyTHhHd1NmVUdYbTltdklVYmVPb2EvU3A0VWJ2MFpKeHpI?=
 =?utf-8?B?Z0ZaMHhRcktlUUNobXBId1dEMGRvTTR6MGN3bEh1MXdScnFNb21QV0tRdjNk?=
 =?utf-8?B?YS9UMTNEcC9iZXBWNUhKOTFzL2NSOVNUaFFhbk9PR2FyaXBGRGpEY3p3TE5F?=
 =?utf-8?B?dUFDK05ZN2RzSlJvYTdhckVVQVdieFczSVMxNzFycGJxSzlqOEd6Yk5XSDZz?=
 =?utf-8?B?aXZoVWxiOHJXWCs0bXQ2TTY2eFBlZHJ3MExxMmZvWGJOMDhmb1ZrVmJSLzd1?=
 =?utf-8?B?ZWkrYXRsdkREN2lmMUJNd05GUEloZ0M1V29qdTJvQmFGaEpCdUFwcGdLM2Q3?=
 =?utf-8?B?WWxzc1hCY1VYanFXbCt1YUp5b1laNE1Ea0piRXduYm1Ib2FnQ3pBd05KQWNN?=
 =?utf-8?B?NEFSZGJYQTltdGlvamw2eVZ4OXJCQWZialVibC9FZGs3QWhocjFBUWVTc05l?=
 =?utf-8?B?aFhoeXJ2QWpTZFZWOWJHQy85cXIvUXRYakhQU0ZrOWVpOEwzMFlXODRUelNV?=
 =?utf-8?B?dlk0cDZvMXhMcHZ4bkUxbXNsT1FJdlRJUE9IbEdCWHFHSFRvVHlubVp6YVVI?=
 =?utf-8?B?cC9VOXFzN2Q0L2YxZGsxWkpvSkZFL3IxWEhEWU9FRXgxN1o2bnB4cjdOTll4?=
 =?utf-8?B?d2FyUW1YemV4UWxEZDRyd1dIQVBBQ0R3QTB6VHpOMW40aTdBN2hBWFQzK2Ix?=
 =?utf-8?B?OUUxeW42endScmozdnUwazVmYk0rS0tSV2hCR0lDeDB1SVBDL0tCRGFITTRu?=
 =?utf-8?B?a3RhamNhYmFlaWJFZkhXZnFkNU55cG1LSDVMSHgvd3EyOVBwUDZ0MUZ0TEhP?=
 =?utf-8?B?VVVsNVBiZHh2RWlNNlpLV3UvMWRvc1ZIK1Z2WngxWGt0MmhZTTRMbzhoT2VD?=
 =?utf-8?Q?gpy7Me?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bXQrTlIyWmpWdGNGRTJabmkxelhaU2d5ZWc2VUF3U2tNbms3SHpMVU02K2JD?=
 =?utf-8?B?a1R3ZVEwNW5nNmRzTG9QSFB4Z3FWTTVvZEpGQWEzZWxtdFhwUEd0NGZpZUoy?=
 =?utf-8?B?aDhEamdGdFhVM1JwcHpSS0J4OXBGN2V3MytoRU9UU2wvUThrU3pKTEFmTTQ4?=
 =?utf-8?B?cHRybG8xTXU3VjRqL2dSc0VjUTAyenhaK2RhSzFwMWxpS3hIUVhaR2VubnFh?=
 =?utf-8?B?VlpJSlluOFlJRlFjN1BhWVFxSVpDWW44em9UdWQwV2o3OXRtb3lqUU43bUhw?=
 =?utf-8?B?RzNtc1F1UWQwejE0UEF4RXpYN2JubWxrRmZQbUQ1MVVtaklJYmM1ajVIK0U3?=
 =?utf-8?B?dnQ0bHd5YmZuQUxObDc0TngxdHpTNDNCYldkSXdwdVpTK3RJV1ZwR01KQVNq?=
 =?utf-8?B?Rit5bndiZDR1NERkT282SzlUZ2xpem42Q2wyeThjaWhiL2QrTWZVREpPK0dP?=
 =?utf-8?B?SWhkSzVJK0hmVXYramVjWHFoQm8rL2F3ZTFubE5nVVNPd2dnTUZHWUYzK2FP?=
 =?utf-8?B?Zjk0QlRvWXFtR0FDcHVPSnJtbjlCa04vQlFmVXhPY2ZOWXIwMERFNjBhM0Ux?=
 =?utf-8?B?TUt2MEdldWNLSGlGRkdLblYzWkJ3VWowZFhlME93cnFla0JJVGlrVzNPc29s?=
 =?utf-8?B?dnB2UlppRWlDWHRlOUpZcTZTaVRXOFU5YzNOaEFCelhkcFdDZEdEQzVQb3RF?=
 =?utf-8?B?dkFjNW1hdTMrbDEzZktWQzZWeFYrbHo5VWRranNiLzhwbm5zbmFiWERhZER1?=
 =?utf-8?B?TElRTWxpY0R1YmZqQjVPc2NaTzl5S0Y1dTZIZjdDeXJORmZNeE1mWjd0VWUy?=
 =?utf-8?B?N2JXaGRwdUNoVFJ4UFNRQ0FUKzJCWU9CRmFyWU00a290c0E3eEg3dStzdmwr?=
 =?utf-8?B?Yk9JVjN1MVplNjU3QjZPbnR4YWg4MlNlK3pkSHJHVXBTTDY0bC9ra3FxQitz?=
 =?utf-8?B?eG1kTlE2M1pmZmI1S3RYdlR1cXUvU1pWeXk5Uys2MzVibkpVaDhVU1JLVUxL?=
 =?utf-8?B?aHk4Y2RnSGNGTk9mWDFBeUVpWFduZG1KbzZLeDdRQ1lKaDdrMkdWV2ZsbHcy?=
 =?utf-8?B?TSsrTkFxc0JoTGxndWtaWkR0U0VsdEh0ajU2Tm9vNzRDYmhLZEJJalo3TG1P?=
 =?utf-8?B?NnA2N3JjUTVqSkNBdnVHMGZLb2NCSENuTG1ydTd0K1diWlFuczVyMk1naVBJ?=
 =?utf-8?B?SFNBbTM5M29KTGhFUjlXNnBkdkxNTGlmTlNFejVERFJlczlWWlVrR1hHOTdo?=
 =?utf-8?B?a3Z2a3BEcGo3SFFLMjh1YjI2b3JERFYwMjdzNFVRWFBQK1RhelJ6djh0clNB?=
 =?utf-8?B?Ums4cGMra3RwTDltZ24wSklWNGNpSFZDeDNDQy9sYVZ4ZzFkRmF1VUFpbzJR?=
 =?utf-8?B?SHYvVVl0SUxWb0VVcDdtS1Y4NFM4RXZheFdGY2lmUk9oNE1rR1FJY3dGei9O?=
 =?utf-8?B?Y0pKRnBNNkhCWXJOQ1I0OWk3ZG1ZUDdibUtFOGNoRzQxMndudjVFVGl3eTZI?=
 =?utf-8?B?dzFobFlVZUNOQTRqQ1htWmpuTHphNE4veHVBcXlISGlCNTNoOTlrcEhRcXJw?=
 =?utf-8?B?cXpaWE14bmprYjFuZEhpWkhTOFdYaEkydDZkZkNrb1lkcEFhcmc0Vy9teHVm?=
 =?utf-8?B?L0RSa0I3LzBDdnlHU0Y0UWh4dCtDRGtOUUR2WDBHYzJ0eThWakdnZUJERDY0?=
 =?utf-8?B?SW85RkdlR2xZSVFFditmM1c1THFsVjBMdGI3T0dtNFNTWkVXc05oK2tyTEo5?=
 =?utf-8?B?YkhSa2tzcVNOK0VVZ2xSOHRyQVlwb28zRnhsdTl0OUZsaFh1eW9mQVoxa1BT?=
 =?utf-8?B?MndkemNPM1R6NHJBTTNTVHJGTzdXQkU0dWdKekRFL2RML3dkSGlOeUltQ1dK?=
 =?utf-8?B?dVJZc2diYXh5RklHWDZveVorUmRveGZIWVdxekZhaHhCV0xHeXhhd0pyYUhN?=
 =?utf-8?B?TGRDSHh5bEpGT3ZHdUFrQ2M5RXNETkliMmtKRm11Ti9tZEJGRkFDc1A3a1BV?=
 =?utf-8?B?Y0xaVnhFWUIyR0NkVDg3TVdWZTEzZDQ4UEltZWJTUU1nbHRRb0JOeFdCRjlF?=
 =?utf-8?B?RTJIQUlFUHpHNUZlQzB0OGlhblBDUWorNmlvWFliL1dRcVJSWk1ONmxwaXUr?=
 =?utf-8?B?eE1oazNYbWZCdnJKS0pTQWJXZEptYndwTnhoS3k2VndueURXV0tWWHF3UjB2?=
 =?utf-8?Q?KOEj2wNIiXtQ1EmzwVtbUS4=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b61d1aec-5992-46dc-0fdf-08de31755901
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Dec 2025 07:35:20.6736 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ew+oywfDiRGsa74f0ylVQG1mrqqvP1MIJdDeTyLJ4rDm2L+CyIKEU+OoWOhnbySqVwbrat17FXPctgcgWTON0ik0/7I9MjssdWe6drpkaEF6xOLdkzQDMKMGWjtbqxqW
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6231
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTmF1dGl5YWwsIEFua2l0
IEsgPGFua2l0LmsubmF1dGl5YWxAaW50ZWwuY29tPg0KPiBTZW50OiAyOCBOb3ZlbWJlciAyMDI1
IDE4OjUyDQo+IFRvOiBHb2xhbmksIE1pdHVsa3VtYXIgQWppdGt1bWFyIDxtaXR1bGt1bWFyLmFq
aXRrdW1hci5nb2xhbmlAaW50ZWwuY29tPjsNCj4gaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZw0KPiBDYzogaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyB2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbQ0KPiBTdWJqZWN0OiBSZTogW1BBVENIIHY5IDEzLzE3XSBkcm0vaTkx
NS9kaXNwbGF5OiBXYWl0IGZvciBWUlIgUFVTSCBzdGF0dXMNCj4gdXBkYXRlDQo+IA0KPiANCj4g
T24gMTEvMjcvMjAyNSAyOjQ2IFBNLCBNaXR1bCBHb2xhbmkgd3JvdGU6DQo+ID4gQWZ0ZXIgVlJS
IFB1c2ggaXMgc2VudCwgbmVlZCB0byB3YWl0IHRpbGwgZmxpcGxpbmUgZGVjaXNpb24gYm91bmRh
cnkNCj4gPiB0byBnZXQgUHVzaCBiaXQgdG8gZ2V0IGNsZWFyZWQuDQo+ID4NCj4gPiAtLXYyOg0K
PiA+IC0gQWRqdXN0IGRlbGF5cyB0byB2cnIgdm1pbiB2YmxhbmsgZGVsYXlzLiAoQW5raXQpDQo+
ID4NCj4gPiAtLXYzOg0KPiA+IC0gQ2hhbmdlIGludGVsX3Zycl92bWluX3NhZmVfd2luZG93X2Vu
ZCgpIHNvIHRoYXQNCj4gPiBpbnRlbF9kc2Jfd2FpdF9mb3JfZGVsYXllZF92YmxhbmsoKSB1c2Vz
IGNvcnJlY3QgZGVsYXkuIChBbmtpdCkNCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IE1pdHVsIEdv
bGFuaSA8bWl0dWxrdW1hci5haml0a3VtYXIuZ29sYW5pQGludGVsLmNvbT4NCj4gPiAtLS0NCj4g
PiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmMgfCAxNyArKysrKysr
KysrKysrKystLQ0KPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKyksIDIgZGVs
ZXRpb25zKC0pDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF92cnIuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF92cnIuYw0KPiA+IGluZGV4IDExZjA2YTViODU0YS4uZTVjZmYzODkyY2IxIDEwMDY0NA0KPiA+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmMNCj4gPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5jDQo+ID4gQEAgLTEwODEs
MTAgKzEwODEsMjMgQEAgaW50IGludGVsX3Zycl9zYWZlX3dpbmRvd19zdGFydChjb25zdCBzdHJ1
Y3QNCj4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gPiAgIAkJcmV0dXJuIGNydGNf
c3RhdGUtPmh3LmFkanVzdGVkX21vZGUuY3J0Y192ZGlzcGxheTsNCj4gPiAgIH0NCj4gPg0KPiA+
ICtzdGF0aWMgaW50DQo+ID4gK2ludGVsX3Zycl9kY2Jfdm1pbl92Ymxhbmtfc3RhcnQoY29uc3Qg
c3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gPiArKmNydGNfc3RhdGUpIHsNCj4gPiArCXJldHVy
biAoaW50ZWxfdnJyX2RjYl92bWluX3ZibGFua19zdGFydF9uZXh0KGNydGNfc3RhdGUpIDwgMCkg
Pw0KPiA+ICsJCWludGVsX3Zycl9kY2Jfdm1pbl92Ymxhbmtfc3RhcnRfZmluYWwoY3J0Y19zdGF0
ZSkgOg0KPiA+ICsJCWludGVsX3Zycl9kY2Jfdm1pbl92Ymxhbmtfc3RhcnRfbmV4dChjcnRjX3N0
YXRlKTsNCj4gPiArfQ0KPiA+ICsNCj4gPiAgIGludCBpbnRlbF92cnJfdm1pbl9zYWZlX3dpbmRv
d19lbmQoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gKmNydGNfc3RhdGUpDQo+ID4g
ICB7DQo+ID4gLQlyZXR1cm4gaW50ZWxfdnJyX3ZtaW5fdmJsYW5rX3N0YXJ0KGNydGNfc3RhdGUp
IC0NCj4gPiAtCSAgICAgICBjcnRjX3N0YXRlLT5zZXRfY29udGV4dF9sYXRlbmN5Ow0KPiA+ICsJ
aWYgKGNydGNfc3RhdGUtPnZyci5kY19iYWxhbmNlLmVuYWJsZSkgew0KPiA+ICsJCXJldHVybiBp
bnRlbF92cnJfZGNiX3ZtaW5fdmJsYW5rX3N0YXJ0KGNydGNfc3RhdGUpIC0NCj4gPiArCQkJY3J0
Y19zdGF0ZS0+c2V0X2NvbnRleHRfbGF0ZW5jeTsNCj4gPiArCX0gZWxzZSB7DQo+ID4gKwkJcmV0
dXJuIGludGVsX3Zycl92bWluX3ZibGFua19zdGFydChjcnRjX3N0YXRlKSAtDQo+ID4gKwkJCWNy
dGNfc3RhdGUtPnNldF9jb250ZXh0X2xhdGVuY3k7DQo+ID4gKwl9DQo+ID4gICB9DQo+IA0KPiAN
Cj4gVGhpcyBjYW4gYmUgc2ltcGxpZmllZCB0bzoNCj4gDQo+ICDCoGludCBpbnRlbF92cnJfdm1p
bl9zYWZlX3dpbmRvd19lbmQoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gKmNydGNf
c3RhdGUpDQo+ICDCoHsNCj4gIMKgIMKgIGludCB2bWluX3ZibGFua19zdGFydCA9IGNydGNfc3Rh
dGUtPnZyci5kY19iYWxhbmNlLmVuYWJsZSA/DQo+ICDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBp
bnRlbF92cnJfZGNiX3ZtaW5fdmJsYW5rX3N0YXJ0KGNydGNfc3RhdGUpIDoNCj4gIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIGludGVsX3Zycl92bWluX3ZibGFua19zdGFydChjcnRjX3N0YXRlKTsN
Cj4gDQo+ICDCoCDCoCByZXR1cm4gdm1pbl92Ymxhbmtfc3RhcnQgLSBjcnRjX3N0YXRlLT5zZXRf
Y29udGV4dF9sYXRlbmN5Ow0KPiAgwqB9DQoNClN1cmUsIEkgd2lsbCBzaW1wbGlmeSB0aGlzIGZ1
bmN0aW9uIGluIG5leHQgcmV2aXNpb24gYmFzZWQgb24gc3VnZ2VzdGlvbi4NCg0KVGhhbmtzDQo+
IA0KPiBSZWdhcmRzLA0KPiANCj4gQW5raXQNCj4gDQo+ID4NCj4gPiAgIGludCBpbnRlbF92cnJf
ZGNiX3ZtaW5fdmJsYW5rX3N0YXJ0X25leHQoY29uc3Qgc3RydWN0DQo+ID4gaW50ZWxfY3J0Y19z
dGF0ZSAqY3J0Y19zdGF0ZSkNCg==
