Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id Tgm5Ojia8WkliwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2026 07:42:16 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3397A48F732
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2026 07:42:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47F5C10EE60;
	Wed, 29 Apr 2026 05:42:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WlHHocsj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 949A010EE5C;
 Wed, 29 Apr 2026 05:42:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777441333; x=1808977333;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7w+PTLb8t61DUhU1QOpgyLMeev3gpBort22OA39ilRU=;
 b=WlHHocsjq4HGU2DtAHKAnKwENvyy6urym8tN90VX7q1E6nqxdgvyVd+m
 Vj7I6d7St33hieuko+z37SmfQ3gXZ2HYfeH1Wh/mR5oqsS58GkgbSAWZR
 +xnsfr/0yEpX/GEqnQbRl1WI8h2PiYse9VgNDIDT+V/GX1QdHf9mrhvPw
 sY+AlYvra24poLYoABfXTudPF+G/SYW7KLOhfZyMmeILGEl7pVdn7PR8m
 RsUScadmzG9l+4wy1+wsiw3nUuiqbWQmqFetyjiNmYm0OcIDSWrUi2IoU
 biz25Ai7YXozB/ZYr4DidzUhrdmz+S1VpD9JbXrVmMTO18BPZiUjvUzj0 g==;
X-CSE-ConnectionGUID: qqrfbCtpQ+qMyiOYERXwHg==
X-CSE-MsgGUID: UfRXMMIERpWEb1Z8fcuC4A==
X-IronPort-AV: E=McAfee;i="6800,10657,11770"; a="65893299"
X-IronPort-AV: E=Sophos;i="6.23,205,1770624000"; d="scan'208";a="65893299"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 22:42:12 -0700
X-CSE-ConnectionGUID: UAslZEEPQZ6FuQba+2Ncxg==
X-CSE-MsgGUID: az58nbXrTxyHV94EzA6H4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,205,1770624000"; d="scan'208";a="234146085"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 22:42:07 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 22:42:05 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 22:42:05 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.10) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 22:42:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RSZJtKRFUecBLt/Wh1Bf1dSXtfD31I7de7Yj/YQgqpeBRHzL7A0cfaW00OTDrbXzsNf0IeCOTKRMhDSeqF6grBho4xoBETxQ1P8S18ouM+jMYvg57eWCcFEvp8CjBiwg5bO6KnkZZQC6SwdblfpVypg8PCjLO3Ve9M7sjX86GrVWgmHL434bxgjIr6GU/PfTPkxNlB1pCF+4B/1YfLBmqeuEk8FQ97/Lrjnao/EfWtiTzLdXgN+JQ1pgT7MQBMCYrrTIdwnH7MQS6tHIKm2pr5qDt768IA+FO9il4+cqRg3HyR3ZZIft8D3hiXS6xnxzIHjnitRVw+tu4+7J7v4fdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EO53Ou4VlDCjHs8jwEdq5Hhyjs/IlrohCXPB9AUXBPE=;
 b=EqbeyMQvsHygZ/CjupAbDGBdVYS353/fGKjWCnvsY2bt62s010OQRb9MUch9zYVtml06BS59ALkZRDxEhvXYtBdmVIu2I4lXZ3FXgf0rROuINJ/H+N1mL5/YGI30M/lZdi4s6qHX/PfMOMri66ZWnG+IIrrjB4dnw4jqzCcTe6i17a1ikNzMomQyUXzmCvfTrjtsdiRmM6iH073kPkeZT55hLaB037rWZP2h2bFqYFDANQ3dg7VX9BjZdt+kucyTEIUMFfig6LgBUSdrQcdD2spiYGBjBa07zX9diHHmhgs/4fkP9r9Klq34/ZO8e8+9Fh+xRPmB8yPHgceA6+WP+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 DS3PR11MB9820.namprd11.prod.outlook.com (2603:10b6:8:366::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9870.17; Wed, 29 Apr 2026 05:42:03 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb%6]) with mapi id 15.20.9870.016; Wed, 29 Apr 2026
 05:42:03 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>
Subject: RE: [PATCH v2 07/13] drm/i915/display: Add DC3CO eligibility
 computation
Thread-Topic: [PATCH v2 07/13] drm/i915/display: Add DC3CO eligibility
 computation
