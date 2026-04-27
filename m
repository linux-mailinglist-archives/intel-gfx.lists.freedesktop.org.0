Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2EyqJrn+7mnG2wAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 08:14:17 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DBD946D7C6
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 08:14:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6DD710E261;
	Mon, 27 Apr 2026 06:14:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="efItTKLO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D866D10E1ED;
 Mon, 27 Apr 2026 06:14:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777270450; x=1808806450;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BYFh7Y2ukdefgHOv/n0/iAGh7LYSGsM9NcvNEsdZc1c=;
 b=efItTKLOvpf8I/8lDmeUTQ4Ptiz2rObVJS3NsyYbxKcgWGBQ4qgpCD36
 lNQLO8UgaPzbLV+PXytutMFy3DQ2rsXcjzYsoEdf+QK4olTDKV8NxuaW6
 vrC6DjynGgJ8RfjUvIqq6dcjogyLsVJuCuJRXfudLAM1MCSa9clgQ8Z6k
 6YGLLW2ClPO8k+2wmQCOuMOeRMiyGiY3O8xbQZe8nGFHGMcuztjOE1bR1
 I4TLvQsOrBOiPLggYPmv76btSKlArlzcy17xxOesuA/YjUM7xCDj07wta
 jjIUxDk3fxMP/IyLVroA4aq62kMWxtYye+VVHQhJqyKOVghl6y9/6youc w==;
X-CSE-ConnectionGUID: 7TdEAELbS6205K36N+fpHA==
X-CSE-MsgGUID: OHYrjBw4QFW0EOhw1lDKdg==
X-IronPort-AV: E=McAfee;i="6800,10657,11768"; a="78065566"
X-IronPort-AV: E=Sophos;i="6.23,201,1770624000"; d="scan'208";a="78065566"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2026 23:14:10 -0700
X-CSE-ConnectionGUID: mjCltYJrR6yWgSiP85dRzQ==
X-CSE-MsgGUID: 8ju9FhTbQLq/SZ+dqGwOLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,201,1770624000"; d="scan'208";a="271672961"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2026 23:14:10 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 26 Apr 2026 23:14:08 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 26 Apr 2026 23:14:08 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.58) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 26 Apr 2026 23:14:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gIGNnb6h66WZh0+NUetydERiscml5conEEKSYqatPN4TWv4obXsOrCz93S3/hrrrvs0AHtrvq6MxP8JZ895REkJjTQ43csm4+U3xSpZsRk0w1KvE1zFIhBswpcHwIB8odmz5ZYJTjtmSEXW343YbqONm0wlXJzbO0qUaE/Tm2L0xEz6GdOoCWA9TScY4F/SqOjaBelQtWQxbJAbwoH0QgVqPeAFUT4Scm9HmEp5fmHQfEXJCIfNOH59FLdrUfTfPpfmInO7JzoFs5XmUvsDLyjBAcmj5nD9m/4cYMQK2teWUlGrJfqhf/NbfBtTmKJQ3G771AYrtcWGyxMQaaqMK9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k8apdGtjebSAK6OqtymH/P8NNTnfkQdGkbltBjF3ijI=;
 b=RhoPuifEpJakRw7yMubqP0X5fQ4M48eCtaD79e+LyDMxnGSz5N8E5tVv5cYTrEN0/RaHysWvjhm3Zvf/N4QCRPKBNwEAlIqmAQo8ga0c5kCohHa0yqJPbDes0/bwiOStFVcMw8Ki2uvVhK8Etfk8w4MXY9GIItkDYHIphJhRJSiDmwjklmVp6X9MYpL3uSNmaHZ/VJCwFH2/3IfwwFQZfIGNfs42K+B2mgMJu+S6NrJqYaoHpkN9L/znMaHWmBuH8FTHAZWmNHvJwXgXjs338B6qJHxnK0siEaHkqv4oodZVQgGqSwK+r7aji93cNr44k5FpSoDca+/wzKIe2X2qcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by MN2PR11MB4744.namprd11.prod.outlook.com (2603:10b6:208:263::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.16; Mon, 27 Apr
 2026 06:14:05 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973%4]) with mapi id 15.20.9870.012; Mon, 27 Apr 2026
 06:14:05 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 1/6] drm/i915/cursor: Check joiner cursor commit status
