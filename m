Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id w0uFDP3RO2rZdggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 14:47:57 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9260C6BE404
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 14:47:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="G3/uq2YY";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B58110E099;
	Wed, 24 Jun 2026 12:47:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8ABD410E099;
 Wed, 24 Jun 2026 12:47:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782305275; x=1813841275;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=GRB9ICvQItNd0rwokvzvfMPd2PAL/3Cy9A9NLgKvoTY=;
 b=G3/uq2YYN7pWK2we8BABrbAtx+YhSRTnlZiK8OSOpiEpm6kJB7zHRfwG
 sXfnFkGnIlTaE+7phiNljloaPNWZmoYgkt8iTgUOP6MeIesa5UkJ/sqCO
 brJ+D2+1zegC2Zxzdf1Xb6zrkNVpEDgYrZMY4PlSLcEGcGrbOLebXqrOJ
 0bnPi7xbfmX4vzoHuDTFR86VTdIxZpz1ZHmjClunIMMdwmrrByb+MP19k
 SkNhvqOWdb2lvzayQt2n0r6198kDEEPOdQTfmrUGKwMwIJO82t3BH3Ltn
 FexagCtBME063JH3wZfQdiKqZeelAqhU1CB1IW44ib8DQEGP5YUbLBmJ4 Q==;
X-CSE-ConnectionGUID: Co3jqt9ZRWuoRHr96Wic8w==
X-CSE-MsgGUID: nLJBaTLJRwqQBLR2c8TDBA==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="100488901"
X-IronPort-AV: E=Sophos;i="6.24,222,1774335600"; d="scan'208";a="100488901"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2026 05:47:54 -0700
X-CSE-ConnectionGUID: GccCvSu7TP6S3dIBrIqw7w==
X-CSE-MsgGUID: wdBIEBoDSc2BG4i+iW3fMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,222,1774335600"; d="scan'208";a="243468874"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2026 05:47:54 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 24 Jun 2026 05:47:53 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 24 Jun 2026 05:47:53 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.45) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 24 Jun 2026 05:47:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=U392PJHMjO7aWOK/K9blJn9GcXzD/WeU9Jg4fpSVafmiOrZvzX+TzSJs0leRL+lB9OBmns7Z3fgQRbs+ma7QpQjtk2cPUpj6J87Ho+dN7Cf8GvY+qbczhYXvRgF+4QHi7KVt+os7/AouHDMw7OZ1RAEJh9ZHR2D2Os501+REAteEZDdlVr5cMtSYIqIQ37V10Edc5ZBg7oQhRtICfia8a1FRcK1oQITc6Wt5E/AFa497K1Na+h0/mmTpa/VhZbmT2xbmvQIJ2mTDvtvyO05f+G6M3juWuqIeVRJIPy5uqp8IRfwJUvDAFvyTLejvBhN0am3JZnof9Ps3m4w0o3ulGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GRB9ICvQItNd0rwokvzvfMPd2PAL/3Cy9A9NLgKvoTY=;
 b=UhaJmsng6CYNx/8vjrK09JSReWcFg17Zy4cp07hrScLEoB34Ow942B0PJsvm/jjteiGYCEr7QFyDX46YdqWrd+iu1xYCGZrha5aD2/mmIyb+gG5joplfdCa1sTduB7rystMWhE56GbCCwz1FMEA4t2g+9GTTJSUlr7Pj0Sk5vZsoXyLWwMx6YK782AD8NY5600Fu4xoniCopoGEUaX/HnC79pE23rErp8wkvCP6mcyWX8uETt++DLLPtOjQMUXVrB0aLovHtZmcYfRaKH0u/EVIk5TrCT4HGcLiBSIzVbz6cXECA/Jt96coJNrCkFP6Y0VV0DcBIcMBWMvtTpg5Tyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by DSWPR11MB9691.namprd11.prod.outlook.com
 (2603:10b6:8:355::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.13; Wed, 24 Jun
 2026 12:47:50 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081%6]) with mapi id 15.21.0159.015; Wed, 24 Jun 2026
 12:47:50 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 22/28] drm/i915/dp_link_caps: Add helpers to set max
 link limits
