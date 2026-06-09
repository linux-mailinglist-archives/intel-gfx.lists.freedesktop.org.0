Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jY4vDxTGJ2qf1wIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 09:51:48 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A64D65D602
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 09:51:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Tk9UkYSJ;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D1C010E149;
	Tue,  9 Jun 2026 07:51:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 654D7892AA;
 Tue,  9 Jun 2026 07:51:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780991504; x=1812527504;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GdzQhx0uNGvhOBiXBZ+iIwIQc9U5t5Wp1Gxk44ngRRY=;
 b=Tk9UkYSJSDlCkACO+DLBkAlE6DjCM5d+FV4oM5XgmSl1vQoRi44Z3FNF
 cWp/NnwG3MgtfHpyP6XzVGam7qdjVXROBo1LLv+qoKijFMXTQBq+HxO0t
 6gSd7kaBfIn3zv7hXB8Hf395DfM5oAmSWlUacOxbMzIJU03HKMzgxqbXJ
 e4q9HWaQbvnUCPWG5uO0TB8uE7C2ZiEmmGDeuJUiZyv2eiagVSjquF2BG
 hRboDDAjfHHM50JZ8ZHfgYaG0ft6CZeVo9mp7TkWPEQSfBk9EHfKEK040
 KFDaweO9VSU5ZSr6NSKUIN7N56cv9WzFJGbmG9p6tYgajPI6agrNMrdYf A==;
X-CSE-ConnectionGUID: HvA3Qcf0Sya1KPrikh6iUg==
X-CSE-MsgGUID: FKwo1g3ySa60DfmgZOkx9Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11811"; a="81748738"
X-IronPort-AV: E=Sophos;i="6.24,195,1774335600"; d="scan'208";a="81748738"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 00:51:19 -0700
X-CSE-ConnectionGUID: o18IZ/aaQMeETPkndS2P2g==
X-CSE-MsgGUID: Kateq5YgRD2oE1ee9fUwgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,195,1774335600"; d="scan'208";a="244937396"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 00:51:18 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 9 Jun 2026 00:51:18 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 9 Jun 2026 00:51:18 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.1) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 9 Jun 2026 00:51:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FmBy4UCHoe9SQ+w6VzSi0tW8ZdNunO89e9ucTh1hNyjsXK9bkCkqnZwesQcrvvlyvU36OU3MIBYyi4ZNEkP9Rq/5SyukEVkjwwzQI+Pdq+9wWWVewLqnoB+8fFs3pzzxI2d4382rG5F7jm4fxOD7ae5PaSBiiCblay8flowDtA78mmXetbAVwvK6f2DwgsrT7b9thooKW4Kkd6kuLGOkwPWE4dqXLE5mCI2gNOQ1HQrA4U2gTws1nx52KC0PMro2jiS2vUUfUOzeJAT7ckKUukNhYlB+NbCxnlCmPU/r7BANy+3TIddO2VpO7w922ZqfSppS9yU7F7AfnUjGjrU0kA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P55ryFMFEmkVBjk9srzuBZw/jy+VweLCgQ78vNEQrv8=;
 b=HrQvLs/4fBdWd7P+nuERW/0oJzuweSIlbvLA0gdt9w1/+OedJoWHlZmQhzL4CvLKTrqpomC3xr21ClCKXASAXYnPOsQT3vl5gSMUWO5VKX3xxM8SCehRkWO203NSiqvRBz+D+d9FWW7sD3mUvB2ux5pKetC1B+nuHW9CuXD+G4l4bgOFDNPi4yT3C/JulGNj+g/CMfg7WKvrikB5fZj0Xr8OmEQygb0QpnkS6G9jgFUDzBAngl+Fx/wypMQnMLK0fLayJ6oEHkpjSvs1OlYKOSSoyBqfFilBwoRxDAhPd39TAU6aDoxlNkqXaW0ikicbIrAiltR+gndvF0LWkIEPYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::5b) by MW4PR11MB8267.namprd11.prod.outlook.com
 (2603:10b6:303:1e2::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.13; Tue, 9 Jun 2026
 07:51:12 +0000
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6]) by DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6%6]) with mapi id 15.21.0092.011; Tue, 9 Jun 2026
 07:51:12 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH] drm/i915/display: Skip generic pipe dpll_hw_state compare
 on LT PHY
