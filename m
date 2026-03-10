Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cN+RBR27r2nNbwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 07:33:01 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66690245D6F
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 07:33:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6062E10E655;
	Tue, 10 Mar 2026 06:32:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kSGhMJsO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 108B110E655;
 Tue, 10 Mar 2026 06:32:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773124376; x=1804660376;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JbvB1DzmZ2nG3E0g8pmG30IYNq3KlX8UZbSLdAjcCqk=;
 b=kSGhMJsODtcxgIoiuYByY83VofF2FludXSfu60BgHY6Fs1YF1MMwodzg
 QoGcPseRIrdQZIxJyknKMaIGaY3/B4JGJ168v0pNsZQY4TxLtOzmIoab3
 Il7v5i3If9WznFRLOaWfy3kgDc6rAd1a8zXISwXqY/PBY2TEVawv6VzeF
 /MDnYrjn8rkt/AZw0G5R/oGOZZm3Bj5FjWuZKOw4mIaR5CtZC5PrXvo7d
 W9FqsEKT6mtmdB7TVGwZk4OB5UlEFYVMzFhRyFscejcKKfNluCFC5Kchb
 6ktrs0RlQ5xzB9DplwBd8meH6EzRXLTvw2k6DVUY9vw9YxAGYf7P+WeFO w==;
X-CSE-ConnectionGUID: 7RFlzlO7RJmxANK6sOjXNA==
X-CSE-MsgGUID: sKOolOAkRRuosg6NaARezw==
X-IronPort-AV: E=McAfee;i="6800,10657,11724"; a="76768832"
X-IronPort-AV: E=Sophos;i="6.23,111,1770624000"; d="scan'208";a="76768832"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2026 23:32:56 -0700
X-CSE-ConnectionGUID: whLZjmipSvyli6vrvoLNaA==
X-CSE-MsgGUID: PNMnPgR3SD2gTNClVTmjrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,111,1770624000"; d="scan'208";a="224438841"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2026 23:32:55 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 9 Mar 2026 23:32:54 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 9 Mar 2026 23:32:54 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.13) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 9 Mar 2026 23:32:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=muuK8L/PHBRW8dGXLTGGct7Lw2r5V30ShUW3rZqJx2zQ4NT9ccc8gP16VjE2ApeA8KUIAFF3pDl97ehf5pt99IjhYWSgRjoK62ZSiuruhKQqX1P9ADeAISfcfyNJ/qRn8aiLxemluI8CXXi0t9bQawP5iWh8SQrtbwu27QriuWSJO9o1LwGZr0gtOATT+kMW9hqjymxuK1a2wc8og0eeqwUXp3/yDGi71ucu7t3J2bSLdLIVMermSUyuhGDNs6IYjX2t1JhvuMI0sV/E9SzEnSi2DVVghp0j42fP8i11PdmSNpNBYathwsVwbFvOazDrgzfUoU2A8/5KhNuMPpEZdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DC0i9ujFzGgnw+zNQ1W6NQMV7eWD2aAlb9GG+ugs50k=;
 b=xFlAdPg+Ul+J/clpK+jFr6ty00C0KLba0y0hDuZry5FVvxt3bbuLkusMBhYaS6YHL6eX7RjHtENoN7iDVROpC1Ay1UFFXMohG2NqpVXZXs52jyFBI1OgGDWM82H7DQdbeCFVVLFseAM7c5SLX6piDLD0E/mt4iMgvoSu/OMIZR1rdEQVm6FDjrXqD1jDt5BTZT3FOJ7brY9czL4vqks1gnW41hETkGQvH/U1C37Pp271YP3NFOh7yqE9w2QKwoV0pJZOJrfMcWUvfZHTLMhbj70uFL6kwTfe59hoXYgz931OU7VLvU3wGfcyqhsFyN5/nAMO4wihsBRzLoOA+hRY1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by CH8PR11MB9508.namprd11.prod.outlook.com
 (2603:10b6:610:2bc::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.9; Tue, 10 Mar
 2026 06:32:53 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa%6]) with mapi id 15.20.9678.017; Tue, 10 Mar 2026
 06:32:53 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>, "Kahola, Mika"
 <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v2 11/24] drm/i915/lt_phy: Add xe3plpd .dump_hw_state hook
