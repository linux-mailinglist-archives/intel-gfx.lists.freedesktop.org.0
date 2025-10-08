Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73C9FBC620C
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Oct 2025 19:14:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8182710E1DD;
	Wed,  8 Oct 2025 17:14:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eQFZGsv2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E27B310E1DD
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Oct 2025 17:14:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759943661; x=1791479661;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lqDeRlM4fUvebVHs49SOzerxzytxRsm71qWpxzLr74s=;
 b=eQFZGsv2rZrT3lQhAsf4tznDkHUVV8ZrBydA+bZuZ9IE6nIXULtygT2J
 kzEdEPrJJjIowp7EkrwnTPTbekF5tPvdqTqpGmocj54t/N2v0IhG20Zp0
 PtwbJgZNQA+QMh2AKO9rzCuWoc+aD7rER3vF8dOF3whS7adR9LSYIlhNj
 SuSlw8BCQL3U+wB/+N6W0lQim6La051graBSvDutn+ryklyZll1PO7IS9
 u7KaENFAWMfL81gKlMM8/ZBkLWa6f6d7oSSmnL7QCAqmZtX7ZZ4s53HyE
 +fb15EiM95WRPl6HnQQH1OFKm4yNBg8PbpRtronFVPWUBhODL5hfhupnB A==;
