Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0PnWIjsGsWmypwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 07:05:47 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8D1025CA4E
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 07:05:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4016710E31B;
	Wed, 11 Mar 2026 06:05:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XwHPw9Qo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 980D910E0F0;
 Wed, 11 Mar 2026 06:05:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773209141; x=1804745141;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Tio/hDeflE/idrbxdkxZZvnx3/mMY+5W+WOZNpCDP64=;
 b=XwHPw9QoQqQH2ECsyOEzvQx9DdOGHbxcrAQs+a03eoSROXTR5miX3kKO
 RrYkZknEJHYa9trJlRvSaGdEf0zFhwLu096XASHjfU6EhLmBlkRLhWn32
 MDm3eZEQXYm7tKjLe0UuaopwVWw1fTFmycR4pZkOjFJ5PqKu3YCO5OQW1
 AfmE0keaZ9ktEwR1PrFhNgw0bU6LsqjndLphThzNFZU1oDr3j7F/U+OEr
 RnDhzreNSVHpcR0GjolNnqsJVopaDNB7CHZX+Di7LCT+Qd7IlJjIJwhzA
 9NlxFKXXySyP26Wmpq3TYHa0WjXQpbaNJzcf9hrsABlNRQ7Mqlam8xIDr A==;
X-CSE-ConnectionGUID: JFdKDVuEREypBeuTWUQsgA==
X-CSE-MsgGUID: JY+Wjo6YR3C+e6nDkYxrMw==
X-IronPort-AV: E=McAfee;i="6800,10657,11725"; a="96883333"
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="96883333"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2026 23:05:41 -0700
X-CSE-ConnectionGUID: x4XQG0g7RyKfqb/ycjDPEQ==
X-CSE-MsgGUID: FjFCf6lkSF6WtRnlbTN96A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="225316220"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2026 23:05:42 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 10 Mar 2026 23:05:40 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 10 Mar 2026 23:05:40 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.10) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 10 Mar 2026 23:05:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=G4z+z6+CbP7t9Jf4AiZIVC16vhfimabGw+ouaFe/mUAPKPBhzTs66Kz1/++NJKfbt3akZN7VAfic2wvkfqWPBcbU7AxlM31u8nWZh1EhpSHsDeqDXOfS5pmUZ760QZ0DZ74gPzqhdPhXpDzaY1M5VVHyn+oX/kj32+TTfoaxs7yHG9gSeV0tXpjP7HTi1VZ9WENrmc+kYa58l3ExyYauI6diY/CTWj5nqrtwr1eiyjRCMKB6cTBjowY1fDx+qFGJVcehPiK6KNHGdwcfFWj/9gLK0D6eRkJOaDnIJCjT5hDAUF4au9eWIiBbojIUFS4OLWYjQPQcPerZo51AsFsmKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mgJnujJTWNbfVD9bnFPYOebeq+oqzNiKly74sG9KvWM=;
 b=jfyN8FNoEcqDUtzDC+IyzzFZfZl5BV8encPK+lt1+HhfeUyqqFGOmg+j7XgT2WnDTp5tS9T5JrxBiVKTTiqVn9pW5VJ45iRjbrpPrUUFoD0EdaGAEgDOxqonLLEnCnqUAMViR33EEhlH2z+hI/ceSUyyNwKzog2P4Vm5HUkser2Y4ochHDoMOsZka9zMNELH+LbjcktZIyLywiSaB2juIbRBsw71gL6SrnaLJ9vEdwml+Cv4ca+lmbNmQYq5PMCQhz7Kq+o3Gqewd2qzk3uVlxMDamQ21oKRjrVSBQc9QhQ0vhlKyme+dUzEqyF9h0irQhm1cqL3NPVAsXIaDTE+Zg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by MW4PR11MB5889.namprd11.prod.outlook.com
 (2603:10b6:303:168::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.13; Wed, 11 Mar
 2026 06:05:28 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa%6]) with mapi id 15.20.9678.017; Wed, 11 Mar 2026
 06:05:27 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v2 22/24] drm/i915/lt_phy: Add xe3plpd Thunderbolt pll
 hooks