Thread-Topic: [PATCH v2 11/24] drm/i915/lt_phy: Add xe3plpd .dump_hw_state hook
Thread-Index: AQHcq9pSHwpz9Kl6Kk2fjcuN7e7GE7WnU4wAgAAD0rA=
Date: Tue, 10 Mar 2026 06:32:52 +0000
Message-ID: <DM3PPF208195D8D252A5DBB3E79B237D2A9E346A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260304131423.1017821-1-mika.kahola@intel.com>
 <20260304131423.1017821-12-mika.kahola@intel.com>
 <DM3PPF208195D8DFD5DBB9B9C142E2D3D5AE346A@DM3PPF208195D8D.namprd11.prod.outlook.com>
In-Reply-To: <DM3PPF208195D8DFD5DBB9B9C142E2D3D5AE346A@DM3PPF208195D8D.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|CH8PR11MB9508:EE_
x-ms-office365-filtering-correlation-id: c250aa4c-3c90-4584-3020-08de7e6edbae
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info: vMSsLW59XN0Sj4wThjZgDLKpJTxsb1x6/N+p/kfPx3yFBYacaW5oL7E0Lr8boRijwz8+/u3lxEpwhv4Cy4Avg5SHdLkfcssUVQv7iLxvEyfdCK8kkJUi5JU3DcOd2fdY9tgcecuVE4lfn2PFkxmcOSXmkkGQF4ULdEkecI+fQ3i26hOgWGQD4Llz/BowIGUcnwcR5YOcFOrlPCfJeqTXHiTJxogSC6M/Uq/n7IFayczXAASgNfz2Y4DvkfSxKAg/4vsTQiMlTK/AFVMqPlI/hRll1zTnw6J2qT7UOqZAW+mswYwRwV+L1z9TJitxBviot7uDFZzen1qldKCP0FO6IkKsK4xHJq1C+5Lb9PpCmnXoSvhmOYfv4PujRciF5Lu5E/u9AR/K/NfwYz5ZKE3LsS9L4AkqMFZJwmDXux/0M9kWN4ZMQT3mm9XxrhOJerX9u2D7bc7ZV7XgX6dWzG1eBdXkNVl4BfbZFSvmm9k7Ec4vaTUSj9SCEAccywWot2tZ3CDwCya3q4Fgk/4FBWjyjv1tPYYfBLtDdcufB++MCWtNmKfH+StwhV1JnU9NXjItOm01n+ohECawD2FedRtzRpdFinabkg1ILSl+HxjKcXJAnGpjSe5bIO6aeKgHJbQZhxCtDi9MQEQ0u4/i/bUFiP5Iz/ITHy4i+/9kb4DkRdNvVyCsqsRMHptklNoga2Zki/NGnjms+Zq9+/oUbpWIWqowGARaLd6+WQWTe3YlJlXjgzdiWX5m1YhoMUQlCzhE+5Tl8fE/L1u+3GXqUJI7+jOMjImRNTZISGylefWXURA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?F1l7oh4TA+3GL8rtZ6dZv4XMUUuVepE5VeTlyVx2mir+WAfXXTDq5SQeSCo1?=
 =?us-ascii?Q?v1Sga82GGS8E6mQTBhhrsiFukWyGZdSlSQQ7MLOGqDIaveQSM0bvhL/2F/Bq?=
 =?us-ascii?Q?PgV1YXF+IPdGucGzk35KqMWT38qamWhkug9quk+8WgKAFZqkW9gk5QhbarP2?=
 =?us-ascii?Q?Lxc7R+x5FfRbiO2vTE/yemdHcmO24j85TKItd9HH4DnD25WepgWTFLtSwx3P?=
 =?us-ascii?Q?QuqjT8I+fOVmKvRDBaqEbVGl7xoPbuHsLoxyAHqE8VpGzsUlR2+izTgsEP6R?=
 =?us-ascii?Q?daSqYbRokIElS5hrMh5uRmijYEchWYervdiBM68zLhowgshDnn8XnMJSbMtu?=
 =?us-ascii?Q?czWnVS0EcHjMsuGaLvCck+C9jMigKTQAaFBaAl0y4hJTU3FFfWWINZ6faM2l?=
 =?us-ascii?Q?5ZUvjPYELN4md60gfgfkBcU3sFJvHzh4epapPhUHK9GT+99fVR82BydqlEuY?=
 =?us-ascii?Q?6BZU9fbjDnf1sKXBNFXeg3GgZ4W7tzxlz9tBIMnFPA/RHwPHie8VoPdbRW2M?=
 =?us-ascii?Q?kMKmtRUJoUGKT/LrkLszUbD4M9anDI0tfCN5YzQEHq2GcEcm70LAh+eWTXRn?=
 =?us-ascii?Q?dLz5CLUbttqOQi9t7YK/hkwHzwPFxe2bHAZ22ibUs5j76CqFYugxoPYQhJQO?=
 =?us-ascii?Q?iub52/ES0uak981CFJjw7b1G7vn1WDmBA9E7MYnLsR3sLGFPZr64OFLk7kZ2?=
 =?us-ascii?Q?kYQkhatgambkV0qEkhpzVg93LPeZVx4ysZHnfKjy9Z6r4wwEtQx+qj0Nl+th?=
 =?us-ascii?Q?bD7AenoplN1fF+H81fx9yz831mREMcpPTMUZI2pq39REl/9EADMW2ngjGsFI?=
 =?us-ascii?Q?aMzTp87B+bqbx6gdbq3tf210Xasrq1VCsmiCAA+cUQJa2gdmpBTRmNqb3yuJ?=
 =?us-ascii?Q?IiPxYYpAqQmwBgie6wvKE4B/udlIR8ZOcF4jU4hBNNoXs8ur8YFT04zqYszf?=
 =?us-ascii?Q?m8GE2EWo9gepe6W2t5kYEf/EXvGyy7+RQae7JcjdI29Dmljb1ghbqs1+yW2y?=
 =?us-ascii?Q?ZN6QFkbjwcngGMYApUGAC2+T/7LcdRpddO1cfoJEBKWcxPdSv1wXwiXIpElt?=
 =?us-ascii?Q?/wlu3qTnQX+/kn3iJTvo1zeD1dTE3fD4It2duR1ehHF3VnDDjZD+/iV2cijH?=
 =?us-ascii?Q?Fjm+9HgoPqrr4OYiYsr6UQfW4lVAqevDogkIV59DsaOC1HMrd6YBv4ou744a?=
 =?us-ascii?Q?7H7ZUBPDXF/58NRVozSTr71fMTahuq+iNbBcxODt351EHdq73+z0So2qsZbT?=
 =?us-ascii?Q?1Lg6BfHf1az9dkoj1az0K8lfNHfih2y2/5Fr5fdpWPlgFm3FUMkNu7AdNPJF?=
 =?us-ascii?Q?P9XKsqCJ7HxUALBoLiOMkUXnMgbnq+PAoLwNQWI1FmCsqvhL9JJtoZ+25k/I?=
 =?us-ascii?Q?0L+4pNh1nQKjKU0+Mw6/2UKWy0TrFzhub+1NajPHjYMdZHwwJLgkCeivRF5z?=
 =?us-ascii?Q?w/TGKnYA9ix8UCAE8cWSxmCLv9F+q0W368agqR1Gy21chr/a7jc8HUBATy8I?=
 =?us-ascii?Q?/HFRfJhXUyvb/HpPaxf54LHrN890Xqpi20GTel4E5NyWyNYbl5ojK22PJjlr?=
 =?us-ascii?Q?r0zCMIvo6JwPvgg5HGEfu5JaCUbb/wpZAjj1PrRwIgad/yLJUM/F88/Kmcm1?=
 =?us-ascii?Q?FLuytDWcDVa4l5j8QPhjmOmXTl6irJLb4uJzNOH0OsPCo14lYXXmIeLsBx28?=
 =?us-ascii?Q?xNpbM2/u1I0xg55Darw9f1X/Q88mulraMlojBxhenONUviSGief/CY0J8ovx?=
 =?us-ascii?Q?TOnE7xzv9A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: G04Y4g1998Fq/69lrn4jDp0ilyvbPoLVt1ZocIK8D0tvm4UCnaqkk9xEl6OrwhVbiVTaHeG40Fv1AnYkDLpu18hllk3xLx02vVpf5y8WspGqdoRKzOwLZXBbIb021ZVLJv0BRV0lUHKR8adyRx7MORDbx56eLVnCgquiJhZgqvZgV/48gm8KuOx93ekU6XE9ShasGwYpuNQ42lS5xXQ/0Z1euq7zhqFOgniKRTz5iEib9m5JegwcCCxOU4YdJCmwWKwLeUYk9KvINr8TSM1iY/n4a1acPaTAO2CKcSjfGjOHJWQgsIaK48dhwEAb3NS8CLD67UJHDArP+IWa3llotQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c250aa4c-3c90-4584-3020-08de7e6edbae
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2026 06:32:53.0043 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +XxotJypDxuPqifGs6KuHdY1up1sn96Pek5JKIct7Gz7EzS0+iYGyrycwl0JvJ3KzS8wp0shYPL7hE0XcRfycg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH8PR11MB9508
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
X-Rspamd-Queue-Id: 66690245D6F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,DM3PPF208195D8D.namprd11.prod.outlook.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

