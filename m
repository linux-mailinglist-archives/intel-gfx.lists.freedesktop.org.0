Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sGk7FEZ4nGlfIAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Feb 2026 16:54:46 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCA20179258
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Feb 2026 16:54:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4616C10E3CB;
	Mon, 23 Feb 2026 15:54:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H5wRew9y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EF7610E3CB;
 Mon, 23 Feb 2026 15:54:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771862082; x=1803398082;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=i2EH/JsJc/r+P8KU4IfRF5ljnedBKGSrVXiivlhzapo=;
 b=H5wRew9yzG4w56bP+xFVOPF+np0cBJH7JA9e1eIjPeZ76s+oopIAd5CR
 sKq16QkHUMMennxMk/zG7k9u74siTkDq2OophPLvKZkA6IJ2rKwdM9YK0
 McFGhFEROSrxSnGR45jbimyWAVuGb6ekZT64y/iemVQTkyRjUPgpzycc2
 pypp0mo6GK/6mPVdG2ipFJ1ubYqUAO2vrjUYE7rN0GQrYiwoYn7HnmQn5
 ARjlt/S9dJib+X2VJZ3KvMxSSZlmGYQew7KwjW/78/LBj7ufV5fXHMKxi
 hlRCGqyzGH4ECn1jbitvFnSlsKgsFV0IX98AOzBs/KlO1/WzKnUT20hpl w==;
X-CSE-ConnectionGUID: dt5amKTeTkG6K1ZvBUKiNg==
X-CSE-MsgGUID: HmNx4j+jRtq/MrwszPC4IA==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="76724028"
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="76724028"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 07:54:41 -0800
X-CSE-ConnectionGUID: jb9o02weRwa56r2FSr8mFg==
X-CSE-MsgGUID: 4nS91aNFSq+40xU/ewapbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="220600218"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 07:54:41 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 07:54:40 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 23 Feb 2026 07:54:40 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.0) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 07:54:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fyknyHTPcb6GGWN1P+WCFchCIoqromtg+6jSZfdQMUBJNdi50GTL3kx2TB9iOEzNFqn/mAuG+FCbenM1rmZWv2TB6pbg5OCEdCAXhadz/3u/KfuaU/JSWgTr1P8Fp7DUKAHQ20sPZ64tmzveVraw2titT22Zr5hY++G0Vy+spCntDCvFwIMOOxdAnhyIwtMUGcuRIlYjREMnLW+bTkPdcdD6WNWR8DV/0ZFG7ILSv0D68SuUxJBLpU9NP/QRszYtf8ZBGD6U44r+3oi9oBTKn4p91VYSXcKwUUAig0o3HfzfRahPKZxNEqjz3sp9m/EOYTY/vGAVOYZGpI0DhNygmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=++AxfTCFE6TiHcr6HhlRsik9lPshyn2gVDd8EHQs9HU=;
 b=Y0ddxKsrPrVmODyDPpUR+vksW0GfO7/dIiOu2VeNXpLUnUB/fUpIvw62i/ZqnXMH/z3roJzf7ny9pjPU8jyc5MsV3MqGATS9Nt6RX2R1N1dwcPohBVTol/G3JzdCKz0xVBZFyDQhe6SXwj3jEFagmfG6GLuZ1Lu/5F7B5cFBTPJlCVaoKDhZ2arBoWAsPwKERMdedqBepVkPTLa8EqXDoetLRSzPyc6TlBszULJj/ZSeb7XqY5kCDB5qvsV7o+B9He3A/PY+IRemLn77wcStJ5jm09vg/vDYAGz+g4FSRoAuBxJT+EP39BZFhFbuT1zFuwTPjQ8LGNNhpLIQUUVvVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by SN7PR11MB6726.namprd11.prod.outlook.com (2603:10b6:806:266::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Mon, 23 Feb
 2026 15:54:38 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7%6]) with mapi id 15.20.9632.017; Mon, 23 Feb 2026
 15:54:38 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 1/5] drm/i915/dp_tunnel: Don't update tunnel state during
 system resume
Thread-Topic: [PATCH 1/5] drm/i915/dp_tunnel: Don't update tunnel state during
 system resume
Thread-Index: AQHcoc20G+AyU4L1ekCQ655TNZ8AlbWQRUbQ
Date: Mon, 23 Feb 2026 15:54:38 +0000
Message-ID: <IA0PR11MB730721016164B7CE2163585ABA77A@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20260219182823.926702-1-imre.deak@intel.com>
 <20260219182823.926702-2-imre.deak@intel.com>