Thread-Topic: [PATCH 1/6] drm/i915/cursor: Check joiner cursor commit status
Thread-Index: AQHc0ituJZHCUe4nE0S0YoIpOsRelrXq1VIAgAegPaA=
Date: Mon, 27 Apr 2026 06:14:05 +0000
Message-ID: <IA1PR11MB646783C73E3A6F264FD60987E3362@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20260422073722.1861494-1-nemesa.garg@intel.com>
 <20260422073722.1861494-2-nemesa.garg@intel.com> <aeiY2q8Qeq1wGi9c@intel.com>
In-Reply-To: <aeiY2q8Qeq1wGi9c@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|MN2PR11MB4744:EE_
x-ms-office365-filtering-correlation-id: 2336c198-54a2-424d-9844-08dea4242f50
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|22082099003|56012099003|18002099003;
x-microsoft-antispam-message-info: njxnOORY42jOVI4qLBg7JmoUpAmbFTNf//xFsocFEK2GSsuVPIjlm6i6Rx07CcV8o87XPl6IIBgpURW/EulrKKTV7Kw9YJVbq4/TPOuCEGYXlovaTMKl5H7XRdtuoP6ssJtjyH1PV6+cUgEhX2UOYxzy/kM7viRX3WbpIDhDYY1EFuurtzrypUloRo4miEnOaE23BR/8G05lj4RcGSZNkTA7rYNONegEHyKb/bE1hHHHTKXJ+unO4Rj3hMnstTFOeUszl7kMztf62pVCJuRKLaF0CwwIdoS9Yj2inTQimyZ9sYr4yTyJR88cxygA5cU0qXN1Qr7glPowMYTXNwAwCwLP8FQwN6YY3SKfslbFV0PNat3GwOfHe8YGQFPd5d+q6BvNoUzXkgmHNuZD7ff2kkXyuuGKc1o5vu2XiKgpATuBxitoSsLIjRuH9LyDwf4/94zDDuGvRWfTCBF/3Rek6iOeU72+BTiXKD3SYNGBdKvjmhUk1n6WsmHI5/2kHwol7UHBZUSFutGZoFswUQllN1gtwPKQFucYHok9Mv7nzV9p4k8pzugtHbb/bdwJxz8iMuT115z5iAvmp6HtR/aYELu1Px81+Y4yVZHIHQ3/9RtUHJPjELQ2kFEmmJAVPxVpVvaDvmlV0FiTHI+dYcPehlHk01Wak6lvca64yP5ldNxRztzzsuXOpEEKYIEYZaIy50ZOfwesMkc9NrxdL8aTuGYQkEK27TDEF+/ULPOqdC/aO0jwGdgdvIjBLczdLBka2Mp7imYJl0yW9SmFAlrPwdEv86B6naeJMrHSQUxHqm8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?Gkj35Nqi5Y+0YqHBxG44QLBiXjy+Id4GxofhaYveuF6fTmzSuZCsMijsdF?=
 =?iso-8859-1?Q?Xo5/DCorDWc0HbhUCk6c7geShVCdSfEa/lwN42DJTlLmsK+RGRIX7uJsU7?=
 =?iso-8859-1?Q?5umymkPnZf7MQ8c8q/YSE1Y/c8aOFAUQ/OMbAw1jmYQkUm2AyxiG8oU50j?=
 =?iso-8859-1?Q?36ZtlJ6WzO6HvIPXFEhKMlywpK7UR/dqR2d+P6IrHwwckGjXXkEEcOAXR/?=
 =?iso-8859-1?Q?j+ZQRqSAVUh3+ctWZiX6KnfguHuwqA/ApjOYouhgLcdGg1PB5rBmvasPiU?=
 =?iso-8859-1?Q?G7wVYsnez+JwAIuYscYSqrtYkZYNQcDg2SPAcQNAP39HLcX9c6GjaVLMUW?=
 =?iso-8859-1?Q?c0OPqanwD3YcLYCqvsjSEwv9Cg/wtkyE152BIMQ3ric8yTLWvi7ih8P8R7?=
 =?iso-8859-1?Q?B3RGi0KvRphkaVmLFdh/0DfqcUD+z+OxXrVhjI3ueIHD4+bx+P0zanACeD?=
 =?iso-8859-1?Q?dkALX1F1s4ss+6YDl0mGo5QzMoM4ezVuuhqywGBs+0nTYb6BYC4L/fhhX4?=
 =?iso-8859-1?Q?cA7SswJmaU6zyCaCFgNriNNhf+xPgw2/fMtPE2SC5GEgX69IKzzDEgvZwu?=
 =?iso-8859-1?Q?ffK4XqXqfNVqRhZT9AiICPi0NjdBtHfUWF2/UeTECWhz0NQwZlWQkqveQN?=
 =?iso-8859-1?Q?46Mpzi08bSRAvBoQm7yVXQxaWaFmnmpUIDicgD5LAVGjHClQHWPDgVpysL?=
 =?iso-8859-1?Q?tKuJMIZQRbn09ZSaV73nGI2jiYIBBTNOggIEzQ3vzBRtUAmAYiBrR6gQvu?=
 =?iso-8859-1?Q?sXJ++aBg+pTqPf7pVbdIGQg6J1FHbrj2m+dvHf0Z/owPpmIrj8VOkcGZ8t?=
 =?iso-8859-1?Q?dxlFjUFGdEYQ2KqJziT0B7BVK9/TbrKZisMvKarWxT25WsRm3APmjriy+a?=
 =?iso-8859-1?Q?CSlR1FwXa4LqC+d67oTt/8h00dguCLx86ZREAkfNcHATRPZvY5Snwu9U6Q?=
 =?iso-8859-1?Q?Ei2GQNBq6Qc8ybXE0llS1KCfQAhu58dzIfN3IuFq/QdZQMypHOS6svlpba?=
 =?iso-8859-1?Q?e2RP/4KHsmudO1J0E29X1CCQnPte70To1Rm7a8ExcpqHkRGk8oBIhIm2r7?=
 =?iso-8859-1?Q?yur3yIl+ug2Pl/C4IaHoRzYFVZJVWhRYweNdzCA/Anc/kVwRFU0SLpaNu2?=
 =?iso-8859-1?Q?r4b4UraLUVlOG8qEk96U1K0xXv6l3GPUGl15K+7kia9jkrg2IZh69WMPGA?=
 =?iso-8859-1?Q?RCyRhaItLXxTT2dzGo2QVKFg86QdUkzdBKoXGOoH8HNdg5PjMutgGsUIYn?=
 =?iso-8859-1?Q?zEt8GH+S0D4UZYXpo9KbE5gPM4IZN0ji0GpFHe2Cu5gs3bjHJEQrm17d9S?=
 =?iso-8859-1?Q?kO9gxjgvrs3l8idFACGlUK+j/PzedNzbbGWsjynv1RriVfty2ZHp03hQhU?=
 =?iso-8859-1?Q?sBVgRtNq4UJOvz9BFD6uzP+CknzOEX4R9+Rcc/ORcR8q4OnOVaUPFqGB2/?=
 =?iso-8859-1?Q?Sza9s7Qee+P3uAPfW0DbTs02sPjkyu79Rkn2eqjhXy4HHA4w8hpopsJ+XY?=
 =?iso-8859-1?Q?0Po2klDjhRCG2QyqCNpFBTLbagZa9e8rkzRJrPokIKu0wEQcBbDVv7gdbk?=
 =?iso-8859-1?Q?CUfZV6o1Lw283VPaM+wS/RNHvuk95o0TLRjetSEiUCFhxJebNmbg8mn+fo?=
 =?iso-8859-1?Q?Y90gq4soADjHg/vWGUEyI4T32a7QBJUhxplK0PZbEtoNcMyBoECo8P1CVS?=
 =?iso-8859-1?Q?p7oAZtpQZckHC92htR8PLciDv+wBtgHr6sjoHpGKMjA2n24tcSyyz05SQv?=
 =?iso-8859-1?Q?OZa8T2RtkCaiSbpxCmi0RPenNYy+wDr0uqcdNJb2cmT3Qu?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: CWoodEkM1/dN2oMFDS/r2K146cC7CioSPfBZsxKqE0VAprPDGIlN/eDpa+sjbFvsqdFGflh5UMcTnL0FBaPmF4gLvubIgdZqCBKAKy6B14HSEF0xQjOn6bIiBfycb9nch+i115xD7PU4i5wBMY2dUXLgV+vA1/aQLTCp7tgGNjYidKr+WkKGpUH9XVpJ3b9ensXzyiEgmObkM2Y1jTUuRvUqd7bw7ivyb7ORDq6Zpov53n3dp+uRCtCnljcjEGKr6b5LisiT6PUOnxiYldQbhLj+wSSTcWV4+8vVxQX8VRFZnxyYAlnpfrJ2EpqVkMJHRWq/OQKimfVPRPz8NaO1pg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2336c198-54a2-424d-9844-08dea4242f50
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Apr 2026 06:14:05.2210 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1r2PzKj7NXYU4NSPJbQjCUQ0Clm/gKTW7JF4c5FhOC+LbphSU8+U/NDDnoIBtfDLUY/NVIDlW3Zn72/Ax9+GQw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4744
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
X-Rspamd-Queue-Id: 2DBD946D7C6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:email,intel.com:dkim,intel.com:email,IA1PR11MB6467.namprd11.prod.outlook.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nemesa.garg@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Wednesday, April 22, 2026 3:16 PM
> To: Garg, Nemesa <nemesa.garg@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Subject: Re: [PATCH 1/6] drm/i915/cursor: Check joiner cursor commit stat=
us
>=20
> On Wed, Apr 22, 2026 at 01:07:17PM +0530, Nemesa Garg wrote:
> > In joiner mode, secondary cursor commits may still be running even
> > when the primary cursor commit is done.
> > Check secondary cursor commit status before taking the fast path.
> > If any secondary commit is still pending, fallback to slow path.
> >
> > Assisted-by: Claude:claude-sonnet-4.6
> > Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cursor.c | 29
> > +++++++++++++++++++++
> >  1 file changed, 29 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c
> > b/drivers/gpu/drm/i915/display/intel_cursor.c
> > index 18d1014de361..609915c798ba 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> > @@ -13,6 +13,7 @@
> >  #include <drm/drm_vblank.h>
> >
> >  #include "intel_atomic.h"
> > +#include "intel_crtc.h"
> >  #include "intel_cursor.h"
> >  #include "intel_cursor_regs.h"
> >  #include "intel_de.h"
> > @@ -797,6 +798,30 @@ void intel_cursor_unpin_work(struct kthread_work
> *base)
> >  	intel_plane_destroy_state(&plane->base, &plane_state->uapi);  }
> >
> > +static bool
> > +intel_cursor_joiner_commits_idle(struct intel_display *display,
> > +				 const struct intel_crtc_state *crtc_state) {
> > +	struct intel_crtc *secondary_crtc;
> > +	u8 secondary_pipes =3D intel_crtc_joiner_secondary_pipes(crtc_state);
> > +
> > +	if (!secondary_pipes)
> > +		return true;
> > +
> > +	for_each_intel_crtc_in_pipe_mask(display->drm, secondary_crtc,
> > +secondary_pipes) {
>=20
> You want to just iterate over intel_crtc_joined_pipe_mask() everywhere.
> That way the primary and secondary pipes all just get handled in exactly =
the
> same way.
>=20
> AFAICS you've completely skipped over proper locking in this series.
>
Ack.
Thanks and Regards,
Nemesa
> > +		struct intel_plane *secondary_plane =3D
> > +					intel_crtc_get_plane(secondary_crtc,
> PLANE_CURSOR);
> > +		struct intel_plane_state *secondary_plane_state =3D
> > +
> 	to_intel_plane_state(secondary_plane->base.state);
> > +
> > +		if (secondary_plane_state->uapi.commit &&
> > +		    !try_wait_for_completion(&secondary_plane_state-
> >uapi.commit->hw_done))
> > +			return false;
> > +	}
> > +
> > +	return true;
> > +}
> > +
> >  static int
> >  intel_legacy_cursor_update(struct drm_plane *_plane,
> >  			   struct drm_crtc *_crtc,
> > @@ -843,6 +868,10 @@ intel_legacy_cursor_update(struct drm_plane
> *_plane,
> >  	    !try_wait_for_completion(&old_plane_state->uapi.commit-
> >hw_done))
> >  		goto slow;
> >
> > +	/* For joiner case also do the same thing as above */
> > +	if (!intel_cursor_joiner_commits_idle(display, crtc_state))
> > +		goto slow;
> > +
> >  	/*
> >  	 * If any parameters change that may affect watermarks,
> >  	 * take the slowpath. Only changing fb or position should be
> > --
> > 2.25.1
>=20
> --
> Ville Syrj=E4l=E4
> Intel