Thread-Topic: [PATCH v2 22/28] drm/i915/dp_link_caps: Add helpers to set max
 link limits
Thread-Index: AQHc/c1+I2BoC4y+2ES9sFvf2ylUh7ZNs55g
Date: Wed, 24 Jun 2026 12:47:50 +0000
Message-ID: <DS4PPF69154114FCEFDAB700682F0EA445BEFED2@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260616200849.3534628-1-imre.deak@intel.com>
 <20260616200849.3534628-23-imre.deak@intel.com>
In-Reply-To: <20260616200849.3534628-23-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|DSWPR11MB9691:EE_
x-ms-office365-filtering-correlation-id: a8ba69e3-954b-4256-d29e-08ded1eecd0d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|23010399003|376014|1800799024|366016|56012099006|4143699003|11063799006|6133799003|22082099003|18002099003|38070700021;
x-microsoft-antispam-message-info: RSmql+ikwrq90TGLdp3cz28wgbecp/rUUb4pTVjNf7AOBliUXqeexlIGFVarO2p7zYm0jirVKXZCKPmnFyoZ9sIdHuqHij2drrCn1X8YPcEL73ungqu9kth1IkgTbWoDLjW3jiM6Rp4LPhm0M7TnRy93KTjaawVyPKL3Jwp4JagzPuoqn7RaHJ3ZEJkvmHrQwAEj80irbef3b+KWSEcPUFKWaW559Xn5vF5wZDBWftPDtz9ATczOPVT5McbHdzXamUXo/ybABGrlyU3VDdfe3I2o99wJZzfdHs1dO+hWUWoFDyqJoYVsJ5LC58ihnOpEb+UeOoVXpsQkp42jN6jzPOfh3wV4Oi/PB/DlWtDiYoGYBGUUBBFrO54/DsJfZRngzdrlRFOI1N3uCHj8gBnUNBbhlxiVxGJ0i8wyLqjjjVjLknlT4p9uqaVKyNU4F4OSSLvUDNt12w4biVlVrksg/dhUeCwuI+3Vy/eh+OKsWnuVgXFOxn6Jh2v2T6kl3215DQCEVoom1klUeKiHlcghugeF2Eq6ANodprPlu+AJ9J105QIamoTLKvjznn3auVzFr3ezNIU7WVcKYSmF+gZorZvgQfIXY4kTkLr4qg1bu8/nzUm6DRVpNU6D04KP9HNbsZH5X0/znPUx9lfjUM08dcPpM4Qznp9T18rO5J3kCWdmZo0dQ5CAb70e4cz6Cnw+qO6jHa+F+yQ+q+DubHaWIULUSEZQy4EVhDmMFu0iSig=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(376014)(1800799024)(366016)(56012099006)(4143699003)(11063799006)(6133799003)(22082099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bVVkWUxLVzREVnZUcnpyT3l4N0RCYkNCbnJmelVzVHQramQ3MURXM3BMQk05?=
 =?utf-8?B?R3lDcXU2eHgrVUFJWDJkSkJXVFBJemx1ZUpmOTZSY01nZlVSSGFLdDNDa2Ni?=
 =?utf-8?B?L2FDcFc5OHRVMHJFSFVGWWJGamZiYjNGSzQvcDNpRnVtbnpjZGhrc3NiNm56?=
 =?utf-8?B?SzZUR0psMzVuUmowWG43TGhQWjU2UFYxZ29VeXhlL3UxRGR2UnNBOUVyMDNk?=
 =?utf-8?B?cXdpSkk2d2dheUhuSVpiQmY3a2tkQ0FiSnpFTG1kSHg1SWt2d3cvSHV3S0th?=
 =?utf-8?B?MFM5MkRnNTZlZmFjY2Y4WExieVc4Z1BHTWt0T0luY0dHdTg1bEV2bStYOGwy?=
 =?utf-8?B?cWJSVWRiN20wa05MYXZzY2tJUnBwWU5YODZFS29CWkNtMnA2QThjYXhBTzMw?=
 =?utf-8?B?VjNkbGk2WFZpZi83ZjJ3ZUR0UURTUzUyV0pSc2tLNjliek5ZSmdPZUVTVU5N?=
 =?utf-8?B?VWNJTmtMeElLZktubnAvMGR2M1lUb2ZpL0VhRG5YZzZkSlJPS1ZmcmVIODc3?=
 =?utf-8?B?dWJtd3I0dm9SN2oxaWJrZmJyaTBFSFBBcC9RV2pRT0w1YmNRaHNlNUVtN3dX?=
 =?utf-8?B?WVBPZkxUc3VsaEtlS2U5VGxMVFNoa0NGMDlQenpBQlRiVmRwU1dCRVg3a1M5?=
 =?utf-8?B?NWFJL2IwR2xuTXRaSFIyZmdWa2ROSG9rWWZ0RWdVMzFFSjllRnJoSmM4WTQ2?=
 =?utf-8?B?REgvMEtCUmxKQUMwK1JaUWlPdEZJTHhXa3p6eDlpeTRQN3JsTW1yWThkM0l1?=
 =?utf-8?B?STNuUjg0eFZhYmgySGtZS1g3WGVqcEdNUXJDODZnelYvYUdDSEZVYkI2cEs5?=
 =?utf-8?B?c0pSY3NMQVJ6YU00U2pNWlpsNHVEejNnMnpPbmNOR29Ld3N6ZmM2MFRkbjFN?=
 =?utf-8?B?ZXFvUVZ2SUhOUlVva01HcEZ3VEtWVFl2Ty9KTHJ3a3dIbEZrVkl3ZnAyRllG?=
 =?utf-8?B?aW1oQmd0OFZ2WG5wdUhyTGpYVGhSK29QZUhDN0hVMGRzYnJxcGhCWUd1VUZo?=
 =?utf-8?B?UVZRV1g1ZEpmMzdJTDhuNkV0OFl1Z00vNWJDUVlCeXZyalJhWFlld08xNFRh?=
 =?utf-8?B?Q2NMRWR5VzR3U1l0UXE5cEM0RDlwSmlSUUpTcDg2UnNYSjRIN1lsT3ZqYWZa?=
 =?utf-8?B?TVhxd0RlbUZsYVM1WkJ1T0szT0tZcWlHLzlrZW9UR3VtNzZ6NWtVT3ZsUnJR?=
 =?utf-8?B?cmdrcGVBN3JTZk5IUkxHR2xNWTNLTXJDbXlaYVpSSFZ0OXhHcURUOUdyby9r?=
 =?utf-8?B?TUpqWkFDU29WTllqQzhBOEI2R05DaEJ5bFlqL09Rd2ltVk9rYmNFZzNxR2U3?=
 =?utf-8?B?eFJWaG44NFdoYkpvdkl4dDhobUgwVC90ZG9sb0M2bml6enZ4SmtSZlRFVkpv?=
 =?utf-8?B?NThnMDhWL05JcU9ERlJ6MmJyL3dxUFE3WUdHZHZocDA5NHNEWmJRK2gvNHZG?=
 =?utf-8?B?dlFNMFRtd3dzcWVWUzg2OCtwR3VRYmgrZVp0aUVtTmU1WldRUXh1dTNpVkhG?=
 =?utf-8?B?eWlTaHVqaXJvbVhKU0NEL3B0Vi9CZzVnN09xUHpObmxnYXpQMHJqbkRmbkpr?=
 =?utf-8?B?S1B4WndKcEpXNHJ0TVJxcU5NNU51RFVBUTEreTdhREJWZXlwcjBVL2F5eVJM?=
 =?utf-8?B?VHFpdkFEMGM1aitlZE5WdkFLYi9EMWlHRmdSaVFwbUFnZUNnWDF5dWxoUGFU?=
 =?utf-8?B?VXF6cTZMaythQ0Z1S0ppWFZzalBjNTg1YXV4WHVhSVM2NHdjTkwzcmlMZTNB?=
 =?utf-8?B?NGRNUis2ejhLcXlvdWRuK1I5QUFxTlJrUFhpR0RLQTJsZzZFS3ZnVXpGUVdP?=
 =?utf-8?B?L3NrRzByTmtZNnNWaWxta012c05QYktlZmI0UmtPcnNXRXVtb2JNTjl0L2tz?=
 =?utf-8?B?RjFOM3ZKMjI3NnJzaTBRQXdjZEVSRUhsZVJmVFJLdzlJNUFTVkx3TERBKzg4?=
 =?utf-8?B?bE96ZlUxWlJmTHRkbDhYbVYvbXBLeGxuMjFVbkhDcXZ5cTFHSVZocm1FdzdY?=
 =?utf-8?B?VnUxNExNNmh5U1liLzdrVXljVXFJSThiWVFFdUFNZStCWkFYVlUvVDFSekNU?=
 =?utf-8?B?Y2ZuQ25ibkVncjg0cGNmY2pxSDJGQ1BXR3k5dlhCUXQwcGJHN1BOdkVGOGZF?=
 =?utf-8?B?WlptYmVYMUpIUWd3b3Z2SlVrMUtXVTF0eVpmQm1RelFva2NHR2xuZmJMK3F1?=
 =?utf-8?B?clovNDBCcW1BNlozMXNNOUNmZkhGclpPSHZUQ3JWWng4bDBMMzRNbkhibDRH?=
 =?utf-8?B?OWVmbThEUDBOTnBSMXg5d3Jrb0FRVTVJQVFmbUZhd2daTW5zNzZrQThyS2Js?=
 =?utf-8?Q?mZpTwxVY15gD2EiJib?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: dx4OIfybhwyE55EKxMNDgpiX4PUXzJ48kLQDkOri5hdcbSJrW5aGiQ1UgZy0SvWNk5ku1beIbpF9u64s9OgW3HOsv2sriwdcXvdcn0wdKC0IsQXdMus4JLRmIRw7g2GJy3FpF++4h7rBQuQ81cJH1lh4VRCk0jjw0f1hQ6razOmZXhFcfCH1hl/mVtfYajH7nVLNvgBcGxyvnoxsTILd3fXk2nsI7qzvFVviQnB8cJ9QZv68vzYc5umLoR++wZIdEYPe6YNHPLmtKW3Z9Tyk/XnHv/AfZVFhITa8urqRSyIwhfOJxS1dNJMGkVnyQgLq94SUexyw0+rZI5QY2ituDg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a8ba69e3-954b-4256-d29e-08ded1eecd0d
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2026 12:47:50.5807 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZQ83EtiikyhSF9LPnMGLq41A78eUiYzWQ6rF4o2lL6WqvNDLbSB1/lW7SZmoH2JixKyNWxwJ1UU2Bo/HRnqjyw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DSWPR11MB9691
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.21 / 15.00];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[DS4PPF69154114F.namprd11.prod.outlook.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,intel.com:dkim,intel.com:email,intel.com:from_mime];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9260C6BE404

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEltcmUgRGVhaw0K
PiBTZW50OiBUdWVzZGF5LCAxNiBKdW5lIDIwMjYgMjMuMDkNCj4gVG86IGludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJq
ZWN0OiBbUEFUQ0ggdjIgMjIvMjhdIGRybS9pOTE1L2RwX2xpbmtfY2FwczogQWRkIGhlbHBlcnMg
dG8gc2V0IG1heCBsaW5rIGxpbWl0cw0KPiANCj4gQWRkIGludGVsX2RwX2xpbmtfY2Fwc19zZXRf
bWF4X2xpbWl0cygpIHRvIHNldCB0aGUgY3VycmVudCBtYXhpbXVtIGxpbmsNCj4gbGltaXRzICht
YXggYm91bmQgb3ZlciBhbGwgYWxsb3dlZCBjb25maWd1cmF0aW9ucykgdGhyb3VnaCB0aGUgbGlu
ayBjYXBzDQo+IEFQSSBpbnN0ZWFkIG9mIGRpcmVjdCBhY2Nlc3Nlcy4NCj4gDQo+IFRoaXMgYWxs
b3dzIHRyYWNraW5nIHRoZSBzdGF0ZSBpbnRlcm5hbGx5IHdpdGhpbiB0aGUgbGluayBjYXBzIG1v
ZHVsZS4NCj4gDQoNClJldmlld2VkLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwu
Y29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4N
Cj4gLS0tDQo+ICAuLi4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua19jYXBzLmMg
fCAzNSArKysrKysrKysrKysrKysrKysrDQo+ICAuLi4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHBfbGlua19jYXBzLmggfCAgMiArKw0KPiAgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHBfbGlua190cmFpbmluZy5jIHwgIDkgKysrLS0NCj4gIDMgZmlsZXMgY2hhbmdlZCwgNDQgaW5z
ZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfY2Fwcy5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX2NhcHMuYw0KPiBpbmRleCBmYTdkYWJjOTRkZGYx
Li5lNTY4ZjAwNzIwZDMxIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwX2xpbmtfY2Fwcy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHBfbGlua19jYXBzLmMNCj4gQEAgLTE1MSw2ICsxNTEsMTUgQEAgc3RhdGlj
IGludCBpbnRlbF9kcF9saW5rX2NvbmZpZ19sYW5lX2NvdW50KGNvbnN0IHN0cnVjdCBpbnRlbF9k
cF9saW5rX2NvbmZpZ19lbnQNCj4gIAlyZXR1cm4gMSA8PCBsYy0+bGFuZV9jb3VudF9leHA7DQo+
ICB9DQo+IA0KPiArc3RhdGljIHZvaWQgc2V0X21heF9saW5rX2xpbWl0c19ub191cGRhdGUoc3Ry
dWN0IGludGVsX2RwX2xpbmtfY2FwcyAqbGlua19jYXBzLA0KPiArCQkJCQkgIGNvbnN0IHN0cnVj
dCBpbnRlbF9kcF9saW5rX2NvbmZpZyAqbWF4X2xpbmtfbGltaXRzKQ0KPiArew0KPiArCXN0cnVj
dCBpbnRlbF9kcCAqaW50ZWxfZHAgPSBsaW5rX2NhcHMtPmRwOw0KPiArDQo+ICsJaW50ZWxfZHAt
PmxpbmsubWF4X3JhdGUgPSBtYXhfbGlua19saW1pdHMtPnJhdGU7DQo+ICsJaW50ZWxfZHAtPmxp
bmsubWF4X2xhbmVfY291bnQgPSBtYXhfbGlua19saW1pdHMtPmxhbmVfY291bnQ7DQo+ICt9DQo+
ICsNCj4gIC8qKg0KPiAgICogaW50ZWxfZHBfbGlua19jYXBzX2dldF9tYXhfbGltaXRzIC0gZ2V0
IHRoZSBjdXJyZW50IG1heGltdW0gbGluayBsaW1pdHMNCj4gICAqIEBsaW5rX2NhcHM6IGxpbmsg
Y2FwYWJpbGl0aWVzIHN0YXRlDQo+IEBAIC0xODEsNiArMTkwLDMyIEBAIHZvaWQgaW50ZWxfZHBf
bGlua19jYXBzX2dldF9tYXhfbGltaXRzKHN0cnVjdCBpbnRlbF9kcF9saW5rX2NhcHMgKmxpbmtf
Y2FwcywNCj4gIAltYXhfbGlua19saW1pdHMtPmxhbmVfY291bnQgPSBpbnRlbF9kcC0+bGluay5t
YXhfbGFuZV9jb3VudDsNCj4gIH0NCj4gDQo+ICsvKioNCj4gKyAqIGludGVsX2RwX2xpbmtfY2Fw
c19zZXRfbWF4X2xpbWl0cyAtIHNldCB0aGUgY3VycmVudCBtYXhpbXVtIGxpbmsgbGltaXRzDQo+
ICsgKiBAbGlua19jYXBzOiBsaW5rIGNhcGFiaWxpdGllcyBzdGF0ZQ0KPiArICogQG1heF9saW5r
X2xpbWl0czogbmV3IG1heGltdW0gbGluayBsaW1pdHMNCj4gKyAqDQo+ICsgKiBTZXQgdGhlIGN1
cnJlbnQgbWF4aW11bSByYXRlIGFuZCBsYW5lIGNvdW50IGxpbWl0cyB0byBAbWF4X2xpbmtfbGlt
aXRzLA0KPiArICogY29uc3RyYWluaW5nIHRoZSBzZXQgb2YgYWxsb3dlZCBjb25maWd1cmF0aW9u
cy4NCj4gKyAqDQo+ICsgKiBVbmxpa2UgaW50ZWxfZHBfbGlua19jYXBzX2dldF9tYXhfbGltaXRz
KCksIHRoZSBjYWxsZXIgbXVzdCBzZXJpYWxpemUNCj4gKyAqIHRoaXMgY2FsbCBhZ2FpbnN0IGNv
bmN1cnJlbnQgcXVlcmllcyBhbmQgdXBkYXRlcyB0byBAbGlua19jYXBzLCBpbiBsaW5lDQo+ICsg
KiB3aXRoIHRoZSByZXN0IG9mIHRoZSBBUEkuDQo+ICsgKg0KPiArICogUmV0dXJuOg0KPiArICog
LSAldHJ1ZSAgaWYgdGhlIEBsaW5rX2NhcHMgY2FjaGVkIG1heCBsaW1pdHMgdmFsdWUgZ290IHVw
ZGF0ZWQgd2l0aA0KPiArICogICAgICAgICAgQG1heF9saW5rX2xpbWl0cy4NCj4gKyAqIC0gJWZh
bHNlIGlmIEBtYXhfbGlua19saW1pdHMgaXMgaW52YWxpZC4NCj4gKyAqLw0KPiArYm9vbCBpbnRl
bF9kcF9saW5rX2NhcHNfc2V0X21heF9saW1pdHMoc3RydWN0IGludGVsX2RwX2xpbmtfY2FwcyAq
bGlua19jYXBzLA0KPiArCQkJCSAgICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfZHBfbGlua19jb25m
aWcgKm1heF9saW5rX2xpbWl0cykNCj4gK3sNCj4gKwlzZXRfbWF4X2xpbmtfbGltaXRzX25vX3Vw
ZGF0ZShsaW5rX2NhcHMsIG1heF9saW5rX2xpbWl0cyk7DQo+ICsNCj4gKwkvKiBUT0RPOiB2YWxp
ZGF0ZSBtYXhfbGlua19saW1pdHMgKi8NCj4gKwlyZXR1cm4gdHJ1ZTsNCj4gK30NCj4gKw0KPiAg
c3RhdGljIGludCBpbnRlbF9kcF9saW5rX2NvbmZpZ19idyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVs
X2RwLA0KPiAgCQkJCSAgIGNvbnN0IHN0cnVjdCBpbnRlbF9kcF9saW5rX2NvbmZpZ19lbnRyeSAq
bGMpDQo+ICB7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwX2xpbmtfY2Fwcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cF9saW5rX2NhcHMuaA0KPiBpbmRleCAzNzZkYmQ5YmQ1YWJhLi5jNmM2MGI3ODg4ODc0IDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfY2Fw
cy5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua19j
YXBzLmgNCj4gQEAgLTI5LDYgKzI5LDggQEAgdm9pZCBpbnRlbF9kcF9saW5rX2NvbmZpZ19nZXQo
c3RydWN0IGludGVsX2RwICppbnRlbF9kcCwgaW50IGlkeCwgaW50ICpsaW5rX3JhdGUNCj4gDQo+
ICB2b2lkIGludGVsX2RwX2xpbmtfY2Fwc19nZXRfbWF4X2xpbWl0cyhzdHJ1Y3QgaW50ZWxfZHBf
bGlua19jYXBzICpsaW5rX2NhcHMsDQo+ICAJCQkJICAgICAgIHN0cnVjdCBpbnRlbF9kcF9saW5r
X2NvbmZpZyAqbWF4X2xpbmtfbGltaXRzKTsNCj4gK2Jvb2wgaW50ZWxfZHBfbGlua19jYXBzX3Nl
dF9tYXhfbGltaXRzKHN0cnVjdCBpbnRlbF9kcF9saW5rX2NhcHMgKmxpbmtfY2FwcywNCj4gKwkJ
CQkgICAgICAgY29uc3Qgc3RydWN0IGludGVsX2RwX2xpbmtfY29uZmlnICptYXhfbGlua19saW1p
dHMpOw0KPiANCj4gIGJvb2wgaW50ZWxfZHBfbGlua19jYXBzX3VwZGF0ZShzdHJ1Y3QgaW50ZWxf
ZHAgKmludGVsX2RwLA0KPiAgCQkJICAgICAgIGNvbnN0IGludCAqcmF0ZXMsIGludCBudW1fcmF0
ZXMsIGludCBtYXhfbGFuZV9jb3VudCk7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua190cmFpbmluZy5jDQo+IGluZGV4IDcxNDVmMmQwYWQ2
ZDMuLjlkOTkxMWViYWQ0MzkgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHBfbGlua190cmFpbmluZy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua190cmFpbmluZy5jDQo+IEBAIC0xOTU4LDYgKzE5NTgs
OCBAQCBzdGF0aWMgYm9vbCByZWR1Y2VfbGlua19wYXJhbXMoc3RydWN0IGludGVsX2RwICppbnRl
bF9kcCwgY29uc3Qgc3RydWN0IGludGVsX2NydA0KPiAgc3RhdGljIGludCBpbnRlbF9kcF9nZXRf
bGlua190cmFpbl9mYWxsYmFja192YWx1ZXMoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4g
IAkJCQkJCSAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0KPiAg
ew0KPiArCXN0cnVjdCBpbnRlbF9kcF9saW5rX2NhcHMgKmxpbmtfY2FwcyA9IGludGVsX2RwLT5s
aW5rLmNhcHM7DQo+ICsJc3RydWN0IGludGVsX2RwX2xpbmtfY29uZmlnIG1heF9saW5rX2xpbWl0
czsNCj4gIAlpbnQgbmV3X2xpbmtfcmF0ZTsNCj4gIAlpbnQgbmV3X2xhbmVfY291bnQ7DQo+IA0K
PiBAQCAtMTk4Myw4ICsxOTg1LDExIEBAIHN0YXRpYyBpbnQgaW50ZWxfZHBfZ2V0X2xpbmtfdHJh
aW5fZmFsbGJhY2tfdmFsdWVzKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ICAJICAgICAg
IGNydGNfc3RhdGUtPmxhbmVfY291bnQsIGNydGNfc3RhdGUtPnBvcnRfY2xvY2ssDQo+ICAJICAg
ICAgIG5ld19sYW5lX2NvdW50LCBuZXdfbGlua19yYXRlKTsNCj4gDQo+IC0JaW50ZWxfZHAtPmxp
bmsubWF4X3JhdGUgPSBuZXdfbGlua19yYXRlOw0KPiAtCWludGVsX2RwLT5saW5rLm1heF9sYW5l
X2NvdW50ID0gbmV3X2xhbmVfY291bnQ7DQo+ICsJbWF4X2xpbmtfbGltaXRzLnJhdGUgPSBuZXdf
bGlua19yYXRlOw0KPiArCW1heF9saW5rX2xpbWl0cy5sYW5lX2NvdW50ID0gbmV3X2xhbmVfY291
bnQ7DQo+ICsNCj4gKwkvKiBUT0RPOiBoYW5kbGUgYW4gdXBkYXRlIGZhaWx1cmUgKi8NCj4gKwlp
bnRlbF9kcF9saW5rX2NhcHNfc2V0X21heF9saW1pdHMobGlua19jYXBzLCAmbWF4X2xpbmtfbGlt
aXRzKTsNCj4gDQo+ICAJcmV0dXJuIDA7DQo+ICB9DQo+IC0tDQo+IDIuNDkuMQ0KDQo=