Thread-Topic: [PATCH v2 22/24] drm/i915/lt_phy: Add xe3plpd Thunderbolt pll
 hooks
Thread-Index: AQHcq9u1T0ZlgcolbUauZJJQltDDWLWo4QWQ
Date: Wed, 11 Mar 2026 06:05:27 +0000
Message-ID: <DM3PPF208195D8D71A5DA4F0A863F48FC2AE347A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260304131423.1017821-1-mika.kahola@intel.com>
 <20260304131423.1017821-23-mika.kahola@intel.com>
In-Reply-To: <20260304131423.1017821-23-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|MW4PR11MB5889:EE_
x-ms-office365-filtering-correlation-id: 1027dd04-f94f-4d05-4566-08de7f34316b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: MeW/1s0v0iddjdo5YuCtnp1m9N6C2wAAeIEhlJ8M248m1C46ynuMRuKPeIG7IObdaVr2p9Z1S0HXyfLoO7T/uODir0IW6jH/2dXtqk3wPq3DMI4lI151AcFSWAPNIzow6SsK+4g5zZBJYi7LHB6bgr1WqCaKuAo0O1f6yrrJhZ4Ju4dpAMXOt+BGzZMyx8uJ97CzekECfyf9lOqNmyV7k3KicpfNqEGevsbungLcKg6eKKt4vbzbXN7BlpWFiy3r46aOI6NiHavbxqpmx8t1OkQd9oTVbamt9374u0ZHxBOWA5GUebeighYuynKEMgblmB7mLVTS2xzHjTR4Gt44c52WC5yr5/RdFN+gHi2rK9hs184rsjlQfSXS9sLWMGtTegTP9gVht1ILO9Wv8PvRPiwCJSWjIqIbDlhBL3M+PjdPm7Jg+yprSa6/rsjnrHvwl9I4zj7C8Tu3HA83EM8BZb0zyMwDn+kv33rFjdSv7f2RxH9JXyGL+NFLy5xoVhqz0nHJsiePos3PJiRGqvyRFEB51wlbTfMhl/4jqwq3YBnDUz07+g6eltVye7BSAPXj4CjgRw/3huwt7WVfmNlYwqlf5wNTawdKJF99HBFi5zGkAR/muGn2MSgXUimcN6n4pTbRkOJ65LK8wZBOFwwA7XkeXOqlLHRQ2IH+vzV/QMsq8VUBc7nX6gw0UB6ZebPCSKg3o4nmJI6CDFwGywTK0HR6yD/NuW2sLcZboNe8DW5qnlswKdk0ihZjWPmC+4dxdFYleTRJwBrc0llsyC1WdoTSfa2P8XU7W9mceV7/dyw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?teRrb6imYQrdEf2k6wbJqxN5J5Y4DH25j813olFQWiZPyDb3xnEmDt/Gdl+W?=
 =?us-ascii?Q?eZHayUo3YAegjZTIkNzecgW68APKaDJIJN8H2LSec4F5yyJpsQMGzyXnW154?=
 =?us-ascii?Q?yE8WeAldu9OrPP1yx6rX6IFMQozNYk5rzivdEvrKjLML9lif5wacw+iQdQQz?=
 =?us-ascii?Q?9c/FMEQN7D1nQSvvfbVVoRe0u4r1FL+HU7Y5w+e5RsZSj74j1oMvN2JGKdWD?=
 =?us-ascii?Q?4x0jTKzLvV632ZKlM8hTKSTNXasrC8VSDJiKGCXYEzJrRYAy7CRuruoQK4us?=
 =?us-ascii?Q?DzWvvEk82CwENEmqI7d03BH40rmWCeIdfrYf0rqV6xNP/Kh50iKj31xpP2gf?=
 =?us-ascii?Q?U2OWVcMIhrN1Wa/N0GAV9b67oy4tiPo5Es0KIZaeFLGQm5vSlIwqRQPzBGN2?=
 =?us-ascii?Q?ODekeq3b4OAX+F1q0fTnwQyPzgP4ogMbgbSgY8A3pmoR7UzQtI9rD4QzBXia?=
 =?us-ascii?Q?EMGPxcl2Dz13IWFfVtHxBGDgU74PGf2XFHBWdJHumB4RW7EiPOe8USe5Uch7?=
 =?us-ascii?Q?OaVk2zNak7FOUM6KXWNms4nm3QbC2tU4eL0nyNjkdukkaJvS0O2ZfV0Wwrgc?=
 =?us-ascii?Q?BAPn0LvA8iWdYTJzEg2AqE7O1SpcaTD2JFwQMcUJLsQtszUNNJoi394C3XkG?=
 =?us-ascii?Q?ee/R3RYybwqIFabQQuWVxGldIcQwXX6PsFitWHDDLNJi7DcR6inFhaiWS1MV?=
 =?us-ascii?Q?SK4KE/DmOX+F5gUa3/oS4LRYOniMOin4Xww8KSaeiHvO890VGML73cwWydNU?=
 =?us-ascii?Q?H2Li7vqgFKq4xxqixINqLkH6t2cBQnDFlnoyqom6gRH/NyjOMSNQZFZfJDet?=
 =?us-ascii?Q?DpCy125aOxCSy4Yh07gbyTmB0Vi6ZEImDjmdbdJHRXbYn1a8zFswMEWOlga7?=
 =?us-ascii?Q?4G0j3Acx9Ca1bMApuFttPZjdrvfd2FVitG70wqY0rgfBDtLNkLf8kEujm4eq?=
 =?us-ascii?Q?2+S/xZadNfVlqVfbjmnGY5qnVknb0hzAi7BoPRjTAmBrE2yPMuh93rmcTg6J?=
 =?us-ascii?Q?4E7c+5hiBaYziRG8/ICXY+qJUhgh/jwjAUc/Yq4EYWt5vaDcTbaA0F/kfm3j?=
 =?us-ascii?Q?U0nsOn5Y857ONIyLoJmYkJKwv2Cjfs9xcf0K36wRFIvma8ag8xH+a/QdwDr1?=
 =?us-ascii?Q?TqiICMQkwSP/808Xzm6FMFjtbJT+ripFXGSyZcyp5r5aQUklhaYlsdmwX+p8?=
 =?us-ascii?Q?Z2ET/SCyMuOc1fPcoWNrlqhOnK2wgeHPXiMWB1JNzIi+5GglK8ySM/Qo0N6V?=
 =?us-ascii?Q?U/Yh5+AA690d/m/B0LSIJnFpwjXV7o1sQcmusAIsDgyERHCE/M8HtmS+oMkE?=
 =?us-ascii?Q?CuFCrTFyFjR9FJVtfeuFZv/pBJ6XXV5LQeFtR+2FM3Yv9z7/O9VD1JQUPp1y?=
 =?us-ascii?Q?PhNq9/1WsSO16wXdQ2rV8Y7il1NhnVYb9RCilt9i67U1ZYm0cv9SUCZtAJo+?=
 =?us-ascii?Q?invcSct9+76B7C9NuX2EOCd5Y45L36TXbpsuT7/4MK8Cu9lr48T2KAaYJyZQ?=
 =?us-ascii?Q?zdSKau64PFUyRaYysS4361+vfJSJaIQa10pl8ql/5N8//tZuTNThFDvaK7xk?=
 =?us-ascii?Q?PK/ZaqQe/lZY8nfpwZhuZ2fFNbDiMhMGLSbGy7385BaO79fqz0iMEnZZ2op+?=
 =?us-ascii?Q?mWoeahs+tP9kWgLbxN86cC0gZ7813h3XGAwc8aUY4G/xRNWxwI8LFSymwaYm?=
 =?us-ascii?Q?Y1ntpa25xOVeYKOKmPr3M5HgC6XsNFYsB1bRWwEzO2voftAJUFz/5lHXBVnU?=
 =?us-ascii?Q?qBBY8glF+Q=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: LN3i4WwhNN+z4ilC5SK5n7Jg2xxu94ubVyBIIbgUoJx5G2hRlEIamUahc3xE7wmEkBDwXMe0Y52NGsg3nJDUkaBfKkkU1xaJVLGD4EXl0eb4/2iJEaJLd+yTBN7aca13j2bEOjkJnfwx4VMKetqsr6Rq7yoMiQXZ5kz6ZZuyf8ntDrm8G0xM1/Ionc1hWGtchXj7LCqta/341RkNpqlmO1xNZtq2p1ptq5UMi+W6J1nvEQAS1PD5hNAZJK/ScHP3Zq/I2KzsgMPddmVnofOyPoN43/+JcOPNlvfsDy0nIMj+TdFzYw1cxlTJGkTA7lcYdyyYzHKL8iELaWOvlK678Q==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1027dd04-f94f-4d05-4566-08de7f34316b
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2026 06:05:27.7131 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8RJJzcAoNIQ2EdsVdyj2wGKbLF1HAN5iHGa7MQsJk/KBxM//4AkNs/zrC+iYk4AJOEG++6cJ9Get2Z3HowAD5w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5889
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
X-Rspamd-Queue-Id: E8D1025CA4E
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
	RCPT_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[DM3PPF208195D8D.namprd11.prod.outlook.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

> Subject: [PATCH v2 22/24] drm/i915/lt_phy: Add xe3plpd Thunderbolt pll
> hooks

* PLL

>=20
> Add the PLL hooks for the TBT PLL on xe3plpd. These are simple stubs simi=
larly

* similar to the ...

> to the TBT PLL on earlier platforms, since this PLL is always on from the=
 display
> POV - so no PLL enable/disable programming is required as opposed to the
> non-TBT PLLs - and the clocks for different link rates are enabled/disabl=
ed at a
> different level, via the
> intel_encoder::enable_clock()/disable_clock() interface.
>=20

With above fixed LGTM
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 13 +++++++++++--
>  drivers/gpu/drm/i915/display/intel_lt_phy.c   | 18 ++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_lt_phy.h   |  4 ++++
>  3 files changed, 33 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index 28c560417409..534cc691979f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -4618,6 +4618,13 @@ static void xe3plpd_pll_disable(struct intel_displ=
ay
> *display,
>  	intel_xe3plpd_pll_disable(encoder);
>  }
>=20
> +static const struct intel_dpll_funcs xe3plpd_tbt_pll_funcs =3D {
> +	.enable =3D mtl_tbt_pll_enable,
> +	.disable =3D mtl_tbt_pll_disable,
> +	.get_hw_state =3D intel_lt_phy_tbt_pll_readout_hw_state,
> +	.get_freq =3D mtl_tbt_pll_get_freq,
> +};
> +
>  static const struct intel_dpll_funcs xe3plpd_pll_funcs =3D {
>  	.enable =3D xe3plpd_pll_enable,
>  	.disable =3D xe3plpd_pll_disable,
> @@ -4628,7 +4635,8 @@ static const struct intel_dpll_funcs
> xe3plpd_pll_funcs =3D {  static const struct dpll_info xe3plpd_plls[] =3D=
 {
>  	{ .name =3D "DPLL 0", .funcs =3D &xe3plpd_pll_funcs, .id =3D
> DPLL_ID_ICL_DPLL0, },
>  	{ .name =3D "DPLL 1", .funcs =3D &xe3plpd_pll_funcs, .id =3D
> DPLL_ID_ICL_DPLL1, },
> -	/* TODO: Add TBT */
> +	{ .name =3D "TBT PLL", .funcs =3D &xe3plpd_tbt_pll_funcs, .id =3D
> DPLL_ID_ICL_TBTPLL,
> +	  .is_alt_port_dpll =3D true, .always_on =3D true },
>  	{ .name =3D "TC PLL 1", .funcs =3D &xe3plpd_pll_funcs, .id =3D
> DPLL_ID_ICL_MGPLL1, },
>  	{ .name =3D "TC PLL 2", .funcs =3D &xe3plpd_pll_funcs, .id =3D
> DPLL_ID_ICL_MGPLL2, },
>  	{ .name =3D "TC PLL 3", .funcs =3D &xe3plpd_pll_funcs, .id =3D
> DPLL_ID_ICL_MGPLL3, }, @@ -4671,7 +4679,8 @@ static int
> xe3plpd_compute_tc_phy_dplls(struct intel_atomic_state *state,
>  	struct icl_port_dpll *port_dpll;
>  	int ret;
>=20
> -	/* TODO: Add state calculation for TBT PLL */
> +	port_dpll =3D &crtc_state->icl_port_dplls[ICL_PORT_DPLL_DEFAULT];
> +	intel_lt_phy_tbt_pll_calc_state(&port_dpll->hw_state);
>=20
>  	port_dpll =3D &crtc_state->icl_port_dplls[ICL_PORT_DPLL_MG_PHY];
>  	ret =3D intel_lt_phy_pll_calc_state(crtc_state, encoder, &port_dpll-
> >hw_state); diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index 232f14d69ec8..746b0182362a 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -1766,6 +1766,13 @@ intel_lt_phy_pll_calc_state(struct intel_crtc_stat=
e
> *crtc_state,
>  	return -EINVAL;
>  }
>=20
> +void intel_lt_phy_tbt_pll_calc_state(struct intel_dpll_hw_state
> +*hw_state) {
> +	memset(hw_state, 0, sizeof(*hw_state));
> +
> +	hw_state->ltpll.tbt_mode =3D true;
> +}
> +
>  static void
>  intel_lt_phy_program_pll(struct intel_encoder *encoder,
>  			 const struct intel_lt_phy_pll_state *ltpll) @@ -2208,6
> +2215,17 @@ static bool intel_lt_phy_pll_is_enabled(struct intel_encoder
> *encoder)
>  			     intel_lt_phy_get_pclk_pll_ack(lane);
>  }
>=20
> +bool intel_lt_phy_tbt_pll_readout_hw_state(struct intel_display *display=
,
> +					   struct intel_dpll *pll,
> +					   struct intel_dpll_hw_state
> *hw_state) {
> +	memset(hw_state, 0, sizeof(*hw_state));
> +
> +	hw_state->ltpll.tbt_mode =3D true;
> +
> +	return true;
> +}
> +
>  bool intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
>  				       struct intel_lt_phy_pll_state *pll_state)  {
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h
> b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> index 3838e9326773..1c2ec438cd10 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> @@ -26,6 +26,7 @@ int
>  intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
>  			    struct intel_encoder *encoder,
>  			    struct intel_dpll_hw_state *hw_state);
> +void intel_lt_phy_tbt_pll_calc_state(struct intel_dpll_hw_state
> +*hw_state);
>  int intel_lt_phy_calc_port_clock(struct intel_display *display,
>  				 const struct intel_lt_phy_pll_state *lt_state);
> void intel_lt_phy_set_signal_levels(struct intel_encoder *encoder, @@ -35=
,6
> +36,9 @@ void intel_lt_phy_dump_hw_state(struct drm_printer *p,  bool
> intel_lt_phy_pll_compare_hw_state(const struct intel_lt_phy_pll_state *a,
>  				  const struct intel_lt_phy_pll_state *b);
> +bool intel_lt_phy_tbt_pll_readout_hw_state(struct intel_display *display=
,
> +					   struct intel_dpll *pll,
> +					   struct intel_dpll_hw_state
> *hw_state);
>  bool intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
>  				       struct intel_lt_phy_pll_state *pll_state);
> void intel_lt_phy_pll_state_verify(struct intel_atomic_state *state,
> --
> 2.43.0

