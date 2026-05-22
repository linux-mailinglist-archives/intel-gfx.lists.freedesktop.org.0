Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id INPfJ1blD2r+RAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 07:10:46 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4641A5AEFB3
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 07:10:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B58710F4AB;
	Fri, 22 May 2026 05:10:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JVgKaG6+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEED710E05F;
 Fri, 22 May 2026 05:10:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779426642; x=1810962642;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PhChQxLhcsgY4hLfkgCIeOrnbPMQvWSPGEnF7IT32Ls=;
 b=JVgKaG6+bbLbltMg6l5oRTXMzIoPReqCB4utcjJHSHYop7ZsnB1+vKT8
 gSFBvXJ1V2NF1+dgVsIVFAb0o75L1VFaOuiLvcCA2QbVki8gSoTOncvsl
 dvkD0/z3/fTDQrHzTc1QdOmtRbdDGWQ1NXwR48l0VNQ1WUxUmIVP4PLFZ
 r1opFpph7kMe52a4wRFpRrpEvALWA5RLSSjum1FZWpVhGb19JFBnv6kyf
 vwojnmQXHUpDQglEiqGvH0TRfazK1/yqVgNM7ujN1T5/IXxYgAgWFlZEO
 hCpFvgbNOQicCNLrd3bp2K8SVvSMZhxsamkYVxzaxH5MuhL5v7jbiloOG w==;
X-CSE-ConnectionGUID: 0HtaknfISHWK7WbVGdC/SQ==
X-CSE-MsgGUID: FG/j3BFPSDeVRUHBXtordA==
X-IronPort-AV: E=McAfee;i="6800,10657,11793"; a="80083478"
X-IronPort-AV: E=Sophos;i="6.24,161,1774335600"; d="scan'208";a="80083478"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 22:10:41 -0700
X-CSE-ConnectionGUID: tdth8bu5QESa253yHBYQ9g==
X-CSE-MsgGUID: ZHOY4t1AQkOHaX0g1a6zJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,161,1774335600"; d="scan'208";a="264610237"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 22:10:41 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 21 May 2026 22:10:40 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 21 May 2026 22:10:40 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.46) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 21 May 2026 22:10:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QdN8BM0RJCOm7+UTkXlmyqCdt16h/xz/0jY8fPE+348uHcbLjXnhiCtZEnruCyA13bUw6VrKUM7zKH3IwZkhCW4wviMkJChJbByS3V460ncEfNTSJ/Q/v1qXKzEj//838ycgsfgMlbMBEpi74eccncsLRt7DIR+7e0qoD9LoTTElkTcsAencoxIuq7HvCo+hzHVTwct96mawZ87AQjIX8kFGuTTKa60EqHYbkbR9mso12MYjNe2WLYP6qJS0mRH8OcmBfLz5k2F+6qrYh/SfW7RNNNFTO03dAcIyuMj3Qc8NnwJwcgYJ0IXTSjxAexjkJJNclj2Q50izK49d4otNYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nuur76BxiJPqn0Cibmaf+gJ8sJwgJHG8NEikH4e2Jt4=;
 b=QVECkMVJxxlm+n1tlaSZNPzPsJ4Wrq/lIR6xi/4Ai09TTsTly5xcGBivwGrChZfMd+fgdw20BcgD+a6K29vbHaPqsXLTm6RnAFEyWCSICQ9nfwXaApYsy0Tz3GXHSpRQiSPYLAVBdRK2CVSrUun9V2TSE5Vg6V/ZzZcUuoGbqWKLBKgnTsj/MqCYBzanSxBhqrdxlkWEoxZ07Z8in3WeZnWBp8hsGYrzc+dTbkDDZiTy6TqnbGYmprtXK5ObvdjsZfQAGsn7zm+N0KM40S3WfXPR19nJT0qJgCyzZ4SWJeWzXmJAH9YCpPTBUCwFCFyyVfa9b6u3kl/6icemiNDYng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by CY8PR11MB7033.namprd11.prod.outlook.com
 (2603:10b6:930:53::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.17; Fri, 22 May
 2026 05:10:30 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::8015:f6df:e093:52bd]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::8015:f6df:e093:52bd%8]) with mapi id 15.21.0048.016; Fri, 22 May 2026
 05:10:30 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "freedreno@lists.freedesktop.org" <freedreno@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "kernel-list@raspberrypi.com" <kernel-list@raspberrypi.com>,
 "amd-gfx@lists.freedesktop.org" <amd-gfx@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Alex
 Hung" <alex.hung@amd.com>, Harry Wentland <harry.wentland@amd.com>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "Murthy, Arun R"
 <arun.r.murthy@intel.com>, "abhinav.kumar@linux.dev"
 <abhinav.kumar@linux.dev>, "tzimmermann@suse.de" <tzimmermann@suse.de>,
 "marijn.suijten@somainline.org" <marijn.suijten@somainline.org>,
 "laurent.pinchart+renesas@ideasonboard.com"
 <laurent.pinchart+renesas@ideasonboard.com>, "dave.stevenson@raspberrypi.com"
 <dave.stevenson@raspberrypi.com>, "tomi.valkeinen+renesas@ideasonboard.com"
 <tomi.valkeinen+renesas@ideasonboard.com>,
 "kieran.bingham+renesas@ideasonboard.com"
 <kieran.bingham+renesas@ideasonboard.com>, "louis.chauvet@bootlin.com"
 <louis.chauvet@bootlin.com>, "kernel-dev@igalia.com" <kernel-dev@igalia.com>, 
 "John.Harrison@Igalia.com" <John.Harrison@Igalia.com>
