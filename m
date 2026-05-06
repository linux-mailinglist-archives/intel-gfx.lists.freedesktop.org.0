Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id APv1Jybi+mmGTgMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 06 May 2026 08:39:34 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1072D4D6AD5
	for <lists+intel-gfx@lfdr.de>; Wed, 06 May 2026 08:39:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9ABAB10EC9E;
	Wed,  6 May 2026 06:39:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZpLGV+2w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63F8610E51C;
 Wed,  6 May 2026 06:39:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778049570; x=1809585570;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=r3xaKwjYVKhDxT2JTXl4b83LtJ55g1PUkEjlxGgvdqU=;
 b=ZpLGV+2wGihxmv/9Yn4umu3sMal259y1NhpTRZviwXH5puBoW+gslMla
 EVk0y5BxHW+pPQwzSgSQ2InNeUsGs6KsoqAo4aPXYayTsmgxigOVWidm8
 Oy1KzxeFgevMtSiiH70idMldxqvuSsD5hXjhFv3DILLun3y720y9Qc9mJ
 An9lpAywJUOADGbHc7tHQfx73OVX1s4r3a/rdnp/Z5b5mUSRABoo99xfw
 b6bUPuiyx2M1QSUz9wnd4AN6ONM7NXVGskQLDlIncrS7vCHdhws4hcyFX
 XhPDGVH4EJ0DCDjVs2Jwatjcpp5i0B22Dee2ojtBdg1XqN/M7U1nN1A1X Q==;
X-CSE-ConnectionGUID: btofgFkVRdKuaEAsKFqerA==
X-CSE-MsgGUID: LFH1e98KTGmlR0TfOf1lmg==
X-IronPort-AV: E=McAfee;i="6800,10657,11777"; a="78810856"
X-IronPort-AV: E=Sophos;i="6.23,219,1770624000"; d="scan'208";a="78810856"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2026 23:39:30 -0700
X-CSE-ConnectionGUID: uzOR1xy5SHioAqCrhEzLFQ==
X-CSE-MsgGUID: 3GU1XYZ1S2ux2CuyNcUROQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,219,1770624000"; d="scan'208";a="229591185"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2026 23:39:23 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 5 May 2026 23:39:23 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 5 May 2026 23:39:23 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.46) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 5 May 2026 23:39:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=esnUa1E68HGM3IYLmNrfGhOn4beeasef+22GPE1+05eTAr8n6Z5EJJPOcJGur2xUeceruKoCl3n+kOMSj+tTvE7mRx6llZpScKIheIuDxlgB4wE+DleSsH+jRNWfiwU0g5Mi+a5dCY6XzNXcfN6AXikjDXeGasERRSWG5zxWiErdk2rY0wIXM9+wb/KxpeSDoj/agsprXoGSDrH5D0Z3b3C8XDNzzLTcDmTBWIt0yEKjz4h16ckfYzZETjmQQTxRyYyilkUSKnZg9+vgOq0eCcASvZe5q5PJXSZtjJey5rqPDmmckS4mWi2teawYHT8IGDyumA19ZBE2Dv5OJpGXqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r3xaKwjYVKhDxT2JTXl4b83LtJ55g1PUkEjlxGgvdqU=;
 b=Ze6faCmt6EEOEq8fTfuRbb65UmeFB09gDUOBbKkTmHQS1PFf8dRUjqKJ9GoJMespU8hhDz9hEt4f4pHpr2SfSMCXJwqTVthwURTk0ndbK9HlOooawoq6T80s+rH1tk3sZtKPIUkHwb51znjMSS1rMdA37xBtzT6Qfhjd9kXq8BFhb/MVmYL0dwOdi+w3ExddnskwMe5Lcqp0Eh0zezu92+O8ljP1jcdukteMkJDGb6L7hqXzHwgdbFVCLJqkRnKFw9QElBGTqgVepe7Y08bVMApKasGrNCZ7ALcCwfLgeQtEzWQSVnCQg68U2HRkTNyjdiyY90Ed+U0aHUIFv3CGTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by LV1PR11MB8820.namprd11.prod.outlook.com
 (2603:10b6:408:2b2::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Wed, 6 May
 2026 06:39:19 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%3]) with mapi id 15.20.9891.008; Wed, 6 May 2026
 06:39:19 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH 2/4] drm/i915/psr: Read Intel DPCD workaround register
