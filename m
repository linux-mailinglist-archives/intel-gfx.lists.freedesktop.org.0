Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E41D4861DB
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jan 2022 10:11:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3925113E38;
	Thu,  6 Jan 2022 09:11:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCBEA113E38
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jan 2022 09:11:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641460283; x=1672996283;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=U8P+dhoH3HvnSq+jghrCLSuKrqPgmeYl5SmEdKAOlmc=;
 b=LLbw3JbEnU7r0LtszvJ1G8O9ZP4XDldSPj+VCjEOVEF8ZHMwHc9biuYv
 FQkqiO2i3TY1uHvZRKkCcatuLlsiWGDC8UlZRXVHWkwML4cYPJ5WjN7E2
 /Qdy/g+AWc5y2bVt6lc21ba/IGVpgCwqnhDVGNeVsaZJFYSmDbK0ysWtz
 KJLp1LhHouLzkC4bMzewptzpEH7hCXr+D/RiXnp7RXja3mSZ95lV7O5Ox
 /lGqFwpPHvjIhkbT5QnZxZ5vYxWHbRCAfd70mFMcM4Siyyw7uXi/xY+5m
 RxC9OCWKLvIAc2yGllB2iCs7kDiuPD2o4fG8FwmOL+W72oDfXCJ4n7U90 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="223309021"
X-IronPort-AV: E=Sophos;i="5.88,266,1635231600"; d="scan'208";a="223309021"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2022 01:11:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,266,1635231600"; d="scan'208";a="513346090"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga007.jf.intel.com with ESMTP; 06 Jan 2022 01:11:22 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 6 Jan 2022 01:11:22 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 6 Jan 2022 01:11:21 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Thu, 6 Jan 2022 01:11:21 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.108)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Thu, 6 Jan 2022 01:11:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CtP3Ktup7qggUosJmKfg6Jk7Tfhuf+Wt+9sBx/NvH0rvHGNNQFOJ95VlrmA13hceoEs2VXvZ2mY1/UR5mjiPCm9Kjk93bC/aUrOox+M8l3kyPt6HgyN4ynR8NnKXUUuDm992nigaauov8z78fJk16E2OJaI0XzBE+js0z1Gn2NpJ9D3Gj9mymoWSbaGhp9wh8SQGELvU3dKPXJ+8otpC7h/O9pX5ISmrWR/aZPGOH9g/zuYPH4h/FvDP9jo9/MqAR5zhsxwS7rUVsyakonj5CU7dLoL56HNTKGlrSROr8aOYAd1k/vEfJF6MLdLtSGQheeuRUIXl3wpl5TjABcXrbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U8P+dhoH3HvnSq+jghrCLSuKrqPgmeYl5SmEdKAOlmc=;
 b=UFLTx6mIbK+Gv4PdLs6LUZP3J+4rEO/EhlncqomFv4L+HvhAFcBlXq0XRPlsYqHF3hY0xVnvv/maX+bPWHEfqKE/k85DjT+ZyIwJ2z1MtJOkrJCVpwHGRNzDINDRAL4Xd6jlqNGdZD4dKGWz7a//Jc7iPwucQZ9dgyfpzbUiQS1bDV/pd/FLItJNFquEoUqhMcNU4wUI7OTgWtCkAwd3wNj0FExBM4sCWt1YJxjn2MNepXyJ0JLxfmvRRwqj8pX/14V08OzwibI+sTM0Yroy9W81/KTyE77Iy771Yw4oXQXwcqawgrdTjoKFbJ4r+XNU4DfaNtOiNLFizAIUCuAozA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN6PR11MB1348.namprd11.prod.outlook.com (2603:10b6:404:46::11)
 by BN6PR11MB0001.namprd11.prod.outlook.com (2603:10b6:405:69::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4844.15; Thu, 6 Jan
 2022 09:11:20 +0000
Received: from BN6PR11MB1348.namprd11.prod.outlook.com
 ([fe80::44ca:3f1c:fb20:9f6d]) by BN6PR11MB1348.namprd11.prod.outlook.com
 ([fe80::44ca:3f1c:fb20:9f6d%7]) with mapi id 15.20.4867.009; Thu, 6 Jan 2022
 09:11:20 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/4] drm/komeda: change driver to use
 drm_writeback_connector.base pointer
