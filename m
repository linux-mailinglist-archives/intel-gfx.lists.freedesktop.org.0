Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4N/pMpUqsmleJQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 03:53:09 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 359C526C7A5
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 03:53:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE7F510E940;
	Thu, 12 Mar 2026 02:53:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="De4d73/X";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F26410E940;
 Thu, 12 Mar 2026 02:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773283986; x=1804819986;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=pPuNqonXwmxZCeiiXYvS6Nz9OVvfgAEpwSpcX3yGFpk=;
 b=De4d73/XjFD54ROsZYWCOIMzAw1AU6XHuyPIN/kcrPcmOpsENvTyoRTi
 0HtnGx+5Q9dYRTqOWNQM5Pcn1C+IeOsrumFvcIdJtwdgLlKf9cHv/C8mf
 XhipGipBUgzxA6YlGsb5zqIwg1HIjLHfcIxbu63vyT1LGW1OAOKE1NGja
 HckS0Eddv8/85Pq2isqlfBMQ3dDh1bXpnMoWq/yfJaWjxmbccVc1F8j76
 zHp4M3sqxAAqp+c8dlOYMlgaK3MaPdRsrszBpF2RuU05S1nV7AiYbVKZX
 eOqddEtrI/O5Z0Yo8hFNFBfY+k8ufW9vFsVj3nNx6XUWmoPxGXOqvY21x g==;
X-CSE-ConnectionGUID: FisCNDBsRI253IfibjkFiw==
X-CSE-MsgGUID: RScgF0u1QLujZl+I5VzjCw==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="96983509"
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="96983509"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 19:53:05 -0700
X-CSE-ConnectionGUID: hKEGz2o7RpGjd0+j0wuD5w==
X-CSE-MsgGUID: ee8JFyWgTfO84LVOWEYRig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="225118822"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 19:53:05 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 19:53:04 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 11 Mar 2026 19:53:04 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.63) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 19:53:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UH2o+aUtB/ktfK7wBUnUDFmfzbW2XNEYqm6y3msOeroJPSjfCCTm/WZ1BYf2rA+gS6m9s79qEyGisoLuwixzmof/HtnQECwo6mdtKms+ZNtN55HP2IcM0+VqccPJm7dJI66MEpxKwKuBOKF92K+9PU2aqkGxVauAJbjAOtJcFcP9d7/xM3VeDXlW/Sh5SVwJmJhd5o9sy3rVdnLbNsxVc4Mi8lJnoAJjQ/NnJRDhCBfGWRQnKy0suFa7Nly+zZRqPuMe1An6ZEXdawed8wwVXWy41138fiY1ifCZImghl/MxC0EACU+PMaq1a9Z3AK65PkSmH0KUnaYo9XMBGTqx+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UIVhp67+8cBVUjVqIZhjxbvi+6oAtEHlTUmXfvM0Kh4=;
 b=eyOhKolF88HjV32E/ik6XrwbTYJQzS7F2SXmvP4skOMfUjb5tbPayv9/BLH6kqCLGWb6KuykVh2Li82cwuzf9TIsQZNr6VwvPqRB29zXGIba6o9D3JO+KAQ/aQrphDqhlu9FZVsDDaH2ZMI/NooFsHoLAoTJ8zjX/v/j5Gj88nCWHKY65QWnjtlWhN58uJQBDvmX/XJT0apPJvz/OvHlLdR9/QhXaNA2+/v3wx3CjWs2RI70j/jwzYt2LV6JYp5GgebBVRmMoBkxrSDxZtQea6Gf9R07W6LKfYAiYolFUzcx97OaZErUqzDesAGxIGQZcDQEoV6fOLqRY0Q11z5UiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by DM4PR11MB7208.namprd11.prod.outlook.com
 (2603:10b6:8:110::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.4; Thu, 12 Mar
 2026 02:53:02 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa%6]) with mapi id 15.20.9678.017; Thu, 12 Mar 2026
 02:53:02 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v3 22/24] drm/i915/lt_phy: Remove LT PHY specific state
 verification