In-Reply-To: <20260219182823.926702-2-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|SN7PR11MB6726:EE_
x-ms-office365-filtering-correlation-id: 15bf5018-229c-4675-5583-08de72f3d94b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|10070799003|376014|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?GKwjcVICS2Ap9ufH1YI/Rp+6zGABPqGN1ImYek8BPLGg3ITh/6DkiFhrJjRp?=
 =?us-ascii?Q?/eJqb8GeKgyjGIocfsJZoN2gXqDWq7pvZpJ1Ea4zxWYwWhGQbmjGD5qJWkIo?=
 =?us-ascii?Q?YG7PblBQK+3XimamfRo1aGqTDngFeHBnPi5YsPForGzHNYK7UXKN2U72670C?=
 =?us-ascii?Q?cmCgAIj7CZN0+4Km72eLyrIrba8d9XDiz1DU9NSuQt2BwPNvxFvKiS00uEud?=
 =?us-ascii?Q?JtXCJZwraN3GcjzurqFwUx2MzuTNIVSXGQoDAEwlcBX9xOy12fyfF11Gyykj?=
 =?us-ascii?Q?e7v4iBUsc8Z4hpssCMwiNXG7iX24tvyPXE448mPKx1F/PSGQpi0Z1IIiqaZh?=
 =?us-ascii?Q?GIrRMI1icP11LtWWPfWNaBIzulzrFirt4K6+vjCZNCN/e09E4Rxyig9uHjps?=
 =?us-ascii?Q?9pNgvFhznl2Q+FlNBYqSJ3nAkXGiLqvFS9CSc+qDIZ4mJrI+pKftZoHuvFTN?=
 =?us-ascii?Q?E60wSKz4ggzZxSXXghsZ2jsSyv1okwc0rF+g8uN/o4bkkduQRqH3fwKVQHdc?=
 =?us-ascii?Q?iE9H1Nu5jzfiI4H439fc9UZsUgTpb0yZarzmXgbqZcLcF3G86xu00VSCi9BQ?=
 =?us-ascii?Q?ZzL3CT0NjZWX+EYTp7BFhUMZHuC7eWOxhzjBES7H+59Nqxmft2be0m8EEd3v?=
 =?us-ascii?Q?XU+t41XnQ1Nd73gxitlihEP4dPyju2Y94v51StUq/i8e7jXxJH4cQO/qBVRi?=
 =?us-ascii?Q?MyPQ1ip6MHXUQ2k8//e//NgpdzG//CNGjK3+Dv0gpHkQI0+NvQ3vKSvKXoYG?=
 =?us-ascii?Q?pMjJLFpMtAFS5FhS3LHt51HJcYMjn+A6dKtmYFqRS1zUr5+/KDzx/4HuC2i6?=
 =?us-ascii?Q?glDUzFzjacUcgLeZuUBKXh2r9xKbzdbpjddZ8B/8UNjETrFz67/D2k9UyXy9?=
 =?us-ascii?Q?eDGWqGfCObtTTEkeRAJhKic6eSOyIZrPRF09FoI4VGl9ko8SDzaKz4Q87lG5?=
 =?us-ascii?Q?FLR9yMDcOkz6jU4h4NxSlvL6UC9LLemn/adg021chvjGsuGQO++4/JCaO3hr?=
 =?us-ascii?Q?t9YCehPV8A3S2QE2Hxu/1YUth2qTh3xHbcwQWwmL6xCh+pv5m/XVvFp5tmtC?=
 =?us-ascii?Q?kTco64weExE9wigNd6mtrGBrL5LeG55CQMn8WbpGltCWYboQzwS7bYkBYLrg?=
 =?us-ascii?Q?ZUQv19q6EoBkLZIorBpJYxYA+oAgMsuPkFNF0AU6dciD0alP57dvY5ppjHFJ?=
 =?us-ascii?Q?r/RTT25C4VWeoi3KiiUem5htKB12G4BdI/dnhJDvGnDH25rfVe8QRmJ1HCdH?=
 =?us-ascii?Q?7BP4bKmsVbvmU9hDSpoiM7gFVTfHYOdM2H50bYMhG65LkrAGbt1E2WDa3S1F?=
 =?us-ascii?Q?oZOX59zK9iOnHCBYYr/BQodTSqBKsGOgwTNIZKTOVrHg1HSL4P9o2V+EqCOW?=
 =?us-ascii?Q?kTskv8l87oBiBJAuwznnlswvlRAACGnnk7Tk7+ZRZpcHfBWu7709BwSs3Zm6?=
 =?us-ascii?Q?VNmkl310oyEJ5/54Y1tUOMyKYtHBjkpYY54m4PoWaiaud4QMh2WAl/xoXFMC?=
 =?us-ascii?Q?Au4ObNR/eGO5eM5WdrV4EJFhraNeNra2WbKZKOLTss0I4VVrvrLh3LCtIfok?=
 =?us-ascii?Q?ydB+r2YtHllITn0guJAwr93i4Lhq+VxStc7yOo2FkaH/lf2DHpdgeQrp0Dgh?=
 =?us-ascii?Q?rh+F3JHnSV1gJelqzS50RKI=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(10070799003)(376014)(7053199007)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ZBKYChb272C0kcFfu24i3/4FFwLxoUxD1SEUuKXQQb4VChI7zzmhWwIM2Cne?=
 =?us-ascii?Q?7SGu76iDhtidksFUgAcyP6o2zKrlpyuvGfAP5q6x/ghlS6Vig3eBf1MEISpX?=
 =?us-ascii?Q?OHPPKs5KGHD6uihSks9nbfWyk9keO0nQioIKn8+XDuiRr7FoNrUnpNcvX40Z?=
 =?us-ascii?Q?by52DTIPq1TuAxBPko3SLHkB1jS/6UDCwzrfNMzKYHehw+jBexLNP9yO6as1?=
 =?us-ascii?Q?JLeXYMoupemLQ4+JUDLS3mLwZfJNQe7yHKQ6S4Gsk0hXWgpzxPOGDdNxNmIj?=
 =?us-ascii?Q?y4j7o38EPtpIHWt7ybL3xrcwZLcaKFWy8lJiENS8zsNk/DnbzmvD7sG0tXNc?=
 =?us-ascii?Q?IeJGN8R6rdqALJDpDOaDOUpI924qL4pHoJ7MshGDrFbsqWpcJPtENVAtXcGa?=
 =?us-ascii?Q?kFrgBskSETp30By3ThQLq4b0PRdjHY1KIXAsMR+d7gciF++BIOFaJg+i4ECI?=
 =?us-ascii?Q?2Biik8VpdvSqNzS7udNanuPkICUuT138/FF6D82t4t0r44dreGX9ovBO8ZiD?=
 =?us-ascii?Q?NHH+px5eP2XcFpQEaQ1ksz4PnusR1IqFPsxEOZ2k6ymXJ4/oLdROdArPiq5U?=
 =?us-ascii?Q?+sV8GUTuz7QtDOZ3jXJS/5qOzCkgsiAqBboee9uQlOS+ehkp38BC6jmPsKyU?=
 =?us-ascii?Q?Dp8r+MlVo2r8SgJ39TiOfeFtsylmJp22sqaEjO0xGMNztBzmAY9JiBRr3Ojc?=
 =?us-ascii?Q?CVPitQpWMrWrzduArkK8mQ2q+llVX1SXC8wUjV1bDEWgYUndvDeKV2U912JO?=
 =?us-ascii?Q?jJCFF2vykWCPcZXC/TdmcnE44CsP406RweH/YK3V98srgyiRyFINWte2BT95?=
 =?us-ascii?Q?Ju5Ad11qh9l6HB4PnzA+h9zX92g1RH0MOJvWsyU+q8sPuV4ilp4Psi0xFEfU?=
 =?us-ascii?Q?xomF3sgbmQFRC9e0jNxCkSjIvekYXtICG3Gd7hZ5/J++y1ynbgUItn1pstQi?=
 =?us-ascii?Q?QwRE/3ILTz3foEYUMrDeyt5OkQvoQ0rTFoqdjqASMKv0k0hGJ8+2ijl3vxM3?=
 =?us-ascii?Q?S6c30Uhps57Mfx3JMOlk/IU2tU3iEsmlvzgQKxL3rbw/Et8uMWMKOGNCtDM1?=
 =?us-ascii?Q?EkxTCDZEHsV/WffJ5hXRmqlIOVBr6jaVHgGuitrtL5Njp075MlsGi1v1+wbB?=
 =?us-ascii?Q?ka0/Q2tSkrIEMCCs/zpK6punxAOTowduIqtSZf0w80kaiJYvnUZeZDVdEe7r?=
 =?us-ascii?Q?1lQ+OBodDH3vFWUZ/7JX2AigEfrUaYUWL6XDpuMM8RjZK1yopS24t24z2ux3?=
 =?us-ascii?Q?lo+DUbALriXOgm+v7yuKajYb/VM5S3tUfs3oVcZ48S/do22aYhrNKLFK31Jk?=
 =?us-ascii?Q?EL89rrenkbr8pnX5G4CA7O28RDLpZPREDi4O6OPdRvOOzyA65qjtnnq78/SP?=
 =?us-ascii?Q?CXMMzjWTC1a53M4UTa3i0CN1lX3WR5a/scksPwVglS4iI1HV4L6oJE8vuM7T?=
 =?us-ascii?Q?68NkUA6VZr0YNhpYWqUaphXCCbUS8G7ou9XFd8yPCDJ0FYb+fuHnFEoKZOA8?=
 =?us-ascii?Q?4DGfSxX/JZlBAR8zK02GQ2FSCG1CCRzjmGBRLgKfCkuso02ttpDb6KmmUi5z?=
 =?us-ascii?Q?u6QDz+/JGJlvPmXDF/HI1Rfv1e5pIc5JBCj6jg50ujixasgdDYOag4Jjz+aY?=
 =?us-ascii?Q?V62ns41u9mG7MaFr3rxn0ntypSpsac8mTiY8w8eiZ02xOLP/7rHBYuK6zz3n?=
 =?us-ascii?Q?+bdmdyL0CDEEkuYLKLLp/4dYYeGFiroJJbLz8nOGsWyL7XbsPKL8T05oHjH+?=
 =?us-ascii?Q?Vc2FTxCRiT/2h7XnBNOXqU5rVCPLI2OrTsYTVRO+V/Tvp1WWIFdCVO9AG0o/?=
