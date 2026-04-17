Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gNXdEqnH4WllyAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2026 07:39:53 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 676CA417250
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2026 07:39:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A23B10E28E;
	Fri, 17 Apr 2026 05:39:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BtNWCmKC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2842A10E28E
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2026 05:39:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776404390; x=1807940390;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:mime-version:content-transfer-encoding;
 bh=BRbdWP5lEAo9mm1+jQhmtPnaEOUIf0IblPhCXmwOP8c=;
 b=BtNWCmKCk0UUWReKz4jv2/uKhUBwSz9jLFXiwLKVUlyzYM599pINGh0s
 Hv3PJl79QVWtlAq2HaCQxRTllp2VXDR+NBkh9YxoJKi9jV2M9UjgZt7Mc
 W8qaP0/HBfcmj9i0TPFbzBgY7jkLDOHmf1yj5TqjP2u9fJ3xPJPEelJud
 dvHgfk7VGlI/2PU0FPKl2MTnFoVT0zdwxVzIiLQd6EljHYBbpy4PqQasZ
 7WvzihIfg0v8fFX/LrecBeDqVZpDC7gCtLIRv8GfkBiYQs+LKepj3KBKe
 UKJOtE5C7VZM9OtrH1PTmGIj7OpGmGvXxPSY+zYJ6F6VQGSLYJFjqMXIA w==;