Thread-Topic: [PATCH v3 22/24] drm/i915/lt_phy: Remove LT PHY specific state
 verification
Thread-Index: AQHcsWIeEQfufTylrUWfRo/8mYg8LLWqM3gw
Date: Thu, 12 Mar 2026 02:53:01 +0000
Message-ID: <DM3PPF208195D8D037918D1203BA910D02BE344A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260311141905.2526418-1-mika.kahola@intel.com>
 <20260311141905.2526418-23-mika.kahola@intel.com>
In-Reply-To: <20260311141905.2526418-23-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|DM4PR11MB7208:EE_
x-ms-office365-filtering-correlation-id: 250891fc-b138-49a3-54b0-08de7fe27a07
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|56012099003|22082099003|18002099003;
x-microsoft-antispam-message-info: QCLJODEH83QPzjuQkWqKUOJIhaZXjiCvl0FaPVh198qwkTOOUPyRXHOfTzX0HQIjN3NPi8Y77CGSjAzeWIrucHhTk9u7AzvOarmt+BWtnEz5I5vi3hibiomBj47vvE4qT+oG++iraB29LMdMzvwOBhIvO9XRDAWIbm27D/4XOMRRzsEtvLGRW9gIkO2D7dp/KMfkg/bXNwpBMzh5IaZ8kK1DE297SoAe5Z5xtnbxYxrNo7EwIP2BPVyekS68Z52PLJeJD1ANpPOIIMLHFJOSqAJrJqiMFAeztlnWCuUhz6x8v9lqElEl/TZKKKUzX3lREdtPweyaHIsIvYFMFreOUF/kvW7EP78S00mELv2KKezwglT3GXkXmlbWBH0t7Zy33K0ffebxLstkex1428QT0rDLQablWTZFiR1UZJK4oETaBLLYDhu078z/527vrknQMZYAZv3mZMkjpWdEFescIIAcuQore97C60sg0foRLEiGcai/6ibkXnrm1qVJ7ZIrNUtuxwTWd0zTTVorWmYb8KT+7upBrokLuN2QyhAhtacQdnBtOCmovKYknrNbUieLVCwBLL1s8Bary1TDfsJc7QmbSB9+EE/4jOkmzpTj5RcNNihHXsjsRhgDTdSLmwpBh4Z6RgrqLO6sHvSam9mrMu/6WsF2nWPCVDdwZAteGwO+kL3q7/27jPDAc42+/f4iabdNQTYRExnc+hizVYEPlzNF8RD/Aq4qxFnhSMP36Wm9RhCyFPBnE266SokipopeuFjlOmswys/jRNQOjmg7wxKEGt9N2fYLkx+0OW9TOXc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dRXrCekTL/3SQq/7DlPFFK121zBffLHrgxbvpdvoChXbXLoWkHDcK5WSdq21?=
 =?us-ascii?Q?358p36EeGHykEQu+/pfIFh/TfmaZ6hDd8dGa/LpzDn/Dn0tkm7w/rzjnlHe0?=
 =?us-ascii?Q?lIf8t64yWLKB//goZW4IepAgfsidddJuJSEKTFwpfgdzLS4klbZHOVnBT8P9?=
 =?us-ascii?Q?KQYvIg5fQ1aQe5cxpMmDXU982zNdEnzAfGc6VVT+WmSRPs7ByYZCB24mLSS/?=
 =?us-ascii?Q?GNlTS/TP5yZ1tUwxotYq7SGiGpolO4Yk0nl6Pp23YVo6lNGwhWCQ3XU+16hF?=
 =?us-ascii?Q?ukMb1RoCWp5lQN2zOetj/43fEqKD50iXgArKs2eGDbBD6sDS07BC5i/Lfc/Z?=
 =?us-ascii?Q?1ilC/bnHjQVgOP39DHxIxtk2mFmEfmT88fS9fZKK8mJYCSDGgTUqsdn0OtxD?=
 =?us-ascii?Q?s8Z3wpFzMzxgFVBQo5gkba9rc6vk0QKEtLtS1tpKGJ1t2oDE4q0/qPss9HH5?=
 =?us-ascii?Q?Afh7FAkDiymDyeC467Pnl7iXi3xy3FZ1Bio6zX6gqeBGTWCi8YOoZP4PmFbw?=
 =?us-ascii?Q?JinQvgKCYhRpgUDHGdnRVWM1pxspOA/NkRTx1t2TJe8uT2tjqDQra8jcjq/6?=
 =?us-ascii?Q?WXpBIqnqrtQtKkhauTkR30TWZhDclDdmdFD+R7ezY1Rriu9/L+x8PZmRWGRe?=
 =?us-ascii?Q?Q3ROukEiY5FKwwTvnIWtE7JJaB92Ii49Unwi5AqF2YuE56UcVIwnFWSIXpE2?=
 =?us-ascii?Q?KUQa3Un7KztMgDamNGVic2qCqLTKoFVROox+tCdymydg4bB24z/ZZsN6BW3K?=
 =?us-ascii?Q?iTWbrmljbtjusnmvcp0eO2Ni3Ct5jE2TGwEvOzjirnLNNvVGoTyV6fbZ+JfR?=
 =?us-ascii?Q?1iEs85pm6IwNRqOwmpJXCYVzFlbp9oTW8IM3SVoIVDpzqubDKzuKuOThkCWb?=
 =?us-ascii?Q?NJ6b7XmfkHtX4cd39vzEw5HqUvG6+8LXhmSFFcTeCN+IsziN2obHs9uUUjYV?=
 =?us-ascii?Q?nD60091t7mzNQYeySlCs/uWLbBSD6ypjQ/MAbx776LJoGZmFfsl8ntkYxIrM?=
 =?us-ascii?Q?w1YjYqCg73661AVbTZpH3NsDYlZlctU5pZrqpCtdOrXKK93SgPIkLj9ADsgc?=
 =?us-ascii?Q?II40hVNsPwuA2wVxzSbJHsKrS6DGvjV0npxFHlUkIdDrMjGv5N16BHcDBDTw?=
 =?us-ascii?Q?Wnv8bhRjoZKonUjHEw22msGlv8jTnqrYrmErDIn1lJljHrWSIfa1N/XBKK7Z?=
 =?us-ascii?Q?Busl0H87QoBxmTBGXuVdtcc+P+INvgVnTK4QhD+q6jOISSVVlzAgl+drk/m8?=
 =?us-ascii?Q?5VvmZ3ax4sPoWsEeEzdbdz1jrmubKlklsyATBl/As80pm0bH4FlKi8UbDBeq?=
 =?us-ascii?Q?9Xrr8d8m4mFRsRQrw/WNy5SIOspJtCKNMweL+Gng1SZ3nT8h8rZ3gKxuf4tW?=
 =?us-ascii?Q?U70qzRQwI6FpTjRS8lidpNkrxV3wMjymjzkyEp5FKucCx0WQ+ZAc/dgR+Io2?=
 =?us-ascii?Q?gpZtBZgw6PLyk4FD8XmcYMbbzlJKFYxX8gRAKF1GMJOYh7BnXrwjj1oxbCkC?=
 =?us-ascii?Q?plSVLBvM7v5oZexthXXyZIWNJK0dcMYQdt7njsNRaLxrG5WDqcdM/txAadmv?=
 =?us-ascii?Q?51Gg0zIaVotD4rHLdjk3TEesA7c2viYKRAKTEoglx3D1YyuhiV27CFpYguda?=
 =?us-ascii?Q?veZH/Qz7Q/XrTQe+ndi0iocBV57pQszEVzDwq3rwRwo8z7iPgKXt8rRFrzDi?=
 =?us-ascii?Q?SQG2A4gLZROX9ZY05Z9Vv98qfJ1T60gx7icB9kVuMWwHu5MRsyDRBQ48VMgr?=
 =?us-ascii?Q?AuD0nYyEQw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Frtqt59FNQMLbqcFmwx5Wh3jvIh78baG8e6SiIIBEAzqqOL3fJQg2IZ6dGH9zJeytEA8Xb5Ie9fesGG05yxgAI2K/3z08iBSa/kxQywpSEQquB8NoqHsv4bXsSrkDetS1WZJiir3SBNy/NvEPApm/oUbHvb0l+aayCaQWkEqMeTyw1hrwOjxm7cxVjriZqQtoVF5rRHYV9oL6h8tJg8X0l7/kqKpNmF+a4YFfcr2QpufajAbnhDI8mRV4l6av24fAkOdpbG/hT8fVebnTiZC6JDMLLw5iDtmTwnu2plq7+96yc3sUWQQBfVUxZImRsfBAN+S5xdk6ioVQPykuPgu1g==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 250891fc-b138-49a3-54b0-08de7fe27a07
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2026 02:53:01.9528 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lBbaZb1GTdN/F9sHHJa9ixtwpVSt0zLItdnFMNRXeuuqftEL4WOtSPIkX9inMmu8pQkmQeX2GUhZ4YTCTzEI0Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7208
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 359C526C7A5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