Thread-Index: AQHc0nTHDSruToXlv0G/pqrnzEFwhbX1ieXg
Date: Wed, 29 Apr 2026 05:42:03 +0000
Message-ID: <DS0PR11MB80492B89EDB40A33C80851E7F9342@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20260422162622.1869831-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260422162622.1869831-8-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260422162622.1869831-8-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|DS3PR11MB9820:EE_
x-ms-office365-filtering-correlation-id: baf7feb2-bc30-4a3a-42cb-08dea5b20ac8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|56012099003|22082099003|18002099003;
x-microsoft-antispam-message-info: rnEaibQSHMOmoDgQVHhHuK7pWjfzujIzdyvlQ/I/mymwFL5EU5zpSwkN+AOHS2g2cp7OuPsERNS7x2d2UAQIl8h6ErMtcm40saJhIa7rAmWbznQbqVCsJCoQ6VIYlMM7YjyPjzzb2szsSPCRTz1sQgohH+iOFwI15rUCK3BGJmPIIRH75CJkK4iZt09pnkR9dJIVBJwlDZVSGMOXvC+2JtypHCTcEJMYDrIKVs+ALqqydXKMWUqOCIdPNLmEWgwISK/LkdcAxNfUKrYjTMaLso0nsElVWn+x+yusGfUb9pRFb5F1aYK+gn8hfIyumbtxnWseMlkPWaxahAE3hoULN/SFRykWShA2c9bdWA5zH5n0UOnDwm9gASVQkZJMZ+XIO3hO3BJ+0LNP/zifDlSmojPJ0r+VRIqBWdWMy84yI3gHplaiWgeuB5ZcXhmsqyTGkTEs23aHVRiTMFlmUwzeMd/NcqxxAXRnYphrAdA6mO5Iymw2+pESy7T89GQ3+bQKd9OYz6kg1rc8vQfA3a06AAkhHdnyPUk4VMM2SmdhEpwcVmGyBWzOGMktJI3pU5AKhPiZ/rEn9nDHO5U8QToz/hZcOObsWbTiIhIJvUQ67E6PV1BkDay/XmYp2kZs43NGsb9Cuug1tuZTnwSNUxR/raviBYFixzeph0OWjKY4x0qcv5UGIiz/gu650jLgpP9SZQ25PEQI45qdLb9/6waXsJUiBoIWtVcEVyrBPfh11KIg29QVvzR6HZwrtfLXloeAuT/oG3dUtThCInoMoeGx25L+C0XBHvmHNDQTOWcH2Ac=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?9tI6MI0kGGFb02ZBqK9OlY4y87P4tQTyYyGYqlQ3cNRHK0yEHMcHa9R+npV8?=
 =?us-ascii?Q?6Zy0rxdQoflrBqoJj1fF1CucR5qEX0ycTpWr1FfrbuO233lmPipkiwW9zZyc?=
 =?us-ascii?Q?N2XtdidHgQdxPRnSpUsJfFO3UYzlURfwHxTS/P5AUOARarfmvrAcKZakF2n6?=
 =?us-ascii?Q?0VNSIa5hAB8PqUBMP4BbYiBQtxLW6JONtEEct9wxcLcyNmAdWHkX3KdvfVND?=
 =?us-ascii?Q?UK/sfcpySUcKEefRpIRfA1b2PiZYgqaF3U+OeSdpceEgF3yUhBe0E8JX/p0g?=
 =?us-ascii?Q?R4eZP5esbiDp+3iOA7g8FNk93NsmvoEM8Y/xbbPKSVpIt0FCTenl30pFjCpZ?=
 =?us-ascii?Q?d4EmBW2RFdENsT0IhJZl311vpRYO+k5QvMIIqcA2cGuIwcw+y9vTVPW24Qdh?=
 =?us-ascii?Q?FFyugMUiRrAahz20g4MALqFxqbuXJpNHWt9wVr4Ms+GWmx8W8wSzjbMsMycT?=
 =?us-ascii?Q?yLlCPvlf4B4uBkt9a3IdG1iueGjgn0hOBJ4QLWl9hPaR0lGg86Yb1bCx7Epu?=
 =?us-ascii?Q?9BwGbl0tGj+2+lkTfiKygsn0LLs+8M+LT+YGNNssbj8WNiTLjwmrU+ydvgYQ?=
 =?us-ascii?Q?yfgy4CJW0z34nuKuuUVNy18nB/T6/3HpNwWltQRs+wVcjPjIMZ9h1ESfp3Op?=
 =?us-ascii?Q?sIcgSuJqXkXzZEk9TlX6ndNK+SfeZ/QblMf4kUWwCpstSu0QvO/zJ4QXQRA8?=
 =?us-ascii?Q?k1Nqb3QBJ2zGtanH6jW4IqRaJGtyhxaqEHIfrAviS2urxF8RGp0z5yvBM4dt?=
 =?us-ascii?Q?l3FfDH5raYolwPFsRV7JNqToOBTzmivZJo8JBBziEvjygiI4eKQDtA41O1gV?=
 =?us-ascii?Q?s2q/7z0LB8vGo7bmNLFsOu+abc711uFBKXUWZyOD/BcomRlU3rLgX2GPw6gF?=
 =?us-ascii?Q?692z8y8Ng3+/C24leswsTq8n2dYckDYdr1b/6cGSQEc/8YkseYfl+YSE36Qo?=
 =?us-ascii?Q?8SxrHf5Umd7OGmmlUYE0DU+cRczs5D6+awToH7ZaS4MsbvZSTormdIG+Nba+?=
 =?us-ascii?Q?6t3FYIoM+C0zeg6HWErm/aR0lNTl6OgmWAfE8T7lJj1oR9NP51/ykGJRKE8U?=
 =?us-ascii?Q?vvVKuIqGJdeus6HGwZ5xwgab1NWWK+oKDZ+zE/vvYNAakiSRwwM/qrpgA2fp?=
 =?us-ascii?Q?FCHTijlq0KaeNt8sZvTDfIz3g1Bv/RWxaOBB0adtBGMap66cZjdwoH1jzu2X?=
 =?us-ascii?Q?FiT2YnPwV3P4/IeUiCCgb8XfouulobW56/WCse0D+Jbp4fiGoMiyvOElLEJY?=
 =?us-ascii?Q?QGaLcu5Hj4jCYE/GFvMwx4FEFrcG5bYybcGlia56Ux3RLIVAObfwOi5HWJrQ?=
 =?us-ascii?Q?qoaQO8OGv+4oytZy9lpcgz6T2sNFIPPcXMqNSp/rDFz4AG/wR3mMqjPrDtdq?=
 =?us-ascii?Q?ZWPS/KHjK6u1NyRMNhsp/1vOhqpD1Rbv938Tg18UWIGzENAME5TsSEr6Np2D?=
 =?us-ascii?Q?eoW08dA0UGpm3QdrrS0SO4jiVnj0D/fddH/UCzG7djHoZCz4iZ7k4O25WK2n?=
 =?us-ascii?Q?umQDtv/i5VCB7530cG7nivRhi32VvPypDb4DHElVyrWChbIU9dV3GQQvmVza?=
 =?us-ascii?Q?g5b8b1Fd0Exs71pR2avRSabTC4XHwntKcer4XBOqpbxJDk5xTA3WwYqqEao7?=
 =?us-ascii?Q?rQxsKcZaAR5D71s8sUPWAd9lX3tc+zqh3Rvp1pukDwsPOfeS4sMe0Y8AvNGo?=
 =?us-ascii?Q?54M+LcSFfZ8NFa1zvgPY9kVOHy8NlyfouiJs2FuY4zcaP1wbzqEtemnDt5ql?=
 =?us-ascii?Q?TqYTBNP96w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: nIhkmQk8/OV+3VWHvl69sYGEccRa5yLlYakJC3akprP1OUgECIO2b9/9q5jijB4HxqDsyy2tg6OUO4bxneoLSKcrpdLnv/8ytQQeAqKdas/5lUFwsCFK5VM0kSo+rTX5yXYCa+T9bV3zf7Q8zLaVsOQFjPBEITVObrLqD/Sr/B75xBIyf1DUr/9j/kq1f1MrI7ISaUJTNfEFaFW3mDrnNQyCWNswFVwlx1EIsD0NPNbNwDbZ5JB6hRd025NB4So7EqGS9zulpdj+MLATOpL0SSwWATjTRN+wI2v40mqdKM00VqM8cyaGaPAAWhX8IqEDnAGRWm/idrm8p0uFG7tY/Q==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: baf7feb2-bc30-4a3a-42cb-08dea5b20ac8
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2026 05:42:03.6783 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1kAUn6LEq41RYHShw1cRqsS6szKVY9UaB4mJwvsfAc1LUXO1V0s3JhOH4S04d/ZNDmBry7Ts5YIoZvUIha01Ug==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS3PR11MB9820
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
X-Rspamd-Queue-Id: 3397A48F732
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[DS0PR11MB8049.namprd11.prod.outlook.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:email,intel.com:dkim,intel.com:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]