Thread-Topic: [PATCH 2/4] drm/i915/psr: Read Intel DPCD workaround register
Thread-Index: AQHczJpruF5lOuyeOEqN/FRn3MhFTrYAq+Ow
Date: Wed, 6 May 2026 06:39:18 +0000
Message-ID: <DM3PPF208195D8D5A61CDAC6A255BC5D27AE33F2@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260415054000.400070-1-jouni.hogander@intel.com>
 <20260415054000.400070-3-jouni.hogander@intel.com>
In-Reply-To: <20260415054000.400070-3-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|LV1PR11MB8820:EE_
x-ms-office365-filtering-correlation-id: 7183a3c3-43d0-4c11-784b-08deab3a3351
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: n009zj9VYJ0+nk/d0EaaHQdMes4ZnGJ8cHlp7xpHOiXKNaNnkr1Bt7aiMBwHG1DfxKEzEo/qSnxo2PHtASaFiuYVjY1GILP3E66vhrLbucmOjFAr2H4L9xcspfdEo+vJeDphkKm2F2gPZjMcwdqLvUb9VJ9H1QNFh3j9Z3pqR0VZatamMAPsomsDyMdo+WaT2Hb/LIjWePhy+StO5ghNlH/ckAOCI8np19Q0zZXZ4PmRa/wnVPsDzpaMod4xTOvCaODVy2jyKKSpdjOBSGI1KhXmYzYEN4hqKQlEVrPNQMe94CqWTmz4CZGO7cfj5VQCEyJEWSSrAcTxnxvNT1PykXAgyvIkXFQdNvvui2XODWuXbhvTv2Msg1LenTkRF/m5UWEUULrfOWtt3DqMc1gE3CKB4UYgt1Lucw+gBB6yxEPT4jHbVdY/edCOvvFT3ZFC92Vkr+fhHlemGEx+b0sYmSEjLK/r9Mc/vgdbqvJh+ygjd5i3QwXcc5+OBy/Aow/xpUCayzd2qfeU2tt1MNkODf4MiGY/yL5aG2S1Sytfi+D98CjMBhG6jt1ATdAibNsqYgOCT9CRj5vPhc7CgA66r94BoTIDAKOg3Rf9dZDOUqWTZIHVsdZOD2LkWO5MQIT9KAfC7r4m/I91Uq31tRQX2mATH6mvlbHMT6IO3a1BuvtI8WVicoCb7SrAGuJC1uetP1gywa6tB26qY8l+R3jzROILIpZTx4ab1hDtU/DdSOAHKO7LY8gPTy7ulWHFn0/w
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ODNVdVk2ZXBmUlQxdWFrWE1odXNSbE9EYmR0dW1jVlhXWjlVdGc5SzIvcDZj?=
 =?utf-8?B?ZE14WTMzcWdSMW84U0ZjVVpmMHVyL1VCMmMyZFlUVmxRcU1KT2cxRUE4aVM5?=
 =?utf-8?B?a0E1c1BsdGV4bGdJUWljTzFQeEtqUDdaQXNkK293SU9xRmFWeDlFVWtOamEv?=
 =?utf-8?B?TkcxVytOeXEyS0VRWkZSS2EzSUlvQUZMeS9lZzlmUXl3Skk1a05majNiK0JU?=
 =?utf-8?B?S1Q3MTl4Q2RNY0hGOUdsYUt2RUd2K3pxdjFJc01VNDhxdVd5b0tnT05NcWYy?=
 =?utf-8?B?M2FiNzBlMXd2Sm8wckI1aUVCNmYyTWZMZi9aQ0hBWDJDU1V3ajdQWmdCQVFR?=
 =?utf-8?B?dFhvMmh4VmlXd0tMTE5rdzZZbTBkNUdEaHlBSFYxTzNpM2tsMUdvbVEyVEZR?=
 =?utf-8?B?OWdzS0ZYTkI3TUVrNXFPd0Zuc2Q5czZ2eXFhRDUyRlpMekdYVXNXeDVNeE9J?=
 =?utf-8?B?WDF5VmlpKzZQVXpWNkE4VWlWVTN6OC92aEhueTFlVmRxRVlISEFmbytFbG9D?=
 =?utf-8?B?dmtqeXlDdkpEek93cFQvc09xcSthbjNJSEw4b2k2QzFLSmdxb3RjdTNWYTEy?=
 =?utf-8?B?WXpuUE5qeWMyR3VIanZMSWhMZktqMDZQdUg4WXd6Y0JtMzZQb1d4ZU5JVVhQ?=
 =?utf-8?B?WGhwYXRBRXk5ZktXRVhwWmN2Q0RlOE9tRmJnLytwdndXSk9wWFVLUUVyU0lR?=
 =?utf-8?B?VmtxVDhEeVNHdk5acmNRMXpJaHJCQ0tDaWhDK0dPbXNmWHBSbncrVmJPYXJs?=
 =?utf-8?B?V0xaSHptSEJOTlIyYXFSUnN2cndiSjFMNitSc0dTV2gxeEhxYVduOEhrOVIv?=
 =?utf-8?B?ckpUelBEK1dWRndXUXFHNk53cmU1dVJyTE4zdStlZzNVNDA0ejBUM1J3VWwv?=
 =?utf-8?B?WnZ4Z1NvOExPYXd0WUthMUs5dnIyOGRGK2kzUkhxQzZ3YWpjY2VLZW4rVWpr?=
 =?utf-8?B?WE9UaHJudktqUStrMmRhQmV3N3N5R3h1TG1VL0JrTUZlSWJQNFJmZWlvalc5?=
 =?utf-8?B?aGZYQ2wyOWh1VnJxV2NVZitTOXJWaTZicnAwa1JJY3ZoYm45T1IzblBOKzU0?=
 =?utf-8?B?U0JsMDdPMXB0NmVqOWZWTHZoQUwvZWdyV2JCamFLT1JJWmtTZUxhMTNoV3Y3?=
 =?utf-8?B?aUlxOW9MYlJQMUMzSW1udTQwTlU0eVBWT2RFSkE1NnppWFQrMXJIZVdTU21V?=
 =?utf-8?B?RC9GUGZjdVFiWFVjbnRtZHFtRmZsVkpaNTVwMXEzcjZrcXJiRVZyY2NpVDNv?=
 =?utf-8?B?aFdTRnhjV1cvMDlGNk11TEZqOSszZThnbmlsVnYrUGJnc0FxSW5XWkFVek43?=
 =?utf-8?B?MFVQK2Y1allIQmNMdDhudU1MaGxtRXB5akZSQkthV3RUdWx2REFNVmxqaDUw?=
 =?utf-8?B?QjNDSFk0d3ZnbEVNNCt4NHdHWlNiU00vSlFxOFVVNTRBTW9QcjZrWDZmZlZ5?=
 =?utf-8?B?SDQ5VzZNUjRESXBqZVZmWXltc21vR0Zmd2FwdzhMT242U0hKKzh1OGpLbnpr?=
 =?utf-8?B?cDFhNEs5R0ZvTTdvaERZcnVsRzRFSERmMHM0MjNhbGphRHhSN25oWDV5N2lt?=
 =?utf-8?B?ajFNMmdEQmM0bElqckNsUldIWVFKZEE3WFNXd2pOSWFSdWJyTmdCWU9jR1RU?=
 =?utf-8?B?K1dPZGZxdmlML1Z5VlpPOWFvaWh4akoyS1Q0YnVESUhWVk5kUFc4bE52Z1ln?=
 =?utf-8?B?T1BsY0ZFUEE2eUxwOTM5S1NsRjlYOWVoeTZvSnZrcjEreXdCTkZaVnFKY2RC?=
 =?utf-8?B?WUdmVDNGTVV5VDFwa0xQS3YzcldVZVV2UkVDUTNFTEpabCtkelJuQThyNW9O?=
 =?utf-8?B?bnQrM1NVUDQxVE5ZZFZRTmN5b0p6dWRaclRXT0xQWEV3aFhLZ3Q5cndyZEZY?=
 =?utf-8?B?NzlUZ3UzclZ3cTFuWlBycHhEcURtMzQvTTZhTW4yczRsZ0hwakNYY3dubjBM?=
 =?utf-8?B?a0NaYjczclBoQUlyNnBiREdjZXJONzlTd3RySzVpNlhlZm1BWlgyMU9lU2pC?=
 =?utf-8?B?NFphS3IvSTlZUUF1T3VQc2piSWFwYmg2L2N2Q2ZNSWdBYjlTMEYzNkRqekFV?=
 =?utf-8?B?VHA1NVIweVpsbVBiUHBOZU8zb1JvbDg5YmFMM3ZHc2JUeWpPN0xncjc5dE5u?=
 =?utf-8?B?UXdpVVNTZGRXNCtGbUh0NHZzVkFnZ250b0JYakNucjNEcWtMY1cycms2ZU43?=
 =?utf-8?B?eFdwTDVPZ09qM2I4ZE8wZXIxZ0RuSDRVSHdWVkpkUk5NUS9PcGE0TGVZS1h0?=
 =?utf-8?B?NUN6a2U5UStDaHBQTWJNZlUvT1pNZ1BlZ3VOcDEyVFVLNTB0Q0R0WkJyNzJJ?=
 =?utf-8?B?cWZEUmliNk1TaWNjbzB5aVhwZFpLYXZQSE50WE8yd1daR2xKaHk3Zz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: pq+JVjIz43fUAjBBvBLCKfPaecmOoW906y5eofePLuhLoAaRu4ERxBwY2xQPADM53L36mVBW8KpyFDnjwRI3lIIvg94f1wGbVxl2QXGRtDja5PAKe1IzPT7sFTtnXPnz17Tdroecwena5P33LaiucVtvAfyTEZ3AxFpta4V3CQLm2DeTBDxyROaoG+9ToBZld5CshXlkMSsAt//Nb7FIPliue7+Etx1qwgYQ8qR5tZ3AZPebOIUgvD4/OUD3zfKKm6BUKdjfJxQ2FsrCJ4W8TQH0SgZvJ8EHDSjiW6cbI6vGHkTRWbjQH+lphQ/WTgcWDKcAM6W3eqczrwnqrHWw0A==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7183a3c3-43d0-4c11-784b-08deab3a3351
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2026 06:39:19.0019 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8Xr+TSQyOeKQL9zVDemUx9UwpDl8I5T9Yq5fO2yrj/EtNAzOyxMTlM0+QA5NvJO66MfQyeyfFgVDXG2vJHP4Ig==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV1PR11MB8820
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
X-Rspamd-Queue-Id: 1072D4D6AD5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]