> Subject: [PATCH v3 22/24] drm/i915/lt_phy: Remove LT PHY specific state
> verification
>=20
> Remove LT PHY specific state verification as DPLL framework has state
> verification check.
>=20
> v2: Reuse intel_lt_phy_pll_compare_hw_state() as only config[0]
>     and config[0] parameters are reliable with LT PHY (Suraj)
> v3: Rephrase handling of LT PHY case when verifying the state (CI)
>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 14 +++++--
>  drivers/gpu/drm/i915/display/intel_lt_phy.c   | 39 -------------------
>  drivers/gpu/drm/i915/display/intel_lt_phy.h   |  2 -
>  .../drm/i915/display/intel_modeset_verify.c   |  1 -
>  4 files changed, 11 insertions(+), 45 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index 534cc691979f..c3f35250f192 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -5075,6 +5075,7 @@ verify_single_dpll_state(struct intel_display
> *display,
>  			 const struct intel_crtc_state *new_crtc_state)  {
>  	struct intel_dpll_hw_state dpll_hw_state =3D {};
> +	bool pll_mismatch =3D false;
>  	u8 pipe_mask;
>  	bool active;
>=20
> @@ -5116,9 +5117,16 @@ verify_single_dpll_state(struct intel_display
> *display,
>  				 "%s: pll enabled crtcs mismatch (expected
> 0x%x in 0x%x)\n",
>  				 pll->info->name, pipe_mask, pll-
> >state.pipe_mask);
>=20
> -	if (INTEL_DISPLAY_STATE_WARN(display,
> -				     pll->on && memcmp(&pll->state.hw_state,
> &dpll_hw_state,
> -						       sizeof(dpll_hw_state)),
> +	if (pll->on) {
> +		const struct intel_dpll_mgr *dpll_mgr =3D display->dpll.mgr;
> +
> +		if (HAS_LT_PHY(display))
> +			pll_mismatch =3D !dpll_mgr->compare_hw_state(&pll-
> >state.hw_state, &dpll_hw_state);

Fix this line is too long Checkpatch throws warning.

> +		else
> +			pll_mismatch =3D memcmp(&pll->state.hw_state,
> &dpll_hw_state, sizeof(dpll_hw_state));

Ditto.

Get this fixed before merging but my previous Rb still stands.

Regards,
Suraj Kandpal

> +	}
> +
> +	if (INTEL_DISPLAY_STATE_WARN(display, pll_mismatch,
>  				     "%s: pll hw state mismatch\n",
>  				     pll->info->name)) {
>  		struct drm_printer p =3D drm_dbg_printer(display->drm,
> DRM_UT_KMS, NULL); diff --git
> a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index dd8b99f8821e..5bbbc6182861 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -2268,45 +2268,6 @@ bool intel_lt_phy_pll_readout_hw_state(struct
> intel_encoder *encoder,
>  	return true;
>  }
>=20
> -void intel_lt_phy_pll_state_verify(struct intel_atomic_state *state,
> -				   struct intel_crtc *crtc)
> -{
> -	struct intel_display *display =3D to_intel_display(state);
> -	struct intel_digital_port *dig_port;
> -	const struct intel_crtc_state *new_crtc_state =3D
> -		intel_atomic_get_new_crtc_state(state, crtc);
> -	struct intel_encoder *encoder;
> -	struct intel_lt_phy_pll_state pll_hw_state =3D {};
> -	const struct intel_lt_phy_pll_state *pll_sw_state =3D &new_crtc_state-
> >dpll_hw_state.ltpll;
> -
> -	if (DISPLAY_VER(display) < 35)
> -		return;
> -
> -	if (!new_crtc_state->hw.active)
> -		return;
> -
> -	/* intel_get_crtc_new_encoder() only works for modeset/fastset
> commits */
> -	if (!intel_crtc_needs_modeset(new_crtc_state) &&
> -	    !intel_crtc_needs_fastset(new_crtc_state))
> -		return;
> -
> -	encoder =3D intel_get_crtc_new_encoder(state, new_crtc_state);
> -	intel_lt_phy_pll_readout_hw_state(encoder, &pll_hw_state);
> -
> -	dig_port =3D enc_to_dig_port(encoder);
> -	if (intel_tc_port_in_tbt_alt_mode(dig_port))
> -		return;
> -
> -	INTEL_DISPLAY_STATE_WARN(display, pll_hw_state.config[0] !=3D
> pll_sw_state->config[0],
> -				 "[CRTC:%d:%s] mismatch in LT PHY PLL
> CONFIG 0: (expected 0x%04x, found 0x%04x)",
> -				 crtc->base.base.id, crtc->base.name,
> -				 pll_sw_state->config[0],
> pll_hw_state.config[0]);
> -	INTEL_DISPLAY_STATE_WARN(display, pll_hw_state.config[2] !=3D
> pll_sw_state->config[2],
> -				 "[CRTC:%d:%s] mismatch in LT PHY PLL
> CONFIG 2: (expected 0x%04x, found 0x%04x)",
> -				 crtc->base.base.id, crtc->base.name,
> -				 pll_sw_state->config[2],
> pll_hw_state.config[2]);
> -}
> -
>  void intel_xe3plpd_pll_enable(struct intel_encoder *encoder,
>  			      struct intel_dpll *pll,
>  			      const struct intel_dpll_hw_state *dpll_hw_state)
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h
> b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> index 147ae431713d..16de39484779 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> @@ -41,8 +41,6 @@ bool intel_lt_phy_tbt_pll_readout_hw_state(struct
> intel_display *display,
>  					   struct intel_dpll_hw_state
> *hw_state);  bool intel_lt_phy_pll_readout_hw_state(struct intel_encoder
> *encoder,
>  				       struct intel_lt_phy_pll_state *pll_state); -
> void intel_lt_phy_pll_state_verify(struct intel_atomic_state *state,
> -				   struct intel_crtc *crtc);
>  int
>  intel_lt_phy_calculate_hdmi_state(struct intel_lt_phy_pll_state *lt_stat=
e,
>  				  u32 frequency_khz);
> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> index 12a00121c274..2ec17c2bfe0f 100644
> --- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> @@ -246,7 +246,6 @@ void intel_modeset_verify_crtc(struct
> intel_atomic_state *state,
>  	verify_crtc_state(state, crtc);
>  	intel_dpll_state_verify(state, crtc);
>  	intel_mpllb_state_verify(state, crtc);
> -	intel_lt_phy_pll_state_verify(state, crtc);
>  }
>=20
>  void intel_modeset_verify_disabled(struct intel_atomic_state *state)
> --
> 2.43.0