Thread-Topic: [PATCH] drm/i915/display: Skip generic pipe dpll_hw_state
 compare on LT PHY
Thread-Index: AQHc90pM00uchb4Aykuwo01m9aBgorY113gggAADAnA=
Date: Tue, 9 Jun 2026 07:51:12 +0000
Message-ID: <DS4PPFE901A304F5E4F3186111A73F0683BE31D2@DS4PPFE901A304F.namprd11.prod.outlook.com>
References: <20260608132505.1849158-1-mika.kahola@intel.com>
 <DS4PPFE901A304F9D8A3F2373EB7BBB7209E31D2@DS4PPFE901A304F.namprd11.prod.outlook.com>
In-Reply-To: <DS4PPFE901A304F9D8A3F2373EB7BBB7209E31D2@DS4PPFE901A304F.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPFE901A304F:EE_|MW4PR11MB8267:EE_
x-ms-office365-filtering-correlation-id: 417696ab-91f2-4eee-7b1a-08dec5fbe058
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|18002099003|22082099003|6133799003|4143699003|11063799006|56012099006;
x-microsoft-antispam-message-info: F4sTXrctQwv+EhEIPKsf4v6+1Va7nBrCqGIABXRuBh/9y7S70enkmX5X/FX9fE/E1wy+MpAi2W+WRrbbunDALxXjp0iYFSe2+0hreBy6h6YlhWJktliheXzHJxNjcuzNvm3ZazNocl4iAORgX4ouwZif1PnqNeBVe74kFhUD4ewn9D1XpLeVG+YGz2cYblSzcv/WQVjEUcjX+IxwmHezC3cQmfYrSRMdKQcLZ8zaGOH4DjEy7vhfSE+SzxaIAEzWR7dAj+r9kWyNh2qvgCyIKveBPxQA6Y/DhzElufRaL6VSExSB/BpV4dLIKu76kc9k6I1IAC6rzlvVIWSbYz6JBakkxo2LRyDXCY/CSrIS2uT4qK+X1XOwjSnY+PbqIXJpdRCtX24yk9QjIXpqbIma0qhhRUzVMQsyV268zj3yZRjWYVzTiZd1kTyLNIb5sFtUr+DBJU4CDhsilr4OJiFuB1JkKGzshUXf0tox5kx0MIWa6YOcOr+FXi4Md7zvN1hQgaCmhHoMWCJdZkZvU8kSYjM0Xde5XYkMVVMtoJAC5dWnm2+tbaWMKfdTBtU9LDQ1lHuSZdRKVMVdC9JWC3SuTBCmZECjKjLN3Rsv5lf5/E3lDOs/5EBaf/c+u6VfaYtv/GVP21KlUSnwzcGVxxeBplaoI0Q/XG6QNgHKNHWkXYhpIJDu7WfYgck//PF8/o7LIh/AklZiJbo/5LC2Cj7Sa84xQK16lN4xiB8DBhd5KTiZEPCNtW57qucDhx+KvOPC
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPFE901A304F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(18002099003)(22082099003)(6133799003)(4143699003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ttckwp7LO9C5lwbH9tij6jWYwrFDoRn3HyXRf5n3M9HkkNBnOU3QPpUR+op9?=
 =?us-ascii?Q?PqZxRPAYoxlNpvItWxb6Nd8u+h2A5gYBu3olVqqRIx8HVsa9/m0ij2QONRRL?=
 =?us-ascii?Q?TyYTYBwKoYlHquxRweLf+rrnNQD9CegrhgI4wk8/e+jpU6l8/waLq2P0e9JC?=
 =?us-ascii?Q?AiAzfO/xsVGDSn5vGv6hbw24DIvd4aDlTAdjQ9n6Bwp+GQOEgyXyI5qxZhN2?=
 =?us-ascii?Q?nX0pM4dzRFDEE1hDKSh05EweUqXD+W7BxATM2aFj/OQxvk0GNMWHaBseR9VD?=
 =?us-ascii?Q?Q9dCESsZckTSWpbvq4wwefKA2VPU/HLs7UB0LFjECqE8U+CQvPS79GWHYs9y?=
 =?us-ascii?Q?U+1osALkoV0weuEXsMDRMbtMDa2/tGbqjzjLr43aWe/1GBd/DUfM/G+UKCqw?=
 =?us-ascii?Q?E+SCOYWHbJWQ5wStMi5NUbjH3DIh5xt+3s7uwen317SvAdNMNvr6TtTRHHPe?=
 =?us-ascii?Q?zFZeCuMCCO1+tGXwQLNXzUFD7oaySq+RB09npnfjuCnVqzDwOGSm/EatfypC?=
 =?us-ascii?Q?1HdDhaUM7nieLhby7EPwtCWuTlbDdq7vTb36oGKn4XiPlI60E8NgF4qKRmVb?=
 =?us-ascii?Q?oeNlx9doyXCBOZAru+sgtbnCZH9PVSkkCzoiOT9lNFRcpBYGk3PJexnBx5LQ?=
 =?us-ascii?Q?HyJB62lUxpzwKO54DntgCvzZ0jTdCY71uDnQydiiAf+l7patNmggTKWs4I8U?=
 =?us-ascii?Q?DKGDaFbqlPoXgTVy3DU+UN0qYU22jZASbakuGAHpoBQiEaUP43nCjZNgCZY0?=
 =?us-ascii?Q?5rTD5RFdxdLcPzd/PP8GoURdboFC4rSOwH0KGJBNU2YCA3byf4RZC4JB4B9e?=
 =?us-ascii?Q?4io/WQ9LtK5+nV912ZTdX57oA4Po4HBepL7ESRRJNUy2fKQsgs5uxPFvQC0O?=
 =?us-ascii?Q?BxhkEJqWSJyvepx9LNI5rIiSUUH46MgY/WypjhVu+tKPxuPTgao+fS1CFvZz?=
 =?us-ascii?Q?T1gu4Ed0F+x4qJOTOyWqhOhKpqebBFKke6GGrk9WUyYNkJ1WLjR2i94m3Llv?=
 =?us-ascii?Q?5e6MgQHD9CRu0k/K+U6pyePxGjIsZ427aO5ICnzG/bX7kpsRLGSBJI8VaqFy?=
 =?us-ascii?Q?+fEGoiH4QJOj/ZAf0LSea7FbMoODsa+u4QZurHj8pAUuON/QmkwAK66dowOv?=
 =?us-ascii?Q?fTclPI7b39Cba23UQwrOxoBS8OHl5SEI6l8MRsHGhzM8znEe1jnLWLquzaGR?=
 =?us-ascii?Q?PLMWidCzBNYq19MoIDdQdV9IcJ1jfSjlHS6T65PnRHOLXEwMMjYw/a3C2pMB?=
 =?us-ascii?Q?KezBmypmOwKS9QDZTuYIDHLr1uXjXaAc1ZFDLRL288akXad5DdFeYEK1ebqg?=
 =?us-ascii?Q?rHrhL56b1FDPnYOyH9leBKjDH604pM3TcF9lFH7m2kmkr1vpYPCk7FpBziRo?=
 =?us-ascii?Q?bvR3qGvUYbyj7GAfK/53zcV8T65buJW+wDFCp1GrLJWjHSNEamyfI+3C3xQ4?=
 =?us-ascii?Q?h6Cfg+I19ZfA0wJJis9pEST27vkxb/vGLjkr5MCIf/goJ4L52nzXD6oDd4AK?=
 =?us-ascii?Q?OZR9z50XD8lIJTuWWAMqQU1rnHHPSNTWJEX9ibVE/1PRwN3KyAdG1Rnd/rtX?=
 =?us-ascii?Q?dPAN/oFwGFAiuW0n7y17ff9e6fRZyHAZpqQFhHpXZYHCWavshwHg5xzH/rIR?=
 =?us-ascii?Q?mYJuSX1mJmiPfukEvkL9MfQPCkZDRhtg9F3PBbYWpr2fd+YyI1UdgLk5vRtA?=
 =?us-ascii?Q?EDc/dsM4tdzxf598p6HuE3/Po/Bv60nWJcjHU5yn70CVhKwoQl9EsN1fRy5W?=
 =?us-ascii?Q?AxpLP8yULQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: pn6ZOScVlCDIATAAO3FioToQNpCmcMrudWfsIQx+rL4kpfW6ADQQmNamEJraWyyjY1Bu55LbwjZihPopDIq5zjPw4r6GRhm2UG1eFUTR6H3sF/kYzhYFO6y44WWpcbOPUAOrq68Khgo/ESNFyAv/JfGffvanIGbKfx8381I3xHAlCO/AS09/XhlAzDcO/iM/4bB2O76zaXoiQE1b76Ob2FRSVetTS4WkitINu/rc6urLtSN+7fDejra/aduq9tTH/qTxW7QZM7lmpWwOV9Xmim6al2O2u8oq1IoqNdwob/iIgwC1Kc8g01opnLaxRWIJKi47u5p5K+SA/bU/DmAKRg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPFE901A304F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 417696ab-91f2-4eee-7b1a-08dec5fbe058
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jun 2026 07:51:12.4298 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SpGfcg86Cme9VMUNACWbXdKdlhk/b8cydPZGfrC9mM4ShQMjJKRP+wDuJqhwD0TIk+8IlVGvmt/k0CgyOMyCow==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB8267
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
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7A64D65D602



> -----Original Message-----
> From: Kandpal, Suraj
> Sent: Tuesday, June 9, 2026 1:13 PM
> To: 'Mika Kahola' <mika.kahola@intel.com>; intel-gfx@lists.freedesktop.or=
g;
> intel-xe@lists.freedesktop.org
> Cc: Kahola, Mika <mika.kahola@intel.com>
> Subject: RE: [PATCH] drm/i915/display: Skip generic pipe dpll_hw_state
> compare on LT PHY
>=20
> > Subject: [PATCH] drm/i915/display: Skip generic pipe dpll_hw_state
> > compare on LT PHY
> >
> > LT PHY PLL readout is only partially reliable, and the LT PHY code
> > already documents that only a subset of the state can be read back
> > reliably after power gating.
> >
> > The generic pipe-state verification compares dpll_hw_state as part of
> > intel_pipe_config_compare(), which can trigger false-positive "pipe
> > state doesn't match!" warnings on LT PHY platforms. DPLL-specific
> > verification already exists via intel_dpll_state_verify().
> >
> > Skip the generic dpll_hw_state pipe-state compare on LT PHY platforms
> > and rely on the dedicated DPLL verification path instead.
> >
> > Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 8 ++++++--
> >  1 file changed, 6 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index 2fa10f858279..85ad2bc4963d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -5374,8 +5374,12 @@ intel_pipe_config_compare(const struct
> > intel_crtc_state *current_config,
> >  	if (display->dpll.mgr)
> >  		PIPE_CONF_CHECK_P(intel_dpll);
> >
> > -	/* FIXME convert everything over the dpll_mgr */
> > -	if (display->dpll.mgr || HAS_GMCH(display))
> > +	/*
> > +	 * LT PHY PLL readout is only partially reliable and the PLL state
> > +	 * is already verified via intel_dpll_state_verify(). Avoid false
> > +	 * positives from the generic pipe state comparison.
> > +	 */
> > +	if ((display->dpll.mgr || HAS_GMCH(display)) &&.
> > !HAS_LT_PHY(display))
> >  		PIPE_CONF_CHECK_PLL(dpll_hw_state);
>=20
> intel_lt_phy_pll_compare_hw_state only checks the reliable state hence we
> don't want to add this here config 0 and config 2 are expected to be reli=
able
>=20

If you are seeing pipe state mismatch on either of these VDR registers then=
 it's a issue where PHY is not giving use correct value since these two reg=
ister must absolutely be retained by LT PHY.

Regards,
Suraj Kandpal

> Regards,
> Suraj Kandpal
>=20
> >
> >  	PIPE_CONF_CHECK_X(dsi_pll.ctrl);
> > --
> > 2.43.0