PiBTdWJqZWN0OiBbUEFUQ0ggMi80XSBkcm0vaTkxNS9wc3I6IFJlYWQgSW50ZWwgRFBDRCB3b3Jr
YXJvdW5kIHJlZ2lzdGVyDQo+IA0KPiBSZWFkIEludGVsIERQQ0Qgd29ya2Fyb3VuZCByZWdpc3Rl
ciBhbmQgc3RvcmUgaXQgaW50byBpbnRlbF9jb25uZWN0b3ItDQo+ID5kcC5wc3JfY2Fwcy4gUHNy
X2NhcHMgd2FzIGNob3NlbiBhcyBjdXJyZW50bHkgaXQgY29udGFpbnMgb25seSBQU1INCg0KTml0
OiBwc3JfY2Fwcw0KDQo+IHdvcmthcm91bmQgZm9yIFBTUjIgU0RQIG9uIHByaW9yIHNjYW5saW5l
IGltcGxlbWVudGF0aW9uLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxq
b3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggfCAxICsNCj4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgICAgICAgICAgIHwgOCArKysrKysrLQ0KPiAgMiBmaWxl
cyBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0K
PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+
IGluZGV4IGVlMDc2MTA2YmU4NS4uZWMwMGZjYjQ2NzM0IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiBAQCAtNTg0
LDYgKzU4NCw3IEBAIHN0cnVjdCBpbnRlbF9jb25uZWN0b3Igew0KPiANCj4gIAkJc3RydWN0IHsN
Cj4gIAkJCXU4IGRwY2RbRURQX1BTUl9SRUNFSVZFUl9DQVBfU0laRV07DQo+ICsJCQl1OCBpbnRl
bF93YV9kcGNkOw0KPiANCj4gIAkJCWJvb2wgc3VwcG9ydDsNCj4gIAkJCWJvb2wgc3Vfc3VwcG9y
dDsNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNy
LmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGluZGV4
IGI0Y2E1ODQzZDA5OC4uMWYzZjBkMzVkNTJhIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gQEAgLTQ0LDYgKzQ0LDcgQEANCj4gICNpbmNsdWRlICJp
bnRlbF9kaXNwbGF5X3dhLmgiDQo+ICAjaW5jbHVkZSAiaW50ZWxfZG1jLmgiDQo+ICAjaW5jbHVk
ZSAiaW50ZWxfZHAuaCINCj4gKyNpbmNsdWRlICJpbnRlbF9kcGNkLmgiDQo+ICAjaW5jbHVkZSAi
aW50ZWxfZHBfYXV4LmgiDQo+ICAjaW5jbHVkZSAiaW50ZWxfZHBfdHVubmVsLmgiDQo+ICAjaW5j
bHVkZSAiaW50ZWxfZHNiLmgiDQo+IEBAIC03MTcsOCArNzE4LDEzIEBAIHN0YXRpYyB2b2lkIF9w
c3JfaW5pdF9kcGNkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+IHN0cnVjdCBpbnRlbF9j
b25uZWN0b3IgKmNvDQo+ICAJCQkgICAgY29ubmVjdG9yLT5kcC5wc3JfY2Fwcy5zdV9zdXBwb3J0
ID8gIiIgOiAibm90ICIpOw0KPiAgCX0NCj4gDQo+IC0JaWYgKGNvbm5lY3Rvci0+ZHAucHNyX2Nh
cHMuc3Vfc3VwcG9ydCkNCj4gKwlpZiAoY29ubmVjdG9yLT5kcC5wc3JfY2Fwcy5zdV9zdXBwb3J0
KSB7DQo+ICsJCXJldCA9IGRybV9kcF9kcGNkX3JlYWRfYnl0ZSgmaW50ZWxfZHAtPmF1eCwNCj4g
SU5URUxfV0FfUkVHSVNURVJfQ0FQUywNCj4gKwkJCQkJICAgICZjb25uZWN0b3ItDQo+ID5kcC5w
c3JfY2Fwcy5pbnRlbF93YV9kcGNkKTsNCj4gKwkJaWYgKHJldCA8IDApDQo+ICsJCQlyZXR1cm47
DQoNCkFueSBwYXJ0aWN1bGFyIHJlYXNvbiBmb3IgY2FjaGluZyB0aGlzIEkgc2VlIHRoYXQgdGhp
cyBjYW4gYmUgZWFzaWx5IHJlYWQgd2hlbiByZXF1aXJlZCA/IE1heWJlIEkgbWlzc2VkIHNvbWV0
aGluZyA/DQpBbHNvIHdlIGFyZSByZXR1cm5pbmcgZWFybHkgbm93LCB3YXMgdGhpcyBtaXNzZWQs
IGRvIHdlIHJlcXVpcmUgYSBmaXhlcyA/IEFsc28gc29tZSBleHBsYW5hdGlvbiB3aHkgdGhpcyBt
YWtlcyBzZW5zZS4NCg0KUmVnYXJkcywNClN1cmFqIEthbmRwYWwNCg0KPiAgCQlfcHNyX2NvbXB1
dGVfc3VfZ3JhbnVsYXJpdHkoaW50ZWxfZHAsIGNvbm5lY3Rvcik7DQo+ICsJfQ0KPiAgfQ0KPiAN
Cj4gIHZvaWQgaW50ZWxfcHNyX2luaXRfZHBjZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLCBz
dHJ1Y3QgaW50ZWxfY29ubmVjdG9yDQo+ICpjb25uZWN0b3IpDQo+IC0tDQo+IDIuNDMuMA0KDQo=