x-ms-exchange-antispam-messagedata-1: 1leCtXe2kTeZ/w==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 15bf5018-229c-4675-5583-08de72f3d94b
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Feb 2026 15:54:38.0993 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WrPaD6+zuczEsWE1xVPwdCYw1zT9iGeeHD1+pfTnUxnk6nPhiC/BFjszyf7l7RlGv1Maqf+JtW4DuQqmYSs1VQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6726
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FROM_NEQ_ENVFROM(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: BCA20179258
X-Rspamd-Action: no action


> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Im=
re
> Deak
> Sent: Thursday, February 19, 2026 11:58 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Subject: [PATCH 1/5] drm/i915/dp_tunnel: Don't update tunnel state during
> system resume
>=20
> During system resume, restoring the pre-suspend display state must not fa=
il.
> This requires preserving the sink capabilities from before suspend, inclu=
ding the
> available link bandwidth.
>=20
I don't see the sink capabilities being stored in this patch.

> If these capabilities are not preserved, the restore modeset may fail, ei=
ther due
> to a missing sink capability or insufficient link bandwidth for the resto=
red mode.
Don't see this in the patch.

>=20
> When the sink is connected through a DP tunnel, prevent such capability
> changes by skipping tunnel state updates during resume. This also avoids
> updating the sink state via the tunnel while it is being resumed.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_tunnel.c | 11 ++++++-----
>  1 file changed, 6 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> index faa2b7a46699d..eb1eed1c8c7bb 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> @@ -150,11 +150,9 @@ static int allocate_initial_tunnel_bw_for_pipes(stru=
ct
> intel_dp *intel_dp, u8 pi
>  			    drm_dp_tunnel_name(intel_dp->tunnel),
>  			    encoder->base.base.id, encoder->base.name,
>  			    ERR_PTR(err));
> -
> -		return err;
>  	}
>=20
> -	return update_tunnel_state(intel_dp);
> +	return err;
>  }
>=20
>  static int allocate_initial_tunnel_bw(struct intel_dp *intel_dp, @@ -200=
,10
> +198,13 @@ static int detect_new_tunnel(struct intel_dp *intel_dp, struct
> drm_modeset_acqui
>  	}
>=20
>  	ret =3D allocate_initial_tunnel_bw(intel_dp, ctx);
> -	if (ret < 0)
> +	if (ret < 0) {
>  		intel_dp_tunnel_destroy(intel_dp);
>=20
> -	return ret;
> +		return ret;
> +	}
> +
> +	return update_tunnel_state(intel_dp);
>  }
>=20
>  /**
> --
> 2.49.1

Thanks and Regards,
Arun R Murthy
--------------------
