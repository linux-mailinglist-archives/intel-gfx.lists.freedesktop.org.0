Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KODoHTNo+GnuuAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 04 May 2026 11:34:43 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3F884BB00E
	for <lists+intel-gfx@lfdr.de>; Mon, 04 May 2026 11:34:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B2F410E145;
	Mon,  4 May 2026 09:34:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KOruASU+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04BF710E145;
 Mon,  4 May 2026 09:34:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777887280; x=1809423280;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NEUN39truJdiW4dWn+/V3RRLOjY8gaPqPmme4r1hCE8=;
 b=KOruASU+YJlt++f51ePXoY7dnHv95tPFFTp1K8P1qQGN6QtXEcFpGwdE
 aW6nTA7E4ukUzse3GGjVsEslPBJ+GbMAS20soBg+tcOMb9pmsa5yb0A9/
 EZdkl+ehJDiiyF1OQo2yq/yuXB9SqF3+6zaKZ3+/4Ew2o2TOpXh4vkeVB
 xcqnWlPi/49tTzu8HbUAOO2t96djARgULMmwwgSibNSfMXcYcgaoLoe3Q
 WlKK0XimPNJlzOlFWA1E+RLP9YtDhltjSOyDcqL6elEXpqs6nytwP5OB3
 i0Z5Yt+xCKh8aF88UuIVDWVkNS7lxW/OLAAxHvP32FnieuJiPTNMGW5hV g==;
X-CSE-ConnectionGUID: WagDOgS1Smi4bevYLlna/A==
X-CSE-MsgGUID: xAa0Ul5GTOKExy+tE9/Q6A==
X-IronPort-AV: E=McAfee;i="6800,10657,11775"; a="82590593"
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; d="scan'208";a="82590593"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 02:34:39 -0700
X-CSE-ConnectionGUID: 22SmWJ3TTUqfFvpjc845Mg==
X-CSE-MsgGUID: Gpz4nNZnSoytABOjT88NaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; d="scan'208";a="235341264"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 02:34:39 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 4 May 2026 02:34:38 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 4 May 2026 02:34:38 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.58) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 4 May 2026 02:34:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eUw5ZJy7LZ/FOz0za+OIkT3dZRwDCuRIcYUp9v8HlB2krcB+pgDzz04etp3xBstuEYVIOQfMWcUwMNU8uJdUntE2XRlPKGW9JADKQuoyeqiMpB+s3y8lFNbpMCa1i8v1Uean0+sxt0YUNvDuZsf8XIfnf0qkzcxydpy+VNpL2LHDaHGb3eeaJjSzUVlCibkm75IQhSOe1hgn96Y3Ch0ILtw8zoJEbGXBJDpXpyqNKsDTFTreEptLTo0e7G8gKrqaBCQtoEmqPjdSvHCmWdmBCAP1ot/V+cxwVpF9Vtfx1mj7gcJvG4zbp+ic69+EQhiSc+1rrzFjLEtxmVpBTaBwmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QGvYblCvCt0/kLox7AnsYxcCaegqtxLG3Vyj0tNoHag=;
 b=nI8cn4eB//dY97I5r0ogBJo3KWW42m1mBU4prmb875pBje8u0l0MqcLE/2ZdXZuHy1DtHvF3G0CTuCcls8lmNDZkWVAJiOfhcFGHVoMOcEL/bI5ZBIFbzhPwcr6ZMUFNth/C8v3C8J8f4MmyVqsPAJLEB2D3ix6BriolUbYaIdCnUsiaSICKqrAFUBiMy013YZE6FGzMJDGMAnRiPpfQWTBEwR+BmwECQjEpD+AGXhJflV+4oV3ujIrrSfitOLzNyJ9KKg5nEQLhb76KTHOxdtVK7gHIdzKLQ7AGpOjCW1OwzMSaxyHZcaKItDJSv59B2fa4dQa3HXt8vod2lWDMDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SN7PR11MB7044.namprd11.prod.outlook.com
 (2603:10b6:806:29b::5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Mon, 4 May
 2026 09:34:30 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%3]) with mapi id 15.20.9870.023; Mon, 4 May 2026
 09:34:30 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Nautiyal,
 Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH 4/5] drm/i915/intel_sdvo: Drop call to
 intel_panel_fixed_mode() from compute_config
Thread-Topic: [PATCH 4/5] drm/i915/intel_sdvo: Drop call to
 intel_panel_fixed_mode() from compute_config
Thread-Index: AQHc2KUfeVj6+08oe0aMRawk6M+ztLX9oPow
Date: Mon, 4 May 2026 09:34:30 +0000
Message-ID: <DM3PPF208195D8DA6710087B3634EA209EDE3312@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260430131220.3891497-1-ankit.k.nautiyal@intel.com>
 <20260430131220.3891497-5-ankit.k.nautiyal@intel.com>