X-CSE-ConnectionGUID: Rs8iqxYTTtaEog5WtgOyKA==
X-CSE-MsgGUID: T3sZYp78Q1285pUYMkOAgA==
X-IronPort-AV: E=McAfee;i="6800,10657,11576"; a="79582536"
X-IronPort-AV: E=Sophos;i="6.19,213,1754982000"; d="scan'208";a="79582536"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 10:14:20 -0700
X-CSE-ConnectionGUID: QUN1MkboQASWChQt7Oa8fw==
X-CSE-MsgGUID: KUU39AOLT7CDUP0HcJddwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,213,1754982000"; d="scan'208";a="180906848"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 10:14:20 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 8 Oct 2025 10:14:19 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 8 Oct 2025 10:14:19 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.14) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 8 Oct 2025 10:14:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tUIAKcci1THM7nx5+70AruCmcqsWx+kqY7j2fhF6Cb6ZRDNaD1ih1zSbqg6TnXB0oyP5v1DgOBYbc5dIVcXOCpr8W3du1rkUMlr/qkAJo6BZhNLpd4ubgcfWnHxesUx1iVxP7VtQV/TJnWmrZZRIWRUx2UiVz75jkMzNgQuMPnGb7nD3UoLZgF4NRz5wtzv/bnFeEqA035A2rkXnltDI+BqwH9ckKNxmRVzE+yt6dy9wybUs+n4JcLW+IjpNDzd1PgD9rWUO4B9kjQAHK26jQEXOIWJjnlyG71qC0YvYtJmlsr4qW480exxMTjGKmt8q6fdeK+4SgUFuaVixHRbY3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s8IVzO7QPTUtqmVxSUJ8wm8Zn4hzOKb3MkNgeaikMpQ=;
 b=QH1nx3u1Zd+d7GMHs5vatnYqJmT2fGFZrLNS3NVonu1LXpvroYZrvyjcrd+PW9kN73/hdM2FqweXE80yVM2g/HC50J9vsbtHmctjwOOv+yTPk147FgtVQwpvTpr/rCKG3blVKlcSQ4VhGeScdVXPFkgEte4N8VCmqSzUpAGc3pNHGvOkIdVBJSM0WAmqbf4fJDN9Z0l8P271XP2H+tPNTXhBt2qWKetRsqx7vQOMOsUarlLOBaqI9EMPLLFkfGXBvjN18BBisxdpRCHDXud9iOi4dTtwYWaJtbgRxqft6wxj3REWAdmVHvYrpHMl0QD85UI8bDYVRKB635oWnCRZHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB8040.namprd11.prod.outlook.com (2603:10b6:510:238::11)
 by DM6PR11MB4514.namprd11.prod.outlook.com (2603:10b6:5:2a3::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9182.20; Wed, 8 Oct
 2025 17:14:14 +0000
Received: from PH8PR11MB8040.namprd11.prod.outlook.com
 ([fe80::701c:c42c:4440:5420]) by PH8PR11MB8040.namprd11.prod.outlook.com
 ([fe80::701c:c42c:4440:5420%6]) with mapi id 15.20.9203.007; Wed, 8 Oct 2025
 17:14:13 +0000
From: "Yao, Jia" <jia.yao@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 Pingfan Liu <piliu@redhat.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Zuo, 
 Alex" <alex.zuo@intel.com>, "Lin, Shuicheng" <shuicheng.lin@intel.com>,
 Askar
 Safin <safinaskar@gmail.com>, Chris Wilson <chris.p.wilson@linux.intel.com>
Subject: RE: [PATCH v2] drm/i915: Setting/clearing the memory access bit when
 en/disabling i915
Thread-Topic: [PATCH v2] drm/i915: Setting/clearing the memory access bit when
 en/disabling i915
Thread-Index: AQHcN8iMlqXLmHFdTUuiKqVlWShhm7S3Mh8AgAAA+GCAAPmMgIAAOJrggAAIv4CAAAl8UA==
Date: Wed, 8 Oct 2025 17:14:13 +0000
Message-ID: <PH8PR11MB8040EA42E5CCC032B7C76737F4E1A@PH8PR11MB8040.namprd11.prod.outlook.com>
References: <20251007180634.912006-1-jia.yao@intel.com>
 <20251007202514.1661491-1-jia.yao@intel.com> <aOWFMICISzSZ_3nH@intel.com>
 <PH8PR11MB8040A2CB337190DC80B80BB3F4E0A@PH8PR11MB8040.namprd11.prod.outlook.com>
 <aOZXVYNnUvxnrr-6@intel.com>
 <PH8PR11MB80407C75DF808C33C70B1FBDF4E1A@PH8PR11MB8040.namprd11.prod.outlook.com>
 <aOaOJ1YI-NgTloIy@intel.com>
In-Reply-To: <aOaOJ1YI-NgTloIy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: ville.syrjala@linux.intel.com,piliu@redhat.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB8040:EE_|DM6PR11MB4514:EE_
x-ms-office365-filtering-correlation-id: f23020f1-d984-41c3-4453-08de068e1acc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|42112799006|13003099007|38070700021; 
x-microsoft-antispam-message-info: =?iso-8859-1?Q?mA7RPDL43sFZ487DgnRTkdNpFgfmhl2bTpaKOw/G2vJPYtQCvc2hyq9fwg?=
 =?iso-8859-1?Q?zljI7I78MXBs+aCXMqjR9qq0823e0JUFP0MM1lK+YwSJxtfGWKy6jUeGgc?=
 =?iso-8859-1?Q?gO74+2J2fyDj+4CbUU3eODuVBFf4O0kkZKpJBSzPE62rG/Jc5J3NICMbO9?=
 =?iso-8859-1?Q?jLWACiLAQcfnxF4T2Xh1JpzY8cT4dSPR6RsRRXTCAMQ+R1vBFwWVmy0pjg?=
 =?iso-8859-1?Q?cHcQn/cPk2vdmA8KQ3WqV6DIgEJxOyrtnRKxAwWuSTQ0Q4r229M2iVIy5p?=
 =?iso-8859-1?Q?PJg6L9zqwu61ARYyMMl5DGHt/gnJ+MTCiCV+g1TbXzrpi9e7LBiTRnhYHo?=
 =?iso-8859-1?Q?UZdK2ktn8SRfkz64N+aKMoIWoX4JiK1Q8gKOosxQy+dBhBML0LWWECGWlW?=
 =?iso-8859-1?Q?ZIRJEQ+yn1297S0WrovVeCwcysIOIj25cjefdillcYLnAjysCAMGpfgtXY?=
 =?iso-8859-1?Q?jDYIa9aqGtDb79f7MAUSGWoVOSljUXaV+FDXcpsoNYnJbUdrPdjTc0wEIn?=
 =?iso-8859-1?Q?yGYxgQG/EdWA8vFzQrSVO/Jgf3mk4ohkudKJP+sBdOo/uhl8lVg7xFI2jS?=
 =?iso-8859-1?Q?f27xTVBNS6hPjHKkes8nXckKjSe4wr6v3BWdI9f4iiFtcSmnprGZFZmI6+?=
 =?iso-8859-1?Q?dwV9Ut6QKNRjznsmjvNo8+bwry76UsFw9zL34mzaqwa1JOwT2ignUWfdHL?=
 =?iso-8859-1?Q?O84axJBcocjbHsEhafdS0Hj0/LJxwCPx8xKdLwVIEYanHjiw5SACsPaQjD?=
 =?iso-8859-1?Q?Ure5PYA9SvOAGVDKE0Uatvxxv81kJQf4yDpY/1dzRgzNWDqI//VD1BBGGS?=
 =?iso-8859-1?Q?1/6TAJuC1aRvlFKKytb6wRf7AO4bFajipnmMUKOWY95plg2Q901qaEr/7+?=
 =?iso-8859-1?Q?A+e8Qi0je8LLqJEWiycY4HCdDjypw1AQEBe3Vpv8jQAg8gM5Attrlnh18e?=
 =?iso-8859-1?Q?prFFTAqu811HVj5jFuUBQvpBRZ63H/JAK5ak9FEzMroXQnip5pPJzoxs51?=
 =?iso-8859-1?Q?63BYk+i3ysEpqoTFq1uFx7MIiaMYDrscE74LgQnXQQn2Ryqsy9CkkZTD8l?=
 =?iso-8859-1?Q?HINv3tMl+PlHgaFeyAe7SDtIY9DOtKX+2Xj6sL36pwaq3MQYmnrhaLTwSL?=
 =?iso-8859-1?Q?vIJNDTa67PJytzdxgDBTHNZO3nfetI0x3sXUbXVgcEF9+MuIMiKhfVEYm/?=
 =?iso-8859-1?Q?P5g4cTW2WPEAaZlBQH/7Uh2Y+lLmudZiZC4TiXRe6TjSi3QLy2kWSIRbyy?=
 =?iso-8859-1?Q?7n1KPw71HabMhBoyhZpY7oZzuShT8ps0+SvZUVbwCJqikitswzvJLJaMPt?=
 =?iso-8859-1?Q?5UvCeEXFRxKMV3miFnyFbqcdXXT0Q7kA+jMWriI4SSfJb1wq3/8R4O91Wg?=
 =?iso-8859-1?Q?Y0hfRKAiYGVaL95cv1UUTnHDGOMZERpUgWMPRgqecey2W0lFKSBwXYlzk2?=
 =?iso-8859-1?Q?BzqLmtnYRoEsY1Qbha5BPPnHRs5UEi3FpVK49p4THBogmsyl3dqKY2cAd5?=
 =?iso-8859-1?Q?ANF0CRqdfv0spig5qV6KKGF3HF+ZVf0MmIbv6G2BCBbQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8040.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(42112799006)(13003099007)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?xZdA7mGuwtbAw2/w89eXAgs7XQpGJkona1dPhnyDCYCeFjRuOv/w4Be8EJ?=
 =?iso-8859-1?Q?jm35+LftM+DkkxvWOgswNEz5wWOTbD1uamgBeej3nhh+4CDk6bs0Rh6vjP?=
 =?iso-8859-1?Q?E672rj2oTHUSFqKAszvqGJ4Ybh6/kvGxU5PJTXjKmqr2VOLGmEitlk9l6C?=
 =?iso-8859-1?Q?bEdYmLNTYhC+IHDVLQ1dhShCVnXvtUu9MglN7s024NygJrevNAyTUcflCd?=
 =?iso-8859-1?Q?eWAim/ownNRHJXvv6ux0S9+ikT+oeQEVrEHzsEfNBo3mNzo0C75v/libK5?=
 =?iso-8859-1?Q?Tkc61gxo4U+HGCqM/NUHVF3p0mvhRxVGuFsnIS7lVJrlONSWq7HPtOcBSo?=
 =?iso-8859-1?Q?5yRCe9i4cQ+0U6yO568NTB3UX5VeXZWsIfbXN33PrKZZW6WBWUabIppuO1?=
 =?iso-8859-1?Q?TGk8g8PN+6+yNPCCmfMMITfCBQd64I1JGINU5SJ0QVwrt5zKJzvjceoerU?=
 =?iso-8859-1?Q?WfB3gX5j0hqoS9qsJ8lUOLwQ9MbPPJ6nCh9pF3e/G5GwDYx4+F4K76oKyc?=
 =?iso-8859-1?Q?dy29kH2SWKiYvicfl1hSJaQbTjm2rh9ASBN5VWnng6XFyeWXqq1v31eQ03?=
 =?iso-8859-1?Q?7rkCkqliCbZHuaWNWGE2BIG61cDb09NCLARjyxgT+pDBO+r7XSPBVPdxwO?=
 =?iso-8859-1?Q?D7JPgZke1edPMngFyqWP6Kg+RAa1F/bX0WGrvf11re80fV/6FnNGM2ML92?=
 =?iso-8859-1?Q?OzZufjanqzgnWZ2D6chtLHMbT9dzubi9/AhU31D/KyIWaEg2Z4PnDd4zU1?=
 =?iso-8859-1?Q?VlzAIRUt6MU3wme9XqcqqU0wXCYrVtmKYoNe996Tgc42vpz5R9qvtYgMbF?=
 =?iso-8859-1?Q?vH7tnu4YowuaMMPct30MObFDPEVFcHB0y3Gt+Y5juOdrocPe1wagqwVbXX?=
 =?iso-8859-1?Q?eiY0DUUeAP1ttpKoYMC5VbcXBMRrWii2gLQapwVf+wHorQK1yL/zb3gO/s?=
 =?iso-8859-1?Q?1NZx+8EZK9S0v17LZTPHWi1+CytBH+//UrCjhDeNFgJImjlRpfoC5vPQIs?=
 =?iso-8859-1?Q?Kqyoeb/0yG+WbF7vLmFhoJqwmHuX6gwzvkl2whAijQ1ofjUSaH/5NIzo/q?=
 =?iso-8859-1?Q?gUeovBXCRELqWU26p3XMn32DjLuzV84I1D1nfy8BtrtFu+wXjaK9mlOvMw?=
 =?iso-8859-1?Q?XDN94urP3ThMXpzOTyXoK9mQu5azsNfYwRpM7uuS155pQUAWmgxF9Ta4Th?=
 =?iso-8859-1?Q?Sq6zlZei8q6N63/iqCT4lmaaGUSXHcsZyCdf6XJeVz7l/LHITYrqKOM6wD?=
 =?iso-8859-1?Q?Xq4K4zs39YKifFJKPOPitSj/fwaalNUmq/MdzKy0HFYTM93NaTPDnscnUM?=
 =?iso-8859-1?Q?I1ILSDecWYSIFH91eBDnzHHH8XrClePYErJNN2DlV1wgNbdm0IqtLshC2+?=
 =?iso-8859-1?Q?ra7QuBBrvmnXWqbwHisZiD8Bohl0rJtHmA3XdJkGt/zNcMcEJBH6vnRUPP?=
 =?iso-8859-1?Q?SdRbOUkaiI1c+Cis1PxqFmq5queNXPxytvNoPO37tsCA3LdmcNbmHpb8Ql?=
 =?iso-8859-1?Q?Di/+xCwdN4jl2nT0lI0tkOpOsyILZu/HxJtrwHpLgL6V/VOzzPCmwPXD4s?=
 =?iso-8859-1?Q?0iQkPfaMA3XeICAZXLCAvJhQtcl6sYlLO6xx8GPm/xKkcUj75Pda56FkYT?=
 =?iso-8859-1?Q?2HD4L2qijvRek=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8040.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f23020f1-d984-41c3-4453-08de068e1acc
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Oct 2025 17:14:13.7486 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gadbLcpjaD/xt6+Q1pBvRJhN/kPF8l7lFuHK8oMd1fmliwwVNDy8Z/sm3IThnyD0rbmPJzTxWwlHYW7z50xQ0A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4514
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

Good questions.   @Pingfan Liu  @Ville Syrj=E4l=E4

Driver-wise,  no other access except for pxp stuff,  for that after disabli=
ng PCI_COMMAND_MEMORY,  any access will cause MMIO failure,  they will not =
be able to be hidden.
And the invalid access is not from pxp,  otherwise just doing   intel_pxp_f=
ini   in i915_driver_shutdown will fix the issue, it might come from firmwa=
re or other that i915 driver can't see. =20

Current solution is defensive,  not harmful just like turning on write prot=
ection on a floppy disk when not using it.

Thanks,
Jia

-----Original Message-----
From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>=20
Sent: Wednesday, October 8, 2025 9:16 AM
To: Yao, Jia <jia.yao@intel.com>
Cc: intel-gfx@lists.freedesktop.org; Zuo, Alex <alex.zuo@intel.com>; Lin, S=
huicheng <shuicheng.lin@intel.com>; Askar Safin <safinaskar@gmail.com>; Pin=
gfan Liu <piliu@redhat.com>; Chris Wilson <chris.p.wilson@linux.intel.com>
Subject: Re: [PATCH v2] drm/i915: Setting/clearing the memory access bit wh=
en en/disabling i915

On Wed, Oct 08, 2025 at 04:06:39PM +0000, Yao, Jia wrote:
> The actual bug is showing in https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/14598
> if CONFIG_INTEL_IOMMU_DEFAULT_ON=3Dy  ,  that IOMMU prevent the invalid a=
ccess,  but if  CONFIG_INTEL_IOMMU_DEFAULT_ON=3Dn,   the invalid access wil=
l directly cause system crash after kexec reboot.

I was asking you whether that invalid access was caused by that pxp stuff o=
r not?

If yes, then just fix it.

If not, then I guess someone needs to keep on debugging.

>=20
> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Wednesday, October 8, 2025 5:22 AM
> To: Yao, Jia <jia.yao@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Zuo, Alex <alex.zuo@intel.com>;=20
> Lin, Shuicheng <shuicheng.lin@intel.com>; Askar Safin=20
> <safinaskar@gmail.com>; Pingfan Liu <piliu@redhat.com>; Chris Wilson=20
> <chris.p.wilson@linux.intel.com>
> Subject: Re: [PATCH v2] drm/i915: Setting/clearing the memory access=20
> bit when en/disabling i915
>=20
> On Tue, Oct 07, 2025 at 09:40:45PM +0000, Yao, Jia wrote:
> > You mean  intel_pxp_fini(i915)  ?
> > This is because mei_me_shutdown  is called after=20
> > i915_driver_shutdown in pci_device_shutdown sequence.  If we don't=20
> > close pxp in advance, it will cause
> >=20
> > [  295.584775] i915 0000:00:02.0: [drm] *ERROR* gt: MMIO unreliable (fo=
rcewake register returns 0xFFFFFFFF)!
>=20
> So that is the actual bug you're trying to fix? Please just submit the px=
p fix on its own.
>=20
> >=20
> > Since we disabled PCI_COMMAND_MEMORY in  i915_driver_shutdown
> >=20
> > Thanks,
> > Jia
> >=20
> > -----Original Message-----
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Sent: Tuesday, October 7, 2025 2:25 PM
> > To: Yao, Jia <jia.yao@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org; Zuo, Alex <alex.zuo@intel.com>;=20
> > Lin, Shuicheng <shuicheng.lin@intel.com>; Askar Safin=20
> > <safinaskar@gmail.com>; Pingfan Liu <piliu@redhat.com>; Chris Wilson=20
> > <chris.p.wilson@linux.intel.com>
> > Subject: Re: [PATCH v2] drm/i915: Setting/clearing the memory access=20
> > bit when en/disabling i915
> >=20
> > On Tue, Oct 07, 2025 at 08:25:14PM +0000, Jia Yao wrote:
> > > Make i915's PCI device management more robust by always=20
> > > setting/clearing the memory access bit when enabling/disabling the=20
> > > device, and by consolidating this logic into helper functions.
> > >=20
> > > It fixes kexec reboot issue by disabling memory access before=20
> > > shutting down the device, which can block unsafe and unwanted access =
from DMA.
> > >=20
> > > v2:
> > >   - follow brace style
> > >=20
> > > Link:=20
> > > https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14598
> > > Cc: Alex Zuo <alex.zuo@intel.com>
> > > Cc: Shuicheng Lin <shuicheng.lin@intel.com>
> > > Cc: Askar Safin <safinaskar@gmail.com>
> > > Cc: Pingfan Liu <piliu@redhat.com>
> > > Suggested-by: Chris Wilson <chris.p.wilson@linux.intel.com>
> > > Signed-off-by: Jia Yao <jia.yao@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/i915_driver.c | 35
> > > +++++++++++++++++++++++++++---
> > >  1 file changed, 32 insertions(+), 3 deletions(-)
> > >=20
> > > diff --git a/drivers/gpu/drm/i915/i915_driver.c
> > > b/drivers/gpu/drm/i915/i915_driver.c
> > > index b46cb54ef5dc..766f85726b67 100644
> > > --- a/drivers/gpu/drm/i915/i915_driver.c
> > > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > > @@ -118,6 +118,33 @@
> > > =20
> > >  static const struct drm_driver i915_drm_driver;
> > > =20
> > > +static int i915_enable_device(struct pci_dev *pdev) {
> > > +	u32 cmd;
> > > +	int ret;
> > > +
> > > +	ret =3D pci_enable_device(pdev);
> > > +	if (ret)
> > > +		return ret;
> > > +
> > > +	pci_read_config_dword(pdev, PCI_COMMAND, &cmd);
> > > +	if (!(cmd & PCI_COMMAND_MEMORY))
> > > +		pci_write_config_dword(pdev, PCI_COMMAND, cmd |=20
> > > +PCI_COMMAND_MEMORY);
> > > +
> > > +	return 0;
> > > +}
> >=20
> > NAK. If the pci code is broken then fix the problem there.
> > Do not add ugly hacks into random drivers.
> >=20
> > > +
> > > +static void i915_disable_device(struct pci_dev *pdev) {
> > > +	u32 cmd;
> > > +
> > > +	pci_read_config_dword(pdev, PCI_COMMAND, &cmd);
> > > +	if (cmd & PCI_COMMAND_MEMORY)
> > > +		pci_write_config_dword(pdev, PCI_COMMAND, cmd &=20
> > > +~PCI_COMMAND_MEMORY);
> > > +
> > > +	pci_disable_device(pdev);
> > > +}
> > > +
> > >  static int i915_workqueues_init(struct drm_i915_private *dev_priv)  =
{
> > >  	/*
> > > @@ -788,7 +815,7 @@ int i915_driver_probe(struct pci_dev *pdev, const=
 struct pci_device_id *ent)
> > >  	struct intel_display *display;
> > >  	int ret;
> > > =20
> > > -	ret =3D pci_enable_device(pdev);
> > > +	ret =3D i915_enable_device(pdev);
> > >  	if (ret) {
> > >  		pr_err("Failed to enable graphics device: %pe\n", ERR_PTR(ret));
> > >  		return ret;
> > > @@ -796,7 +823,7 @@ int i915_driver_probe(struct pci_dev *pdev,=20
> > > const struct pci_device_id *ent)
> > > =20
> > >  	i915 =3D i915_driver_create(pdev, ent);
> > >  	if (IS_ERR(i915)) {
> > > -		pci_disable_device(pdev);
> > > +		i915_disable_device(pdev);
> > >  		return PTR_ERR(i915);
> > >  	}
> > > =20
> > > @@ -885,7 +912,7 @@ int i915_driver_probe(struct pci_dev *pdev, const=
 struct pci_device_id *ent)
> > >  	enable_rpm_wakeref_asserts(&i915->runtime_pm);
> > >  	i915_driver_late_release(i915);
> > >  out_pci_disable:
> > > -	pci_disable_device(pdev);
> > > +	i915_disable_device(pdev);
> > >  	i915_probe_error(i915, "Device initialization failed (%d)\n", ret);
> > >  	return ret;
> > >  }
> > > @@ -1003,6 +1030,7 @@ void i915_driver_shutdown(struct=20
> > > drm_i915_private *i915)
> > > =20
> > >  	intel_dmc_suspend(display);
> > > =20
> > > +	intel_pxp_fini(i915);
> >=20
> > What is that doing in this patch?
> >=20
> > >  	i915_gem_suspend(i915);
> > > =20
> > >  	/*
> > > @@ -1020,6 +1048,7 @@ void i915_driver_shutdown(struct drm_i915_priva=
te *i915)
> > >  	enable_rpm_wakeref_asserts(&i915->runtime_pm);
> > > =20
> > >  	intel_runtime_pm_driver_last_release(&i915->runtime_pm);
> > > +	i915_disable_device(to_pci_dev(i915->drm.dev));
> > >  }
> > > =20
> > >  static bool suspend_to_idle(struct drm_i915_private *dev_priv)
> > > --
> > > 2.34.1
> >=20
> > --
> > Ville Syrj=E4l=E4
> > Intel
>=20
> --
> Ville Syrj=E4l=E4
> Intel

--
Ville Syrj=E4l=E4
Intel