X-CSE-ConnectionGUID: 1a2gZuHcT1CouHFaAE7hwQ==
X-CSE-MsgGUID: 41UCDQMISx2uMyRfSiVzLQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11761"; a="94818184"
X-IronPort-AV: E=Sophos;i="6.23,183,1770624000"; d="scan'208";a="94818184"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2026 22:39:48 -0700
X-CSE-ConnectionGUID: yHjVy7Z0SoulV1/hBZPI/w==
X-CSE-MsgGUID: Fe395epSTOGqd1rDChzJcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,183,1770624000"; d="scan'208";a="232695653"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2026 22:39:47 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 16 Apr 2026 22:39:46 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 16 Apr 2026 22:39:46 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.36) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 16 Apr 2026 22:39:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kLS9xtHTJ1U0eiWi0hSlCXG4sLQjth5MyPyg12VX5e+mbNRh3h0VEP27qkR63eCs+mabCaablR0s+vaL3EpOjRGmQVe9uAlfTZGXPRbeqn0Q4OvvJpoZUCKP2hyIa7KSEyCPBlFaekPAQ1tixZzo3fnAKT0P+4h817++nlQVcLh2TB3QEnAVkTM1+OloZIENlH91vuqi/X7eDzkdDiCYFVPgQguSui9qf8PGH1GmVZqLWlaxhmG9wbnSSGe3kC8KdgDy2iLz/xbUmuCK5LE5KouL9GtcbwMiDj9TTFhqOZW6QEA9uc+2JXHTFEnoVFt8UcSP1ELW7mhDAiayTzJ78Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oCdgF+B0gKxRO6q6Kk2ffIH2vlT1K6GNKeSR9k8nij8=;
 b=PKAEidaD+x0/x1XPqBlZ3lcU3hO30IFPKhfv2+I/Vg91/E51+4ayLmkGRoTbXCi09UPlsYwcvszSGOIUlNn9onSDlLlfyNgQ+Bi7jW4tgKeNGwNH7Tsd8d/Ij/sx4bFh5mhJ8Dw46jHIf/L7Q4uaReLqMDN2LzD6mLPZZqCdcfTs4w/zIDKD5OLM9BHoyszTGDDKq/vpLmkuMrdo+ge1tAVk7vRuGCmU8g1796QiHq0IQWNUeL5f7Q3Jz7px+LQps7tP62n8JUnng4+PD3t6JrVos56vc/28SKu1K+KbWC+yzXRDGjFCy5K1VAnpJ3ps2sJLUBs7ib+GLaGHMV759A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ5PPFC0624F2CA.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::850) by IA1PR11MB6372.namprd11.prod.outlook.com
 (2603:10b6:208:3ac::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.20; Fri, 17 Apr
 2026 05:39:43 +0000
Received: from SJ5PPFC0624F2CA.namprd11.prod.outlook.com
 ([fe80::67b2:73df:c8e1:4627]) by SJ5PPFC0624F2CA.namprd11.prod.outlook.com
 ([fe80::67b2:73df:c8e1:4627%6]) with mapi id 15.20.9769.048; Fri, 17 Apr 2026
 05:39:42 +0000
From: "Plewka, Maciej" <maciej.plewka@intel.com>
To: "Yao, Jia" <jia.yao@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "stable@vger.kernel.org" <stable@vger.kernel.org>, "Lin, Shuicheng"
 <shuicheng.lin@intel.com>, "Roper, Matthew D" <matthew.d.roper@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, Andi Shyti <andi.shyti@linux.intel.com>
Subject: RE: [PATCH v3] drm/i915/dg2: Add per-context control for
 Wa_22013059131
Thread-Topic: [PATCH v3] drm/i915/dg2: Add per-context control for
 Wa_22013059131
Thread-Index: AQHczih2KNSdZkU1HEaHraDPYQRMqbXivLSQ
Date: Fri, 17 Apr 2026 05:39:42 +0000
Message-ID: <SJ5PPFC0624F2CA9A92A1D7A3AB3BD1C4ECEC202@SJ5PPFC0624F2CA.namprd11.prod.outlook.com>
References: <20260417050956.1945481-1-jia.yao@intel.com>
In-Reply-To: <20260417050956.1945481-1-jia.yao@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ5PPFC0624F2CA:EE_|IA1PR11MB6372:EE_
x-ms-office365-filtering-correlation-id: 4b3a0d19-cba2-4e03-f5da-08de9c43b9df
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|56012099003|18002099003|22082099003|38070700021;
x-microsoft-antispam-message-info: NKOJjd0sUPMX3OmmuRQQz3VptOAX+c/sf7GdoFrQPoenMEge1f6uAiibP40QVW++JbELAG+Wiz62h3VF5OHPKG+KWEWMgstBgpkv42oCDa4U8fxK7agz0TLia8wUtHUrfpnQT8DxxfdJB3VZRK6bfVd+HMxtTZvE98SSIQyzY6wSrWSQXleeyXge6JXUWWzrjZkMhUv6T86LPqlDhHBqYEUwO2gntM55tJ4+y1gs7q+9pHIZaXc/7kIev0EDJ2j85MzsdS+qfkt6YbeqEvRYviGNaYCqrFg0rqZJzdpRUY869XWBK30Z5LR0e/YAjpaKu4Ty0kgJDaBBV27DgOOQrlRU52PELf24HTuQCfC7HkYsQkcQw1zJlaSg3xv/WlpIkY68jHUM1XCpzxMk7S8KIjL8+E9YLs9/59UGuksWHtQL12G8E7+eYFRR3np7qNegNVz1FRUSyQD/jHW7dv6BLvFwtmJRw/HX92ep/3L/KgCrniuZJ3zmAkQn+eJrTn+5f3mgbYIQJMDlJ5c55fJWIX3tkCKh3Se/L8y+JHpBMP+EeDkqjWBnLd7dPYulmVd5I3pHQHxFzTHcXHR+yRfjIJ1POCKghGN2t5cWLWVztIqAXa0oc56UPmCvK/1u9Hpg+0Gjiffilc/STx61Wfn/ZctInE0fHm9X8kz0pZ8yO10p1CmMPYZn5RbP9jS/8e8NfdLUtkpT/c6Dh7aMyIxNDZSVNuI27aj34J63xpA+GzubUDYxAjQaDoVtb5XsIIG+rNuOLGAG87siWIYB6NezatwFrzWgVrGfOlPPrCJ0pSE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ5PPFC0624F2CA.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(56012099003)(18002099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fGUNbwtSbe9mt+WPo6hz5+kbxGWwyIusfBNx1/tk9G6VyGYwLpOdk7p+7dFy?=
 =?us-ascii?Q?4q5EPl/VFT8J95APhydcNs5eXOigXYuLmxIKVwH1FUVxr9h+AA5AXMzNQE5m?=
 =?us-ascii?Q?vvc0ApX7eS282lIyiY929fktth6Bvx3A6T93YVXvBIGT+ZYPbCSw7CxLXaGe?=
 =?us-ascii?Q?VYdlbLymVrc/sl0Mt7pLFGJjfGeG+98yVAzhBM4wng/qEDosJnq2sK+zB1YD?=
 =?us-ascii?Q?t1wYrwSQz4Wx9ZpFcdoUGu3AlI2apCQP/pmFkcrCtq2h5ioZWT++kbKtj4xe?=
 =?us-ascii?Q?GGNR75PGZnIVphzkPUwwqbo7c3xIa9JV7BTeRkyRR9xomMuNUUx6PEb3qEt4?=
 =?us-ascii?Q?6Vaj+0FHsBTHM4D7A2lOQ6pjJ5Gf06btX3dUbipZqpTDdhep7Wu9mLOpmxlZ?=
 =?us-ascii?Q?uOq8RwAAHJCACD/3NkM8amXQj6JFTVVrcpglWvKJPdWv4aqs8n39AlRpSrpP?=
 =?us-ascii?Q?8PAvAf3EgjbdeQBiddiBoQSI7kK7BLx9F4FnphadofYAsuezoJCGNugJK0tA?=
 =?us-ascii?Q?iPDAg6YIvyUYbLLgUU7aY4ejjBEIkjgJETPmwqeMlsHBBYCOrvpLFlfSVk4v?=
 =?us-ascii?Q?FMs7dkuIfeCZ0GChLjk4C7IM8HEz/WRUrQSJu1xuN9+wCL+sMLiPToyqW4yO?=
 =?us-ascii?Q?cD4HvWp0STcV3/Ho+5ySGDAHSsMNFFpkkRPofSI1e8cLfAJ+/QPMIFnbvRuB?=
 =?us-ascii?Q?tUvbW2u/PIMKq5bAooHEma/qRpBYZuDxNkYVqJYUv3MbwuFZO33lGvV5IKgz?=
 =?us-ascii?Q?9U0mttpVLmuHYHKsSt/wmOnoJubXS0QB0IphQ7s7VEBD61pAsqUu5DwPSJKI?=
 =?us-ascii?Q?FXpd5YZkb7w+pmzWlx07F7AxKIlaxoUTfSSrXUuNzi/WvbI3RmXU/ig3uuAD?=
 =?us-ascii?Q?QfmzAEalg7gIDotiPCSgckhVY7Jj7jdf/JNqgtQdxQifVboQ5m0N+OPss6eu?=
 =?us-ascii?Q?bpcR0r1ba0saqQ5AGiSllJ+RBRtk2R4eTeKvLL3p6Ut8sPLimBGzsfGn7cNF?=
 =?us-ascii?Q?tWGsUvsP+MzMXk+HpPJPneuTW2KUzzy7VLZtvvIs+iQX7PG3SAKLkbNnLuNL?=
 =?us-ascii?Q?+lEIlP3NnA9+ZIvaA0mcGRSe+HXkkQCB9rEU/O/CPayLtFtQASoQvnS/EVfD?=
 =?us-ascii?Q?+8N1adFWqidiQAKtjP84bn/jQurBydnpatgtyLW46VhdglEmr05Y8G72wNfo?=
 =?us-ascii?Q?CiAHJImkTMyWbH7rQtONAOTgNW+iobAwB3QcuO7eCkn06LZCVra6ws8lHMgi?=
 =?us-ascii?Q?WTC+BcwOoHzWd2LVCfyMn8y90lUQDX+ZeXUIRHb7PpjhZ5G75xgQNxAO97RW?=
 =?us-ascii?Q?9uXLQRpeSg5XExRgSRjrxS2xr3qsbMcyiod1PV2+hnyifagHrUzXxoE65X/v?=
 =?us-ascii?Q?5xdzM771J9Da9pS7P3V/2Pn4jlZjenT+roYA9tqi5Fx898awrkdWedCZ2iac?=
 =?us-ascii?Q?CnfQlBjaaesnHeykmaZcj3lmS22e0BdWmj4nm25KSUBL3EtYeC1KCJnaxZJX?=
 =?us-ascii?Q?P8aFnbGSEtMuDQ9hGt57/yLz6MN8rRvy7Akl2fTmwwHXw9e/d02xmuIxPbzG?=
 =?us-ascii?Q?4RP5aCaL/m4x0Mc/G+Mr9Yw0QkaFcfpgYmLVWOx5rLBsh2ihNzS1fox0eir5?=
 =?us-ascii?Q?b/H5xpbuf6c60UNHQb5Id3vSkYJB4I1eHv1qAZDkZjt1YmC8m8NStdhBwazE?=
 =?us-ascii?Q?I7CJfl5LN2orqE23v4LJwy9Mgt+1RSxEiNc3fnsNWkteLaj+qkB7ZJt5rP2I?=
 =?us-ascii?Q?u4oOqvDP0w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: PlZdR7NWfXzfroGjxf7LxSBhpTiXUIoN5WP+NbJmuSSNhbeVaWfXbNPnVLNoTPHbLJtyDUBtw/zycAGfkNav6MaVb1DbjdJ8SPG5WuFRiGPmQms/OoKpg7iN5oTyXYlHY0kfG9VwG8+dGCc3llbPu6BykyUB5mYXg9CdVzGqQEFJEtbrC1tsCLc+FV/V8rXoHykszXbFAfwKid3arRpIHZj3RSQ4OxUjGYAJbgKjW/Jp5XmYJ6YFcRliY49SrDbx/KawId/54Z/cRqEfzuYLOzQxOxDvI4gJgChRkbSmHa59XX5qsBQpfiXRrh7vgGD447LDYXnUmmCYf14WkmxrVA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ5PPFC0624F2CA.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b3a0d19-cba2-4e03-f5da-08de9c43b9df
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Apr 2026 05:39:42.8048 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1KBpPes+v4RbGhS3mvV8DmklRJdE0416c8TQOVJxkfZrwiyc5F5HSAhJLad6ODP1aB4Rq+R2SmIdECifV44HMQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6372
X-OriginatorOrg: intel.com
Content-Transfer-Encoding: quoted-printable
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:email];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jia.yao@intel.com,m:stable@vger.kernel.org,m:shuicheng.lin@intel.com,m:matthew.d.roper@intel.com,m:joonas.lahtinen@linux.intel.com,m:rodrigo.vivi@intel.com,m:andi.shyti@linux.intel.com,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER(0.00)[maciej.plewka@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[maciej.plewka@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 676CA417250
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This fix looks good from compute UMD perspective.

-----Original Message-----
From: Yao, Jia <jia.yao@intel.com> =

Sent: Friday, April 17, 2026 7:10 AM
To: intel-gfx@lists.freedesktop.org
Cc: Yao, Jia <jia.yao@intel.com>; stable@vger.kernel.org; Lin, Shuicheng <s=
huicheng.lin@intel.com>; Roper, Matthew D <matthew.d.roper@intel.com>; Joon=
as Lahtinen <joonas.lahtinen@linux.intel.com>; Vivi, Rodrigo <rodrigo.vivi@=
intel.com>; Plewka, Maciej <maciej.plewka@intel.com>; Andi Shyti <andi.shyt=
i@linux.intel.com>
Subject: [PATCH v3] drm/i915/dg2: Add per-context control for Wa_22013059131

Wa_22013059131 sets FORCE_1_SUB_MESSAGE_PER_FRAGMENT in LSC_CHICKEN_BIT_0 a=
t engine init, but this is known to cause GPU hangs in certain workloads.
Add I915_CONTEXT_PARAM_WA_22013059131 so userspace that handles the workaro=
und itself (e.g. by limiting SLM size) can set it to 1 to let the kernel kn=
ow bit 15 programming is not needed for that context.

LSC_CHICKEN_BIT_0 is not context-saved by hardware, so the kernel restores =
the correct value on every context switch via the indirect context batchbuf=
fer to avoid leaking state between contexts. The old unconditional applicat=
ion of Wa22013059131 in intel_workarounds.c is removed.

v3:
- Kernel-internal context will not change workaround settings

Bspec: 54833
Fixes: 645cc0b9d972 ("drm/i915/dg2: Add initial gt/ctx/engine workarounds")
Cc: stable@vger.kernel.org
Cc: Shuicheng Lin <shuicheng.lin@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Maciej Plewka <maciej.plewka@intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>
Signed-off-by: Jia Yao <jia.yao@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c   | 12 +++++
 .../gpu/drm/i915/gem/i915_gem_context_types.h |  1 +  drivers/gpu/drm/i915=
/gt/intel_context_types.h |  1 +
 drivers/gpu/drm/i915/gt/intel_lrc.c           | 44 ++++++++++++++++++-
 drivers/gpu/drm/i915/gt/intel_workarounds.c   | 10 ++---
 include/uapi/drm/i915_drm.h                   | 10 +++++
 6 files changed, 72 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/=
i915/gem/i915_gem_context.c
index 6ac0f23570f3..d24e449f1eb3 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -911,6 +911,15 @@ static int set_proto_ctx_param(struct drm_i915_file_pr=
ivate *fpriv,
 			ret =3D -EINVAL;
 		break;
 =

+	case I915_CONTEXT_PARAM_WA_22013059131:
+		if (args->size)
+			ret =3D -EINVAL;
+		else if (args->value)
+			pc->user_flags |=3D BIT(UCONTEXT_WA_22013059131);
+		else
+			pc->user_flags &=3D ~BIT(UCONTEXT_WA_22013059131);
+		break;
+
 	case I915_CONTEXT_PARAM_RECOVERABLE:
 		if (args->size)
 			ret =3D -EINVAL;
@@ -1003,6 +1012,9 @@ static int intel_context_set_gem(struct intel_context=
 *ce,
 	if (test_bit(UCONTEXT_LOW_LATENCY, &ctx->user_flags))
 		__set_bit(CONTEXT_LOW_LATENCY, &ce->flags);
 =

+	if (test_bit(UCONTEXT_WA_22013059131, &ctx->user_flags))
+		__set_bit(CONTEXT_WA_22013059131, &ce->flags);
+
 	return ret;
 }
 =

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gp=
u/drm/i915/gem/i915_gem_context_types.h
index 0267c924634b..4efc0e758d3b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
@@ -338,6 +338,7 @@ struct i915_gem_context {
 #define UCONTEXT_RECOVERABLE		3
 #define UCONTEXT_PERSISTENCE		4
 #define UCONTEXT_LOW_LATENCY		5
+#define UCONTEXT_WA_22013059131		6
 =

 	/**
 	 * @flags: small set of booleans
diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/dr=
m/i915/gt/intel_context_types.h
index 10070ee4d74c..84011ce7c84d 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -133,6 +133,7 @@ struct intel_context {
 #define CONTEXT_EXITING			13
 #define CONTEXT_LOW_LATENCY		14
 #define CONTEXT_OWN_STATE		15
+#define CONTEXT_WA_22013059131		16
 =

 	struct {
 		u64 timeout_us;
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/=
intel_lrc.c
index 147d22907960..bab4f38515d4 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1348,6 +1348,37 @@ gen12_invalidate_state_cache(u32 *cs)
 	return cs;
 }
 =

+static u32 *
+dg2_g11_emit_wa_22013059131(const struct intel_context *ce, u32 *cs) {
+	/*
+	 * While re-writing LSC_CHICKEN_BIT_0 for Wa_22013059131, the
+	 * other bits of the register will also get overwritten.  The
+	 * hardware default for all other bits is 0, but any workarounds
+	 * that adjust the other bits in the lower dword of the register
+	 * also need to be re-applied here.  At the moment that's just
+	 * Wa_22014226127, which is always set for DG2-G11 platforms.
+	 */
+	u32 val =3D DISABLE_D8_D16_COASLESCE;
+
+	/*
+	 * Wa_22013059131: only set FORCE_1_SUB_MESSAGE_PER_FRAGMENT for
+	 * userspace contexts that have not opted out.  Kernel-internal
+	 * contexts (gem_context =3D=3D NULL) never run shader workloads that
+	 * require this workaround, so skip them unconditionally.
+	 */
+	if (rcu_access_pointer(ce->gem_context) &&
+	    !test_bit(CONTEXT_WA_22013059131, &ce->flags)) {
+		val |=3D FORCE_1_SUB_MESSAGE_PER_FRAGMENT;
+	}
+
+	*cs++ =3D MI_LOAD_REGISTER_IMM(1);
+	*cs++ =3D i915_mmio_reg_offset(LSC_CHICKEN_BIT_0);
+	*cs++ =3D val;
+
+	return cs;
+}
+
 static u32 *
 gen12_emit_indirect_ctx_rcs(const struct intel_context *ce, u32 *cs)  { @@=
 -1371,6 +1402,11 @@ gen12_emit_indirect_ctx_rcs(const struct intel_context=
 *ce, u32 *cs)
 	    IS_DG2(ce->engine->i915))
 		cs =3D dg2_emit_draw_watermark_setting(cs);
 =

+	/* Wa_22013059131:dg2 */
+	if (IS_DG2_G11(ce->engine->i915))
+		cs =3D dg2_g11_emit_wa_22013059131(ce, cs);
+
+
 	return cs;
 }
 =

@@ -1387,7 +1423,13 @@ gen12_emit_indirect_ctx_xcs(const struct intel_conte=
xt *ce, u32 *cs)
 						    PIPE_CONTROL_INSTRUCTION_CACHE_INVALIDATE,
 						    0);
 =

-	return gen12_emit_aux_table_inv(ce->engine, cs);
+	cs =3D gen12_emit_aux_table_inv(ce->engine, cs);
+
+	/* Wa_22013059131:dg2 */
+	if (IS_DG2_G11(ce->engine->i915))
+		cs =3D dg2_g11_emit_wa_22013059131(ce, cs);
+
+	return cs;
 }
 =

 static u32 *xehp_emit_fastcolor_blt_wabb(const struct intel_context *ce, u=
32 *cs) diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/=
gpu/drm/i915/gt/intel_workarounds.c
index 24ea5d8d529c..ef6eea3ab597 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -2840,7 +2840,11 @@ general_render_compute_wa_init(struct intel_engine_c=
s *engine, struct i915_wa_li
 	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
 	    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0) ||
 	    IS_DG2(i915)) {
-		/* Wa_22014226127 */
+		/*
+		 * Wa_22014226127: Note that this workaround also needs to be
+		 * re-applied in intel_lrc.c when LSC_CHICKEN_BIT_0 is
+		 * re-written for Wa_22013059131.
+		 */
 		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0, DISABLE_D8_D16_COASLESCE);
 	}
 =