In-Reply-To: <20260430131220.3891497-5-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SN7PR11MB7044:EE_
x-ms-office365-filtering-correlation-id: 5cb7b63b-a5eb-41eb-a7ba-08dea9c05792
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: wLYBDLvpkqc64aJKdXjjlmycS8jZS7CQZ7RYrDU2B0m8lHiVn4ttP1X6SuaVlstIuY2N8rcnLRbg95yRKMeBlkMtDfUGq5guKa2WT+ParmdU/YWhl7urr9x9CZqNe6KMYVnMyWY0JP7pgcPOngBxsy4uubQIiwjmQk6TVUrgMcEN8En44Tw9bkdN/CAdO/6lUjUrrtDnNsIYYxHZVWCTlr5Nq8CqQ7phKTVi63epSUr79ZBbn2iSQCPFZbRGFrUNMl2n1ALHK9mrmzQUW2uYMHremnxnUsZkVHaDVK0YUHQZ3uDsV02VVE6qDQfH8kaPizgKiB+eEsHxmGPoJBOWjdsPy4hq8DV/TuILpdRUZNWg6t9XNZbQQmSFkcACWKgu2EoyN0vSy0TdKzyKEZ88aUprwRG0ZVHpLRzz9iAfYa5l7B1+lzZ06wGMI9cEmkf2RuR8hbew7OHHOSC017TwDw9TQ+1PQSUpHFbJu1iAbC3nI+yfHApEaaHYFeHFVgMrKvB6iCgrrzdE0+2aeXHpBc+eQmdIC3J6p2+Mdpd6E3PZOC01x29blzxPlCX29pbBKstKQLwGLaulTtP/JDIOiZESsIdnNB5vdaU9Gn4FwHC83t6hoo5eCWPYB0OXWlZ9hXReByoFI+nIAt98YFvymdh+yLmigPcewHxhPH181GXMqln0EHASUWHFrE9K806kJTo/7qfq66Ty/k9fXU0X4CHTVvl46cu3UgOSw2IwJhCqKrLq1kjAt0B6A6jtgVGn
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?gYByZQIUP4l5zXAhV4pl+mNPHhlNHMPV1oxrSJ6d08Lucxpih1a9g/uDCq2f?=
 =?us-ascii?Q?05r8xVyBpeCeKTVbzQnMrhxkmkj+mwzLd6dibnXJZEdWpu2Q4hJVqb4RmpDN?=
 =?us-ascii?Q?Vfm7AaYixtpjUzXiZZnRPLKYgTMMg+Sj5WqFs7i9dkW78v9V6XtJlnyGwpRT?=
 =?us-ascii?Q?/RmIe3Rcv7ouxfh7lK5ub4Y685zv/7d39FGJ6KtJ3W3NvUTbSIO0CYlEYY6E?=
 =?us-ascii?Q?4KH/UZLXr7y9w6uYyPdap/srbjrXDJbD7RC5+MX9r1bA2thhZNHNHWEZ31JR?=
 =?us-ascii?Q?pEwU6RzwBx3LoiCuYzEJt/yj2UhB+vGAtgh1aL0AnocMrhEi77MjDcJCR29P?=
 =?us-ascii?Q?vQlOOAzW9VRkMl31/0+zALxHaUaC2XPpQE06YbqaD9gl6xQ1S2MrlyZfy2oW?=
 =?us-ascii?Q?b7dnxplfQq6ckk3vhBzYHpswA1W2q3oMddv9ro7KYRTFbn1mAa3DAsmfETEa?=
 =?us-ascii?Q?5KiC/2L0goIgtL3Pr6KM51dN/QtjImHiJyarckg6LyXl0752Dh1gPyb94QTp?=
 =?us-ascii?Q?bWmae5hEbApFRWvwhKIljH5ZIVGZ/2bGzmW3NTztM5zjkqbO5A6fjbqtVdr6?=
 =?us-ascii?Q?O1/eDLPfnCRuPAm4xUBYZg6+UrEYHQCMx8JhxxOUsGmPAjeap2Kii/M5xlAE?=
 =?us-ascii?Q?Y/8WpYQc5D8Ufqdwrm8d2H37EcaVESZMFOQmIHaQEbVLAqub5H252+3rkJMy?=
 =?us-ascii?Q?hcc3BZQCEJGqMnXdr5vEjq2Y44Kv0gXDVjL8XoFUYqvbw8WgfgLmvaZUNLNP?=
 =?us-ascii?Q?jPdqMioKH/WaWrW2SmWEjXSKkcJkZz7QCTewkSryem5bPdZwQul83LT2h3hV?=
 =?us-ascii?Q?RG74jciysS9mljd5BHNH/YAxVPkzlzXwikBAzq//0P/eU20KvbQhNNhFD7qK?=
 =?us-ascii?Q?vWmuudCEcz3cOchCs+1LM6Ha+pJLknk8+hCku8K8sJ6i3AsuAa44xm7rpH0n?=
 =?us-ascii?Q?Exbomm/IJZ5+NkzWIo/OPKqq6dJC1FRMo5zg5tQkFMaHPrYKuvuNfcxQ9PZO?=
 =?us-ascii?Q?DUvW+H+yNe4Xhw8gqTlgDCrB3nvNOwFoj91vKFTukp1n09s6vPdSO2Sl8NzE?=
 =?us-ascii?Q?2BlpYbCtfZotYXdqrfAsuvZ1oWdmX9kLILqOqsxPQ4mLPGMUyKnTUiFknOuU?=
 =?us-ascii?Q?EXhlxkbKCyLn5CnIhI89V94vol+IjmllKUr33NUwvW1sDDOYem5g0T6UIEgZ?=
 =?us-ascii?Q?QgvVReoXhgrBRrFCTTnoND9EXYdkyAYYR8PGyG1jRlE7CEb3rgCbyXF89Oda?=
 =?us-ascii?Q?gYci0/Hv00qWeGTom2riyKAMRY6LBSZD64kDayx05CeXSLKBP3tvkepakTWy?=
 =?us-ascii?Q?eAIo1tIu3kiukF2noOKPOQhTDGPwscr5FVYja8SsFsMiNYbeBN3oX2vkK3eb?=
 =?us-ascii?Q?gaLYj8uFMSyGumtvjlW7u9R1vQwDMtzdnK7NN+G2RV7uvlfBkEGvofEWiGL0?=
 =?us-ascii?Q?u4fhZ0GzcHhgsw1/4I8oFNSimBChV2syuIUAhs3dPlTkpRSU8laPm8Jz/d3C?=
 =?us-ascii?Q?q7MVd4KMXGMA4QmpJ8vje0UY9NJAT2k6Eophgn7s2VrNJKSV+yli8K+/zKtk?=
 =?us-ascii?Q?8rUBKkOV7mQL6JZByNY8YtKxuW1rIR1Yo5fN+GqlEFGI/go7XuRH7z9ckLAs?=
 =?us-ascii?Q?GzEZpI00dx4HgX+Vo1QZ6JbC09c778Gn+7N5MjJaLL0iWFTm5UitUXp8Ha/3?=
 =?us-ascii?Q?hHDnwjOOLLKtmouDkQ+E1UGD5iFGJqRly53ZSO+pXGgyJlOevfnERkgW6CDt?=
 =?us-ascii?Q?Ar+uqSdqkw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: cGN6lhY6h9SaIX7za2DnmjkrKeZmCTpgHF6YkZGF6F/nJ2WdVJ3gRTjENH32lBkXVaquaEG5c/WK4yyloTpHTLcufv/SMtdCs/fz0csh0ezZMwgUDtUHmOZSwCSjTHmUO1zhhN16yBaLEKown1MLUSdZvF7uvFGDCeXFXrX6c7LwP1FrxuAWEytFBfXaPO7CJLrMZFG1Z8ha8EN2tQ/ZB1oQZOTjjcBgmM9pMJYt6C8e9YMCilnbFLk9OSdSnmiqt3qApWw5je2VcGIm5+axBck8c0T2OzkGVAG4+sw7KjbZLkPvG5SfFC6usM1/lHYBLxNXZAyYCCB8SipY1ddaXw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5cb7b63b-a5eb-41eb-a7ba-08dea9c05792
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 May 2026 09:34:30.0539 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CDxwmKz38xrkLWwqkZm7yz/lyqQ47QngiLjJsHpnLREd0Fy84Yly3oB8f0kku42M976rSZZnqma4rgKS5iv5rw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7044
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
X-Rspamd-Queue-Id: B3F884BB00E
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]