Subject: RE: [PATCH v5 0/7] Refactor drm_writeback_connector structure
Thread-Topic: [PATCH v5 0/7] Refactor drm_writeback_connector structure
Thread-Index: AQHc6ahfKEtmAAEpokqjuvgqxTRqrrYZfZ7Q
Date: Fri, 22 May 2026 05:10:30 +0000
Message-ID: <DM3PPF208195D8DE3B4B00C724CB7E65F92E30F2@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260522050313.1800378-1-suraj.kandpal@intel.com>
In-Reply-To: <20260522050313.1800378-1-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|CY8PR11MB7033:EE_
x-ms-office365-filtering-correlation-id: 1d3d0af1-079d-4d38-2016-08deb7c071b4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|1800799024|38070700021|22082099003|56012099003|18002099003|11063799006;
x-microsoft-antispam-message-info: fieyREnvA+lGdgf0xID3KAMabzEcVrCxL/m+3guNKaiDm0s4cqH/RMhpWLu0BUs21lcLdvW+LC5UOdR5TxkEbJNpIExmwVH6DQDmaWIaqDvDSe4QPpYV+lmYsj2xFqaLj5vj3uARUVfNke8dhouTT5Tzxe+TPl3S8Elai6TGS+/tElgfD9nsYGXO3Le/oR8g8UHmgBIqsO6rUqbcvhR3Q+N+HwuPUWEhcxkKiSsoKU3urBeLOHk9BKygEOhRc0V90gVYav06+CI7cd8VOhcRkxYop/Fa/Dq6q7nB6lCMcfpAmNm1JVC3CfTyRm4vUVrzmfbPelEtujzpCPDgugqfTweRgCjEj1uA0ZM+4o0BARk0Hs4uAzchuy5/D1QhyfKWNOYCEtgM3WrgHHiAYO4tkjXYz3grrz684zOl0zVMRGCwDs0MOg4UpyoPipZKRcTeZOcVX67j6qlm4Qug3Fs7zEvtSH8RLotF3CxNz+n6R5FwlBS6Gzpcscz7kgpeC7vWTW6aDfkBoefDBOTKWGpprQ6DGIz42CNrKiW4cI7niTWQcB2YxX81aF48Yon+nd5SUyXP35GJSjHTak7g9lX7/SfsYRCE8+OLoZOKu5QEQna+gRtrtwtqJXUgOihnnLMJHYdeRquqv5OdBIAUy9OQRmQbW/AaFvRCLmPrmMF8S19fN8VvQPK4ig8aY0MxfIcJ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024)(38070700021)(22082099003)(56012099003)(18002099003)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?CFfidcjENBWSy5tECfiENQgr6MXLde2DAuPA/tmxMKrAudohdUAMnOM0TIXK?=
 =?us-ascii?Q?YTsoQDDK/68gZJDS/xxte7QzZ55uphEK/Qwdw0aDIXj/JfIKpnd3KHYd430r?=
 =?us-ascii?Q?5Tr4DsaIrjwHn41W46OULfRh/iQM2H70q+PVIIsdoLTloT6J+7MVjs0O/eN2?=
 =?us-ascii?Q?YlgGKD6GwaIuiG+QvmA18TjeeIbl6KIRoOsL4EEhGX8MYyehWmdrFxOdOHLA?=
 =?us-ascii?Q?1MXvhPXioyFdivhI+tMJkyhs0lQeU8HQmKjbSU4zY+lZP7sXVnOcg+e8cBak?=
 =?us-ascii?Q?lsv3cTzhz9qp1XDIPzTCq9dS1+EpFTsWxw3F2Ipw6lpXpsOhbdGBrga754Zv?=
 =?us-ascii?Q?SvNnOGEIumegG95p+Qb5n78VVq9k9ABFmib8rtuOnb/awGVCAkV4soClOvWC?=
 =?us-ascii?Q?JheXbHLOS4cnL0eUCWZ1GPYlFAxChxcKCCTW/i/ER3F0//2W7GEjGTkTgc1T?=
 =?us-ascii?Q?+V/87qo8ZVl2lqpyTLQyGbK0TSGcIJUEC8GleRhbizJBgJicqoTT9VeZRttJ?=
 =?us-ascii?Q?4DRJTx5nfO/y85EZX5IC2nMyonTNmgfWf2AVgrLQLzBk+9A5qBu4p1b1ATtK?=
 =?us-ascii?Q?M2pZymhpFl/Znp2NBfiHiK08pbsQh95nIBPWaXu7ed0AKZJziMWZ1ho/Wq3J?=
 =?us-ascii?Q?gTNTsjurb1ErqQvPCQXHs/JnbS5tIJMoZSjK/JkXe8KgzuA/mP+xKJIHNseD?=
 =?us-ascii?Q?AfTBFFZdMsM+CL9OiB/o0qOhj8yxm0qcoSkULc2E/zeLxJizLQHAUKlW4KxN?=
 =?us-ascii?Q?Wl3ldeUQ7qmyadamBztl1K7MOaIdxjbO4zqhLnDOkw3CDkqSQ8nRFrDia/ch?=
 =?us-ascii?Q?dVzXx74kaKxMvLSsKXK+7Ph1HlCk2HVAFrEXvqNryfC4JYjE7WTw4eLvV8Vu?=
 =?us-ascii?Q?hQVGynPH4o7TBdZOQfuLH0eKUtc43sSk6YrRrDAvcL0sxnfV/gvMSeDqNcFK?=
 =?us-ascii?Q?jQ7x86A36C/Azii2Ty7TKItKCvv6aiPEC5EYR/X62Sip6gEq7TNDgm23oFLP?=
 =?us-ascii?Q?7mOznvdEehaFkNjzoyn1NcqaPidpdmcSxBkqiKESgR+WJQ4hfzkKIBvLZ3c5?=
 =?us-ascii?Q?Bk+UcVc/Lgu63+9IrNI+D3Unnzkjdm3YD3d1eyG1eoNWBwl/iJW66wSk1U9A?=
 =?us-ascii?Q?v8bpE5QRdDm96nNMIDqu7164mJBo9rRB5pKw5XuQ1P+I/9wTJhNgdi9bv6XI?=
 =?us-ascii?Q?LLaQdpynFzT1V0pmri2/sC/a7b3Imf1y2p60ZTA4DltiFxOZeQ2bacg64ULQ?=
 =?us-ascii?Q?Wg9VgS23T/d2XI2fOs0amRvXQsIDOU5fWec571DhkfCcqzrR5vNfsbd4Y9bI?=
 =?us-ascii?Q?WDp0xX1M3tgGk4wkVK+NQ9gH2odht4htGoQ2Fw4z3lbTrARp6OdnDiqOilLg?=
 =?us-ascii?Q?q4PKRSviUCRtT9HYF14iZe1QZwZhN9ILNA6aDnylzj73jAC+pCqL5WHJciyA?=
 =?us-ascii?Q?//EFJfBUzasCkmgcMRozEz8scAfAgv5VHUtZbdk4ic/3ib4QWIChizAzHDgG?=
 =?us-ascii?Q?26/ZWhMGHWhiThX7gK3kafdw11vwnC2oUL7KVgPiYJfvl0xsQZmufCCSjRXo?=
 =?us-ascii?Q?ZftoBVI8jwrSVB/o1YuHR+Z/f1gAbWehx7D5H9Rqh0uMhfAT7tiiCxbEtzjn?=
 =?us-ascii?Q?MZi6/iImMtdC/jBGf8DiT/6Qy8pqaamW5sfmqDhKbEMJVMmzPXkoNPiJ8A+Y?=
 =?us-ascii?Q?TQbd4oLhRSQc8B2xJ9JR9Z7tGBTNFIfRbxSDq46YdY3d078AnpAJe8RdyEs6?=
 =?us-ascii?Q?XalQ3Payhg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: BECzoK7Bq06tYnOnspQDNbHg8+Uc4u5b7iVkKBco8qH10uufZRghbIvZSE06NM4xfHHOiN55/XrxB3WBow9/SpmAImktnONQFdUcV/JPsqs8zxuu3AIc93PA5/O+nhJVasqA8Q5ZbEPguy8NJR50BFf+mhAdz0+anxrhK5wh2xOJNb3LNCuy4MUpV+45mo5U4Lj8J0dGN7EpcceOkGNiINHk0C7/k4m2aCqM01c/4JyjMA/4pdv4nCt1HApUn9mEyl8oojoOdrZPYR0Sxbbw1r31Nlz5xy9OsRICayf/hJSrOI2Bj864Z96+GMlyIdQsZkYKZj+PZg6vDAgb2k3ZeA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d3d0af1-079d-4d38-2016-08deb7c071b4
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2026 05:10:30.1875 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yBpOTeSaAHuOi7QMpX8fuLSTg72mRrhnJpEy3ScR0dA3E7BHM8tpz15yxl8JyzmCIZtlX9rRR8Pb6YyhVxVFXQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7033
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
X-Spamd-Result: default: False [1.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[patchwork.freedesktop.org:url,intel.com:email,intel.com:dkim,DM3PPF208195D8D.namprd11.prod.outlook.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx,renesas];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 4641A5AEFB3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> Subject: [PATCH v5 0/7] Refactor drm_writeback_connector structure
>=20
> Some drivers cannot work with the current design where the connector is
> embedded within the drm_writeback_connector such as intel and some driver=
s
> that can get it working end up adding a lot of checks all around the code=
 to
> check if it's a writeback conenctor or not.
> This is due to the inheritance limitation in C.
> This series intends to solve it by moving the drm_writeback_connector wit=
hin
> the drm_connector and remove the drm_connector base which was in
> drm_writeback_connector. This is done in union with hdmi connector within
> drm_connector to save memory and since drm_connector cannot be both
> hdmi and writeback it serves is well.
> A RFC version was floated and discussion had taken place at [1] which kic=
ked of
> this more cleaner series.
> We do all other required modifications that come with these changes along
> with addition of new function which returns the drm_connector when
> drm_writeback_connector is present.
> This series also contains some writeback API cleanups as a consequence of
> writeback connector moving into drm_connector All drivers will be expecte=
d to
> allocate the drm_connector.
> This discussion was tiggered from [2] and sits on top of Dmitry's series =
see [3].
>=20
> [1] https://patchwork.freedesktop.org/series/152758/
> [2] https://patchwork.freedesktop.org/series/152106/
> [3] https://patchwork.freedesktop.org/series/152420/
>=20
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Alex , Harry can we have a Ack on this series from AMD

Regards,
Suraj Kandpal

>=20
> Suraj Kandpal (7):
>   drm: writeback: Refactor drm_writeback_connector structure
>   drm: writeback: Modify writeback init helpers
>   drm: writeback: Modify drm_writeback_queue_job helper
>   drm: writeback: Modify drm_writeback_signal_completion helper
>   drm: writeback: Modify drm_writeback_get_out_fence helper
>   drm: writeback: Modify prepare_writeback_job helper
>   drm: writeback: Modify cleanup_writeback_job helper
>=20
>  .../gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c | 10 +--
> .../gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h |  2 +-
> .../drm/amd/display/amdgpu_dm/amdgpu_dm_wb.c  | 12 +--
> .../gpu/drm/arm/display/komeda/komeda_crtc.c  |  2 +-
>  .../gpu/drm/arm/display/komeda/komeda_kms.h   |  6 +-
>  .../arm/display/komeda/komeda_wb_connector.c  | 11 +--
>  drivers/gpu/drm/arm/malidp_crtc.c             |  2 +-
>  drivers/gpu/drm/arm/malidp_drv.h              |  2 +-
>  drivers/gpu/drm/arm/malidp_mw.c               |  7 +-
>  drivers/gpu/drm/drm_atomic_uapi.c             |  4 +-
>  drivers/gpu/drm/drm_writeback.c               | 46 ++++++-----
>  .../drm/msm/disp/dpu1/dpu_encoder_phys_wb.c   |  9 ++-
>  drivers/gpu/drm/msm/disp/dpu1/dpu_writeback.c | 10 +--
> drivers/gpu/drm/msm/disp/dpu1/dpu_writeback.h |  4 +-
>  .../gpu/drm/renesas/rcar-du/rcar_du_crtc.h    |  6 +-
>  .../drm/renesas/rcar-du/rcar_du_writeback.c   | 15 ++--
>  drivers/gpu/drm/vc4/vc4_txp.c                 |  8 +-
>  drivers/gpu/drm/vkms/vkms_drv.h               |  2 +-
>  drivers/gpu/drm/vkms/vkms_writeback.c         | 15 ++--
>  include/drm/drm_connector.h                   | 69 ++++++++++++++++-
>  include/drm/drm_modeset_helper_vtables.h      |  4 +-
>  include/drm/drm_writeback.h                   | 76 ++-----------------
>  22 files changed, 160 insertions(+), 162 deletions(-)
>=20
> --
> 2.34.1