> -----Original Message-----
> From: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Sent: Wednesday, April 22, 2026 9:56 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Manna, Animesh <animesh.manna@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Kurmi, Suresh Kumar
> <suresh.kumar.kurmi@intel.com>
> Subject: [PATCH v2 07/13] drm/i915/display: Add DC3CO eligibility
> computation
>=20
> Compute DC3CO eligibility during atomic_check based on pipe/port
> constraints and runtime triggers and store result in display->power.dc3co=
.
>=20
> When DC3CO is allowed, request DC_STATE_EN_UPTO_DC3CO and reduce
> the DC entry delay. Otherwise, retain the existing delay and set default
> DC_STATE_EN_UPTO_DC6 .
>=20
> Changes in v2:
> - Move dc3co state from intel_atomic_state to display->power (Uma
> Shankar)
> - Use #define bitmasks instead of enum for DC3CO triggers (Jani Nikula)
>=20
> BSpec: 75253
> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  | 92 ++++++++++++++++++-
> drivers/gpu/drm/i915/display/intel_display.h  |  1 -
> .../gpu/drm/i915/display/intel_display_core.h |  3 +-
>  .../drm/i915/display/intel_display_power.c    | 30 ++++++
>  .../drm/i915/display/intel_display_power.h    | 22 +++++
>  5 files changed, 141 insertions(+), 7 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 674a4ece6d0f..de493d04a622 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5870,6 +5870,69 @@ static bool intel_pipes_need_modeset(struct
> intel_atomic_state *state,
>  	return false;
>  }
>=20
> +static bool intel_dc3co_port_pipe_compatible(struct intel_dp *intel_dp,
> +					     const struct intel_crtc_state
> *crtc_state) {
> +	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
> +	enum pipe pipe =3D to_intel_crtc(crtc_state->uapi.crtc)->pipe;
> +	enum port port =3D dig_port->base.port;
> +	int num_pipes =3D intel_crtc_num_joined_pipes(crtc_state);
> +
> +	return num_pipes =3D=3D 1 && pipe <=3D PIPE_B && port <=3D PORT_B; }
> +
> +static void intel_dc3co_compute_state(struct intel_atomic_state *state)
> +{
> +	struct intel_display *display =3D to_intel_display(state);
> +	struct intel_crtc *crtc;
> +	struct intel_crtc_state *crtc_state;
> +	struct intel_encoder *encoder;
> +	struct intel_dp *intel_dp;
> +	int active_pipes =3D 0;
> +	u32 trigger =3D DC3CO_TRIGGER_NONE;
> +
> +	if (!HAS_DC3CO(display))
> +		return;
> +
> +	for_each_intel_crtc(display->drm, crtc) {
> +		trigger =3D DC3CO_TRIGGER_NONE;
> +		crtc_state =3D intel_atomic_get_new_crtc_state(state, crtc);
> +		if (!crtc_state)
> +			crtc_state =3D intel_atomic_get_old_crtc_state(state,
> crtc);

New crtc_state is overwritten with old_crtc_state and used below. Not clear=
 about the need of new_crtc_state.
Maybe good to explain with a code comment how new_crtc_state and old_crtc_s=
tate used in this function.
Better to keep separate variable new_crtc_state/old_crtc_sate  and use as p=
er need.
 =20
> +
> +		if (!crtc_state || !crtc_state->hw.active)
> +			continue;
> +
> +		active_pipes++;
> +
> +		if (active_pipes > 1)
> +			goto done;
> +
> +		for_each_intel_encoder_mask(display->drm, encoder,
> +					    crtc_state->uapi.encoder_mask) {
> +			if (encoder->type !=3D INTEL_OUTPUT_EDP)
> +				goto done;

intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP) can be used which will us=
e crtc_state and the above looping can be avoided.

> +
> +			intel_dp =3D enc_to_intel_dp(encoder);
> +
> +			if (!intel_dc3co_port_pipe_compatible(intel_dp,
> crtc_state))
> +				goto done;
> +		}
> +
> +		if (crtc_state->has_lobf)
> +			trigger |=3D DC3CO_TRIGGER_LOBF;
> +		if (crtc_state->has_panel_replay)
> +			trigger |=3D DC3CO_TRIGGER_PANEL_REPLAY;
> +		if (crtc_state->has_sel_update)
> +			trigger |=3D DC3CO_TRIGGER_PSR2;
> +	}
> +
> +done:
> +	intel_display_power_dc3co_update(display, !!trigger, trigger);