>=20
> Currently, in intel_sdvo_compute_config(), intel_panel_fixed_mode() is ca=
lled
> to get the fixed mode. However, since the call is made after
> intel_panel_compute_config, that copies the selected fixed mode to the
> adjusted mode, we can directly use the crtc_state->hw.adjusted_mode.
>=20
> So remove the extra call to intel_panel_fixed_mode() and use adjusted mod=
e
> instead.

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_sdvo.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c
> b/drivers/gpu/drm/i915/display/intel_sdvo.c
> index 7843eb13f2e3..c18e7d5e9c34 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -1395,8 +1395,7 @@ static int intel_sdvo_compute_config(struct
> intel_encoder *encoder,
>  							   adjusted_mode);
>  		pipe_config->sdvo_tv_clock =3D true;
>  	} else if (IS_LVDS(intel_sdvo_connector)) {
> -		const struct drm_display_mode *fixed_mode =3D
> -			intel_panel_fixed_mode(&intel_sdvo_connector-
> >base, mode);
> +		const struct drm_display_mode *fixed_mode;
>  		int ret;
>=20
>  		ret =3D intel_panel_compute_config(&intel_sdvo_connector-
> >base,
> @@ -1404,6 +1403,8 @@ static int intel_sdvo_compute_config(struct
> intel_encoder *encoder,
>  		if (ret)
>  			return ret;
>=20
> +		fixed_mode =3D &pipe_config->hw.adjusted_mode;
> +
>  		if (!intel_sdvo_set_output_timings_from_mode(intel_sdvo,
>=20
> intel_sdvo_connector,
>  							     fixed_mode))
> --
> 2.45.2