> Subject: RE: [PATCH v2 11/24] drm/i915/lt_phy: Add xe3plpd .dump_hw_state
> hook
>=20
> > Subject: [PATCH v2 11/24] drm/i915/lt_phy: Add xe3plpd .dump_hw_state
> > hook
> >
> > Add .dump_hw_state function pointer for xe3plpd platform to support
> > dpll framework. While at it, switch to use drm_printer structure to
> > print hw state information.
> >

Ahh ohkay so you do the change here,
Maybe move the patch right after the patch where you introduce drm_printer
Otherwise,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> > Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c  |  5 ++---
> > drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  7 +++++++
> >  drivers/gpu/drm/i915/display/intel_lt_phy.c   | 16 ++++++++--------
> >  drivers/gpu/drm/i915/display/intel_lt_phy.h   |  3 ++-
> >  4 files changed, 19 insertions(+), 12 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index 27354585ba92..d67ec81c0b01 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -5065,15 +5065,14 @@ pipe_config_lt_phy_pll_mismatch(struct
> > drm_printer *p, bool fastset,
> >  				const struct intel_lt_phy_pll_state *a,
> >  				const struct intel_lt_phy_pll_state *b)  {
> > -	struct intel_display *display =3D to_intel_display(crtc);
> >  	char *chipname =3D "LTPHY";
> >
> >  	pipe_config_mismatch(p, fastset, crtc, name, chipname);
> >
> >  	drm_printf(p, "expected:\n");
> > -	intel_lt_phy_dump_hw_state(display, a);
> > +	intel_lt_phy_dump_hw_state(p, a);
> >  	drm_printf(p, "found:\n");
> > -	intel_lt_phy_dump_hw_state(display, b);
> > +	intel_lt_phy_dump_hw_state(p, b);
> >  }
> >
> >  bool
> > diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > index b50f02303356..26b78063dd94 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > @@ -4649,6 +4649,12 @@ static int xe3plpd_compute_dplls(struct
> > intel_atomic_state *state,
> >  		return xe3plpd_compute_non_tc_phy_dpll(state, crtc,
> encoder);  }
> >
> > +static void xe3plpd_dump_hw_state(struct drm_printer *p,
> > +				  const struct intel_dpll_hw_state
> > *dpll_hw_state) {
> > +	intel_lt_phy_dump_hw_state(p, &dpll_hw_state->ltpll); }
> > +
> >  __maybe_unused
> >  static const struct intel_dpll_mgr xe3plpd_pll_mgr =3D {
> >  	.dpll_info =3D xe3plpd_plls,
> > @@ -4657,6 +4663,7 @@ static const struct intel_dpll_mgr
> xe3plpd_pll_mgr =3D {
> >  	.put_dplls =3D icl_put_dplls,
> >  	.update_active_dpll =3D icl_update_active_dpll,
> >  	.update_ref_clks =3D icl_update_dpll_ref_clks,
> > +	.dump_hw_state =3D xe3plpd_dump_hw_state,
> >  };
> >
> >  /**
> > diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > index ca31b3c1440c..923ee132ec3c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > @@ -2146,23 +2146,23 @@ void intel_lt_phy_set_signal_levels(struct
> > intel_encoder *encoder,
> >  	intel_lt_phy_transaction_end(encoder, wakeref);  }
> >
> > -void intel_lt_phy_dump_hw_state(struct intel_display *display,
> > +void intel_lt_phy_dump_hw_state(struct drm_printer *p,
> >  				const struct intel_lt_phy_pll_state *hw_state)
> {
> >  	int i, j;
> >
> > -	drm_dbg_kms(display->drm, "lt_phy_pll_hw_state: ssc enabled: %d,
> > tbt mode: %d\n",
> > -		    hw_state->ssc_enabled, hw_state->tbt_mode);
> > +	drm_printf(p, "lt_phy_pll_hw_state: ssc enabled: %d, tbt mode:
> %d\n",
> > +		   hw_state->ssc_enabled, hw_state->tbt_mode);
>=20
> Maybe not something for this patch to fix but a separate patch adding deb=
ug
> print for Lane_count since we cache it now
>=20
> Otherwise,
> LGTM,
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
>=20
> >
> >  	for (i =3D 0; i < 3; i++) {
> > -		drm_dbg_kms(display->drm, "config[%d] =3D 0x%.4x,\n",
> > -			    i, hw_state->config[i]);
> > +		drm_printf(p, "config[%d] =3D 0x%.4x,\n",
> > +			   i, hw_state->config[i]);
> >  	}
> >
> >  	for (i =3D 0; i <=3D 12; i++)
> >  		for (j =3D 3; j >=3D 0; j--)
> > -			drm_dbg_kms(display->drm, "vdr_data[%d][%d] =3D
> > 0x%.4x,\n",
> > -				    i, j, hw_state->data[i][j]);
> > +			drm_printf(p, "vdr_data[%d][%d] =3D 0x%.4x,\n",
> > +				   i, j, hw_state->data[i][j]);
> >  }
> >
> >  bool
> > @@ -2330,7 +2330,7 @@ static void intel_lt_phy_pll_verify_clock(struct
> > intel_display *display,
> >  	drm_printf(&p, "PLL state %s (%s):\n",
> >  		   pll_state_name,
> >  		   is_precomputed_state ? "precomputed" : "computed");
> > -	intel_lt_phy_dump_hw_state(display, pll_state);
> > +	intel_lt_phy_dump_hw_state(&p, pll_state);
> >  }
> >
> >  static void intel_lt_phy_pll_verify_params(struct intel_display
> > *display, diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h
> > b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> > index 61ec0e5d8888..b208bbd6f8ca 100644
> > --- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
> > +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> > @@ -8,6 +8,7 @@
> >
> >  #include <linux/types.h>
> >
> > +struct drm_printer;
> >  struct intel_atomic_state;
> >  struct intel_display;
> >  struct intel_encoder;
> > @@ -26,7 +27,7 @@ int intel_lt_phy_calc_port_clock(struct
> > intel_display *display,
> >  				 const struct intel_lt_phy_pll_state *lt_state);
> void
> > intel_lt_phy_set_signal_levels(struct intel_encoder *encoder,
> >  				    const struct intel_crtc_state *crtc_state); -
> void
> > intel_lt_phy_dump_hw_state(struct intel_display *display,
> > +void intel_lt_phy_dump_hw_state(struct drm_printer *p,
> >  				const struct intel_lt_phy_pll_state
> *hw_state); bool
> > intel_lt_phy_pll_compare_hw_state(const struct intel_lt_phy_pll_state
> > *a,
> > --
> > 2.43.0