Not sure the usage of !!trigger, maybe just pass the trigger and if it is n=
ot zero then set the allowed inside intel_display_power_dc3co_update().

Regards,
Animesh
=20
> +	drm_dbg_kms(display->drm, "DC3CO allowed=3D%d trigger=3D0x%x\n",
> +		    !!trigger, trigger);
> +}
> +
>  static int intel_atomic_check_joiner(struct intel_atomic_state *state,
>  				     struct intel_crtc *primary_crtc)  { @@ -
> 6544,6 +6607,7 @@ int intel_atomic_check(struct drm_device *dev,
>  	if (ret)
>  		goto fail;
>=20
> +	intel_dc3co_compute_state(state);
>  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
>  					    new_crtc_state, i) {
>  		intel_color_assert_luts(new_crtc_state);
> @@ -7415,6 +7479,7 @@ static void intel_atomic_commit_tail(struct
> intel_atomic_state *state)
>  	struct intel_power_domain_mask put_domains[I915_MAX_PIPES] =3D
> {};
>  	struct ref_tracker *wakeref =3D NULL;
>  	int i;
> +	int power_async_delay;
>=20
>  	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
>  		intel_atomic_dsb_prepare(state, crtc); @@ -7621,11
> +7686,28 @@ static void intel_atomic_commit_tail(struct intel_atomic_stat=
e
> *state)
>  		 */
>  		intel_uncore_arm_unclaimed_mmio_detection(uncore);
>  	}
> -	/*
> -	 * Delay re-enabling DC states by 17 ms to avoid the off->on->off
> -	 * toggling overhead at and above 60 FPS.
> -	 */
> -	intel_display_power_put_async_delay(display,
> POWER_DOMAIN_DC_OFF, wakeref, 17);
> +
> +	if (intel_display_power_dc3co_allowed(display) &&
> +	    intel_display_power_dc3co_supported(display)) {
> +		intel_display_power_set_target_dc_state(display,
> DC_STATE_EN_UPTO_DC3CO);
> +		/*
> +		 * Use minimal re-enable delay to allow DC3CO entry on
> +		 * the next idle frame, unlike the 17ms guard needed to
> +		 * prevent DC5/DC6 toggling overhead at 60+ FPS.
> +		 */
> +		power_async_delay =3D 1;
> +	} else {
> +		/*
> +		 * Delay re-enabling DC states by 17 ms to avoid the off->on-
> >off
> +		 * toggling overhead at and above 60 FPS.
> +		 */
> +		intel_display_power_set_target_dc_state(display,
> DC_STATE_EN_UPTO_DC6);
> +		power_async_delay =3D 17;
> +	}
> +
> +	intel_display_power_put_async_delay(display,
> +					    POWER_DOMAIN_DC_OFF,
> wakeref, power_async_delay);
> +
>  	intel_display_rpm_put(display, state->wakeref);
>=20
>  	/*
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h
> b/drivers/gpu/drm/i915/display/intel_display.h
> index 1e76a455d7c4..2795e4b9e799 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -521,5 +521,4 @@ bool assert_port_valid(struct intel_display *display,
> enum port port);
>=20
>  bool intel_scanout_needs_vtd_wa(struct intel_display *display);  int
> intel_crtc_num_joined_pipes(const struct intel_crtc_state *crtc_state);
> -
>  #endif
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h
> b/drivers/gpu/drm/i915/display/intel_display_core.h
> index c5a07090cba6..13e9b986b6fc 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -535,7 +535,8 @@ struct intel_display {
>=20
>  	struct {
>  		struct i915_power_domains domains;
> -
> +		/* DC3CO eligibility state */
> +		struct intel_dc3co_state dc3co;
>  		/* Shadow for DISPLAY_PHY_CONTROL which can't be safely
> read */
>  		u32 chv_phy_control;
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> b/drivers/gpu/drm/i915/display/intel_display_power.c
> index f626803bbd88..ff1915be59c9 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -372,6 +372,35 @@ bool intel_display_power_dc3co_supported(struct
> intel_display *display)
>  	return (power_domains->allowed_dc_mask &
> DC_STATE_EN_UPTO_DC3CO) =3D=3D DC_STATE_EN_UPTO_DC3CO;  }
>=20
> +void intel_display_power_dc3co_update(struct intel_display *display,
> +				      bool allowed, u32 trigger)
> +{
> +	struct intel_dc3co_state *dc3co =3D &display->power.dc3co;
> +
> +	if (!HAS_DC3CO(display))
> +		return;
> +
> +	mutex_lock(&dc3co->lock);
> +	dc3co->allowed =3D allowed;
> +	dc3co->trigger =3D trigger;
> +	mutex_unlock(&dc3co->lock);
> +}
> +
> +bool intel_display_power_dc3co_allowed(struct intel_display *display) {
> +	struct intel_dc3co_state *dc3co =3D &display->power.dc3co;
> +	bool allowed;
> +
> +	if (!HAS_DC3CO(display))
> +		return false;
> +
> +	mutex_lock(&dc3co->lock);
> +	allowed =3D dc3co->allowed;
> +	mutex_unlock(&dc3co->lock);
> +
> +	return allowed;
> +}
> +
>  static void __async_put_domains_mask(struct i915_power_domains
> *power_domains,
>  				     struct intel_power_domain_mask *mask)
> { @@ -1051,6 +1080,7 @@ int intel_power_domains_init(struct intel_display
> *display)
>  		sanitize_target_dc_state(display, DC_STATE_EN_UPTO_DC6);
>=20
>  	mutex_init(&power_domains->lock);
> +	mutex_init(&display->power.dc3co.lock);
>=20
>  	INIT_DELAYED_WORK(&power_domains->async_put_work,
>  			  intel_display_power_put_async_work);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h
> b/drivers/gpu/drm/i915/display/intel_display_power.h
> index 05880e9da89f..0b1a06f88ae5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -131,6 +131,25 @@ struct intel_power_domain_mask {
>  	DECLARE_BITMAP(bits, POWER_DOMAIN_NUM);  };
>=20
> +/*
> + * DC3CO enabling triggers (bitmask).
> + * DC3CO may be enabled when at least one of these triggers is active.
> + * Additional constraints may still apply.
> + */
> +#define DC3CO_TRIGGER_NONE		(0)
> +#define DC3CO_TRIGGER_PSR2		BIT(0)
> +#define DC3CO_TRIGGER_LOBF		BIT(1)
> +#define DC3CO_TRIGGER_PANEL_REPLAY	BIT(2)
> +#define DC3CO_TRIGGER_ALL		(DC3CO_TRIGGER_PSR2 | \
> +					 DC3CO_TRIGGER_LOBF | \
> +					 DC3CO_TRIGGER_PANEL_REPLAY)
> +
> +struct intel_dc3co_state {
> +	struct mutex lock; /* Protects allowed and trigger fields */
> +	bool allowed; /* DC3CO eligibility result */
> +	u32 trigger; /* Bitmask of active DC3CO triggers */ };
> +
>  struct i915_power_domains {
>  	/*
>  	 * Power wells needed for initialization at driver init and suspend
> @@ -187,6 +206,9 @@ void intel_display_power_set_target_dc_state(struct
> intel_display *display,
>  					     u32 state);
>  u32 intel_display_power_get_current_dc_state(struct intel_display
> *display);  bool intel_display_power_dc3co_supported(struct intel_display
> *display);
> +void intel_display_power_dc3co_update(struct intel_display *display,
> +				      bool allowed, u32 trigger);
> +bool intel_display_power_dc3co_allowed(struct intel_display *display);
>=20
>  bool intel_display_power_is_enabled(struct intel_display *display,
>  				    enum intel_display_power_domain
> domain);
> --
> 2.43.0