Thread-Index: AQHX8xSBlLEl02GEPEWf8HzkidC/Gqw2ds2AgB9c0LA=
Date: Thu, 6 Jan 2022 09:11:20 +0000
Message-ID: <BN6PR11MB134806FC45B73020F2583E96E34C9@BN6PR11MB1348.namprd11.prod.outlook.com>
References: <20211217071356.12517-1-suraj.kandpal@intel.com>
 <20211217071356.12517-3-suraj.kandpal@intel.com> <87a6gz35ic.fsf@intel.com>
In-Reply-To: <87a6gz35ic.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.200.16
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0724a836-08f1-4a37-e654-08d9d0f480dd
x-ms-traffictypediagnostic: BN6PR11MB0001:EE_
x-microsoft-antispam-prvs: <BN6PR11MB00015B996E69B34A6BD307DDE34C9@BN6PR11MB0001.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:669;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Vzy5jwrxQ0wrYZv9hhaLcoppYdoojkuhksGKy3IdzlgAwSzSGT4LiX1qEme42WdlgwkRG/6NYGORaXWNmmVdcf+cAeX6OrWO4Vw4fzvHyH+CnRi8t1HVu1m8yMbD9x61Lc4eLnmxULTcx9Z4U8gXxv6sdvgweXzPOFMNcAhHSTVQatZ8+tDIucyB0G1ciL5wh6HGXI7DC2r1MDmQN+lgFHl2T72bEwKNj1SSoCHB8oeI4MeF2LpBMHPgMbYPXQt735UmSmVJIRtAkFgRKhetGgymV9rFk2q90Rivh6+AShHtzE2dIUycUrdtPWUW5matdeAhfuli5ElGLKZkPKzwE38W0+hDW86wWDUjME+yZKDKgp3HSTFHuMSG0Y5z50v7FXU3GmvpPBdUz0zYbfIBilmv/46e+3oRfggiYJaHCZTqe6mPK3Uo9ZcK7NRUa28+G+Y8srvV+JJ9SQK12cOystgJEE7UKbuvFAbp0jTK/RC7QDLNJj0JWWl2GFE3R0gzutMpt1ro8LSJmQNku6BDhb1CFDuZJYekvSTjS4sYlN7bZcKZtRGhRzQTaL8+JmGIQ2ys89PGcCqyseUpLy/RlLVnj21bvrQYYmgi9eJ1wOEbGnEWqdadNXmKPRx60RhMVNXS78wl/TEzkFR8quQrrLGJd8Kq9kH/VCCBxmMHZtOQJNq1pTbkLcyr1aRG1MTx9y7koAo9nnXgGzshg3BUCg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR11MB1348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(9686003)(55016003)(64756008)(4326008)(38070700005)(38100700002)(26005)(52536014)(66446008)(110136005)(5660300002)(82960400001)(186003)(558084003)(33656002)(316002)(2906002)(508600001)(6506007)(66476007)(66556008)(86362001)(71200400001)(66946007)(76116006)(8676002)(8936002)(7696005)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?RU7LKlzO1PBC103yrqBkhK4mmGXBLI3NEd9LHbwSqLz1QwJyPDyuVCnknL1O?=
 =?us-ascii?Q?fL/IAGhoPWS4ZWiqXTG8Knfnr1ZzNu8pv31q7368GW41k+f84+bDFj+BkKN3?=
 =?us-ascii?Q?v4bB40SMUSGInJRE9Kaug9t3hj3EblNJlNIKzqQjUyukm5xW8IGPafPUeHGr?=
 =?us-ascii?Q?1WkEFsnJYurHk9cObp/QpwI5xDkjxTCXGdwJzUhYFrCeLm1rqeSZ+h6rlraE?=
 =?us-ascii?Q?98tBKqCzWc7KnQXcMhhCzAUyw7JOlNQInODJJmz6ENSDJ2ulc+nOkEieFlI9?=
 =?us-ascii?Q?t647xOlgKOEH0yy0UIpvNNQRFvrM2bCH3HVuiay8jXsQ9fMT+/R+PX9seiyd?=
 =?us-ascii?Q?K/D3M0Ktto5O4Iuucw6rYjz09PisdGLrGmi+QPTk6pS+1IrA5XmOlmF06fBU?=
 =?us-ascii?Q?Oy+MyUeHsMNqeFYIZacOaYXo+8OwYvXy4SqBE5NI8B3nj8eliBorduFaSJc5?=
 =?us-ascii?Q?Yo4vMABH5qjlrAC9Tcc88wkyAXMx/m1TGpTJ0ilk1dGCv+ilB8KeXJsdIAtg?=
 =?us-ascii?Q?TWKbCLBcbvQt/7MDM+993xdWaYVoJTfZnTVSU5MJi/qKIlQ5dF8o3GU6iAJI?=
 =?us-ascii?Q?rs216tVQLkEBHCiM9CUDMoaYgoKWXdHrFXHbaKC3Jssyh2/KGk+qmDa6igOF?=
 =?us-ascii?Q?wRJhH92uuevNso3I7B6LISr8AY7jy5u5a7S+eDBlbM3M2lBcwGU4GowcjY1R?=
 =?us-ascii?Q?BhvhmLq4sV0jjqNyIA3ELwW40xC0vXzyTeK8yciAL6UcU4KnfKWiiW5+EKdu?=
 =?us-ascii?Q?vpBh0Or+cWnG9T9xTF8/Vx3ChA3hnjzQ5J+yW2fNq1B5Yk2owUfgz2poQO/8?=
 =?us-ascii?Q?ERIQElrpDh8N84MUTFYfBciB/ceWIqb2RYRZ0SI7HrSz0stskFEpVD8cFvEA?=
 =?us-ascii?Q?0ofOjhF+vyYE+t9mSCEK3wyjS08qDqorKATb0QIU6ryFZnnfHO6V6qzIjtpz?=
 =?us-ascii?Q?YXIee7WnpXvifHwvZnkQ6M/PmNIn570QRB+fPJq2H/b3ij/KczSHbe5mzLlC?=
 =?us-ascii?Q?oxTL6AukR+cmbJadTrqk4l/yvXQeTlyBZY6j7qmku9gvtseOfeOe5Bav05d0?=
 =?us-ascii?Q?1Y0qswXI8xUoRvBCyz9j5BjtioMQi0cYVxq1S5Ef5LywudLvRJOjABkiYCzz?=
 =?us-ascii?Q?bVW2aGCTtaKwSShDCy4zud2czytg72xsCeF3H8AfENGeQQ9UZw5zO5qshMqy?=
 =?us-ascii?Q?/feY9nOlXX03pg/btrE5BVhdZOPMkX1UatMi54jdlGi/T1Cy9k9iR7Svu6Yi?=
 =?us-ascii?Q?yVRlvdCt80pTBr2l6AngTtuIj3LQ9AsYonD6z+Shant/NxKGDZT5qG3POiXY?=
 =?us-ascii?Q?vXlpxa6Xzz9xqqw6vKzOpERY3e8dfHlrduPcQMKRzwbt8B0u6QicRBqwaLip?=
 =?us-ascii?Q?aa/+dzK0J5UyLJm+84N1bRh08to0zilJtpJ2fKfiuA1iWFp98tCKP6AORpBx?=
 =?us-ascii?Q?Yf0ghXXd+r4odp17YiQf6LrSSMvnqdFCdF582QD3dzk48OHT4aMjvjhpiV1b?=
 =?us-ascii?Q?O9KJ0gwKSVWkPRVk3dufZmtzmGQEUEunPkou/S5cku6RW8BdW8DoVnSqksZc?=
 =?us-ascii?Q?K4/ZHzoQpGW003DvBpZUTMOsGBeyVi+t9g1MHCX7zErfQ8RRkwAWOkb0VoNf?=
 =?us-ascii?Q?ag=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR11MB1348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0724a836-08f1-4a37-e654-08d9d0f480dd
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2022 09:11:20.1634 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qSC3xwgu2CqernZQuGASpt7nKBne5nDc7fLz54UBYR6Xg/7puvmXJdaxhHO/gGTUGT6yJRIayEWqqAqPHsVPQQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB0001
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/komeda: change driver to use
 drm_writeback_connector.base pointer
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
Cc: "Murthy, Arun R" <arun.r.murthy@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> Every commit should build and work on its own, so this makes me believe
> the previous patch breaks the build.
>=20
Sure Jani will address this in the next set of patches=20

Thanks,
Suraj Kandpal