@@ -2867,10 +2871,6 @@ general_render_compute_wa_init(struct intel_engine_c=
s *engine, struct i915_wa_li
 				     MAXREQS_PER_BANK,
 				     REG_FIELD_PREP(MAXREQS_PER_BANK, 2));
 =

-		/* Wa_22013059131:dg2 */
-		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0,
-				FORCE_1_SUB_MESSAGE_PER_FRAGMENT);
-
 		/*
 		 * Wa_22012654132
 		 *
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h inde=
x 535cb68fdb5c..0f553bb12fb0 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -2172,6 +2172,16 @@ struct drm_i915_gem_context_param {
  * Note that this is a debug API not available on production kernel builds.
  */
 #define I915_CONTEXT_PARAM_CONTEXT_IMAGE	0xf
+
+/*
+ * I915_CONTEXT_PARAM_WA_22013059131:
+ *
+ * Default value 0 means the kernel programs Wa_22013059131 for this conte=
xt.
+ * Set to 1 to inform the kernel that userspace is taking =

+responsibility for
+ * applying the preferred workaround implementation, so the kernel =

+programming
+ * of LSC_CHICKEN_BIT_0 bit 15 is not needed for this context. DG2-G11 onl=
y.
+ */
+#define I915_CONTEXT_PARAM_WA_22013059131	0x10
 /* Must be kept compact -- no holes and well documented */
 =

 	/** @value: Context parameter value to be set or queried */
--
2.43.0

---------------------------------------------------------------------
Intel Technology Poland sp. z o.o.
ul. Slowackiego 173 | 80-298 Gdansk | Sad Rejonowy Gdansk Polnoc | VII Wydz=
ial Gospodarczy Krajowego Rejestru Sadowego - KRS 101882 | NIP 957-07-52-31=
6 | Kapital zakladowy 200.000 PLN.
Spolka oswiadcza, ze posiada status duzego przedsiebiorcy w rozumieniu usta=
wy z dnia 8 marca 2013 r. o przeciwdzialaniu nadmiernym opoznieniom w trans=
akcjach handlowych.

Ta wiadomosc wraz z zalacznikami jest przeznaczona dla okreslonego adresata=
 i moze zawierac informacje poufne. W razie przypadkowego otrzymania tej wi=
adomosci, prosimy o powiadomienie nadawcy oraz trwale jej usuniecie; jakiek=
olwiek przegladanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the s=
ole use of the intended recipient(s). If you are not the intended recipient=
, please contact the sender and delete all copies; any review or distributi=
on by others is strictly prohibited.

