Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6AD1B3217F
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Aug 2025 19:28:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7BA110EB79;
	Fri, 22 Aug 2025 17:28:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CuddKegq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 528A810EB78;
 Fri, 22 Aug 2025 17:28:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755883726; x=1787419726;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:mime-version;
 bh=Ha2kzmbmhcCpE7UEcUBls4e7FAeoGJ4G+DH/lrvLbOs=;
 b=CuddKegqk2GDIIONZTJqQh0Kzuuhb1i2Guyei7FZiPL46Xu4xg+l1tjc
 pVd2YFgxt4hm1Up3tS/PFZHBnGRZBkUHK3CQDdgpVfJ9EBH22qVCXTk0I
 44L0/XKcRoYSf2Bx5X/Qus7DoLPjSW6fzdZv309qy1ZiHHV/Ho0RLn0A5
 07lVxjcj7TX9/30lTgPKYTzgQhBIrklFLmkzAynDKjou5AUPcpa9G6qGl
 4FAavO+LteJqa/rtFOLnTphWKXWOwmRSM0HBukK5MAjOKbrD74+4xxtsO
 FBbBO1uhECCjD0v4iFX8UV/4khrORn46H/314b1JQ8c8uiCqBUi1zdGdV A==;
X-CSE-ConnectionGUID: MTbokif6TeqGUxvHjEwyQw==
X-CSE-MsgGUID: ibaiFolSRyiLQUbBCMuzzQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11529"; a="58262729"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208,217";a="58262729"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2025 10:28:45 -0700
X-CSE-ConnectionGUID: +oBVUz4wQ3imXU9AhFBpMw==
X-CSE-MsgGUID: 891gfWtGQkGXmj/Z6B9hVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; 
 d="scan'208,217";a="199643207"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2025 10:28:44 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 22 Aug 2025 10:28:44 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Fri, 22 Aug 2025 10:28:44 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.73)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 22 Aug 2025 10:28:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=T2zeTSFET8FZY9h2AZrwXNqp3QQVGlLSK196dzvPhmxZo+CHMawliVLB22XBJ70vyXizrN0LcP/EuhVJc4v2YFwGDgLxb8o056lYi2uAFSJOXSu8P3xsPy0SvYEY0CjdBheP3Feg98dwqJ7Td88DQHeXeHYlcbWiO8OspNadcX9g9vtgCQx/ntitt8EtVNfy20uLMUhmJi5CtP7ArZsApYK9rUgXEW8aK1rhK7nmr2MFUC7rQ6h52SkpEEVEUlDbVTsrBSL35ZHCSlTgRUC8jKaK5Aj+Uvw9BOt0dQJZjUkLFtPWz9mkGYSBc+cgieFxVZFXce7ia4ixnX9SiJCMcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7ntYJNghReUoL4Wi2BKog2DhAo5x0T1hemjvzoQFGEc=;
 b=WCkVhWyekLu+Wvl1Pe1g1Q5aKa8S5XzesRVMnHjrgaEvySkoEg5hrv+zI0YL6j4L0wFwWSt8j7keRbGpYiLBhULEdp67M2JJfhVAhkDqja2V0BasHZikRmjG3qAqjBNjKmLKTrOIp2I8QoPJ1XL8Vkjg1isrdQnoTFn19golmuyAc255bOPMOQhGdo/+/7AMm7m76ErjOVP4UXMK/I2L6omnGCrAegkqSCwv2wz0HrKRWkCtGe7u01RpoD1wdsSyXPqgZ5X7jBNY0xozPsr/vHDo2TUmu2ONJ0EQ40qU6W1vjSMOcen4ftz/kcdW1b44VaSBP473gAESuJJ6D8Wxgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by PH7PR11MB6608.namprd11.prod.outlook.com
 (2603:10b6:510:1b3::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.13; Fri, 22 Aug
 2025 17:28:41 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7aab:2a1f:f728:eb01]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7aab:2a1f:f728:eb01%6]) with mapi id 15.20.9031.024; Fri, 22 Aug 2025
 17:28:41 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Subject: Re: [PATCH] drm/i915/display: handle return value in
 intel_sdvo_enable_hotplug
Thread-Topic: [PATCH] drm/i915/display: handle return value in
 intel_sdvo_enable_hotplug
Thread-Index: AQHcE3ufHsSYym+hJEKZ0/76t4qvS7Ru6n16
Date: Fri, 22 Aug 2025 17:28:41 +0000
Message-ID: <DM3PPF208195D8D2B7E96C92B2B6CB6D9E1E33DA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20250822154327.109766-1-juhapekka.heikkila@gmail.com>
In-Reply-To: <20250822154327.109766-1-juhapekka.heikkila@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-reactions: allow
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|PH7PR11MB6608:EE_
x-ms-office365-filtering-correlation-id: 926a0711-87cf-47b5-0cea-08dde1a156c1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|8096899003|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?w6kpmSUwU9QSDaFkVoseZAQhSVaQp9knYNBETnRm/Xh6k5kmn7PTTzFC9qC9?=
 =?us-ascii?Q?00+b8kkpQ0zHU2DShE23u3h+wTpUKrJwxfbBj51zNIyxSkyNvRCUAW2V/6D2?=
 =?us-ascii?Q?qPFqPuaLVrT1j973TJug/F6RNB2j9bHDDsMvAwS9CZiocyTygIz1pzo1txqV?=
 =?us-ascii?Q?Gs1xQ1XGb9uZl9wLtluKC96DGm3Iy4HKzR0Hwek4N01Vpw/qY+STMwoZ87Jp?=
 =?us-ascii?Q?LT1ZWhQv/U4Ov05Fz0jBmA2aBKJX96BufN6aVmKKLV6zQgsi4oeZl2AOiQZv?=
 =?us-ascii?Q?N2Icb4Zxy6qwV8eSua7pnNNrRuxzreczf+RDVIsV7G4YObVrxP8FaepXnjDv?=
 =?us-ascii?Q?KDwrstG09EkrWgekw79F2FUaInARr4ZtV7EfYhL0PkkXUTZ4SM/HzG/in7Ce?=
 =?us-ascii?Q?0+INzf7sa9I70NXy0sBghT7Z+NDK3J8BYwqcoKYqpREQ1VBwPbMDL4jXDIKm?=
 =?us-ascii?Q?tBzzLySNn6M0TXMKz8avK0cW0oTRiFXeJgCQUksxgPxWKDIoeYu+nFPgyRbB?=
 =?us-ascii?Q?4LwytfkjLmd49X/yibl/ijYKkiuEgNjKl2PMjF3rSRS82uFj71JVt4jNkbKg?=
 =?us-ascii?Q?YcmC3N/qjYNOmwj75gNWqOmcTv6OiiEYJ6JIU19AGHUK2HhhZ90jGW4bwCzI?=
 =?us-ascii?Q?4a4kAXQuD+6XNoozYCWw+5Wti3S5wv9aFGy0fPGMBznSh0G1AL2hBEqFNB2K?=
 =?us-ascii?Q?rdOjpbxiIa3BIaGU6PM4QwMHePKlgtR9KBRsERy/uuIGFvcqGJWMC0z5AyxA?=
 =?us-ascii?Q?vrpPVpiM7i0tPmBxeBRRVG7xFiSb+pjm8iGSEfJsju77xD3o9E5JPJQurXhS?=
 =?us-ascii?Q?1E4GlrHKiCPB/HYZpvvxhsjRFYQHjqP+tJLox92SPsRyHkpNm2/PFttWrmZR?=
 =?us-ascii?Q?G9zMH3k1fTw8/1IcsefjT1+EtkQdXe/NoH7XG0xc/zjiKLVhR2PUK3eqSg4L?=
 =?us-ascii?Q?ipxQHbjDcB/ZoerlZ2D/iubqvCTFZxBrq+lT0S2kodA8+J3YTYoblJBL/uNR?=
 =?us-ascii?Q?B8NydlJmUzPNmpmxXudtmTKYVOsssUaIOOL8MCtG8N+/mRQXMFzICczPksHa?=
 =?us-ascii?Q?ac6HzzwxBoLNBxb+oY34Bd2/3NnBWDm1M6vvXifrEruxdrlhc+3nDNgZ7Jnh?=
 =?us-ascii?Q?G+wmBNtbzXwhi4nsOIDIccUn1JGPUSzyiGtZOO3uN5uD5VjlR2xG656jnWdM?=
 =?us-ascii?Q?+WWgR9sQ22a48WxZ/ZMALYErUTMMvArMu5rizRVI298OFagtcR96JwsUN054?=
 =?us-ascii?Q?HYPlB4q6NRBX4UK5ZazE4gUFXU2XemtboqrZJ20kaUnelr4oEvtPivjHrulo?=
 =?us-ascii?Q?3VfNxY/cZVPwTlynki3J8vCar3iPnW+rUVuyoMzCHya1VuHchufEnMv8GnL1?=
 =?us-ascii?Q?57eQnddDHeigWCh1ixp1SU/xofcImGZwFHCwhYIk1gZUHu1zgs4LIsgbQLyw?=
 =?us-ascii?Q?BzMWLXZ60ZiAH2B/KwZUzG/tBPOAcjjdll+VLxjSYeq8xxI6KUr7rQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(8096899003)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?cKy9t1CmvX+BEH9ImuGIF4mBk3IY8UqXdhZvsXcRej0q0i7S0A6Ab8ebmebB?=
 =?us-ascii?Q?18q4MMMq3lspBfQYfHl98ltbTUgygqAj2klEnG4E0AGiNi+iTNFG/UfoYrxb?=
 =?us-ascii?Q?Yv6gHg7W3ZclvAOCLand3hu7CKZd21+0hdIM9qRf1Ria0+1ZY7FkXfdDppfp?=
 =?us-ascii?Q?zfHAE6dSyFYrzj6Jp4UaXjgxX2go5B0Z0B6dS2wvEF1uSVtyGko2mfcBCDbU?=
 =?us-ascii?Q?LlLAi8cSfbOiqxD+Nya4GZptG03UpVmEhSBtB/+TimmLv+UkQOC4Mpp7OnD0?=
 =?us-ascii?Q?55VTeDL/qZgayF1m5i/saFRMrMTVpsZstZoCxVIr5rfrn+p5qw7IUCbt2IO9?=
 =?us-ascii?Q?malRUc+lwvwuqblekmsjxeyB3lclVKEbOLNDEQY/oY+lAc2lvyxkxbXk686d?=
 =?us-ascii?Q?+NH501m8rS3rfN36jBZ++4q1WzVKH08DkChUOfCzHnElAHSHmJy4dJHQgQZg?=
 =?us-ascii?Q?0FO9yoaIZwdoFFKulowaHR6wKgnsQvP7S+GX4d+WEGnOyC/UIcbsZno3dwx1?=
 =?us-ascii?Q?fhNNrtp6P1kLNViGpd/dQe5ipTdQuNQdfr4+rsoEFWSQEmEkZ5W13dCk8xuA?=
 =?us-ascii?Q?cYVMQ2yXQTlci0+AitdmHVbVrgB1sEt8TsdqcDmtRuGWbqx436zkogYovQ4I?=
 =?us-ascii?Q?Z2cczt1JQCXg0mViYEO+pxcIUWW+2WQ7u9ZA9QMz7jX9sjFF5Fjm32D/8/qN?=
 =?us-ascii?Q?bane0NWAB9m6yvn1FRMnEu4Vo0VmP20GbB28Dld9PDsZX4FwFBmPPOyjhEZM?=
 =?us-ascii?Q?qcETMdVnN69uwzj6JheoKrOLfdU2opnuXJj0ECv5VUW/bipytlkvSxm7pmpI?=
 =?us-ascii?Q?DYqyq6e2MWsLY5rQHCwGstFVCwLTR23xHfmQLfrz/Kd6C6K4IAX9ENHde+Xd?=
 =?us-ascii?Q?USwzi7TlBOEN0M0K6N7D4RFbDPzF1bhNMyCdzYvqGZQAQT2qBcnJwC8E67OU?=
 =?us-ascii?Q?NNwpZQs1Ja0aH/IzHYCLO93T3kRgl9NQ2tjRlcHPrjDdMjqn5FzaNgecoG3O?=
 =?us-ascii?Q?PKJ/oV/mF0f0uv4uxGnOp0ZHm8fqXViMeB/VtTeoXj+UbZ3my0XWyAD/kqxa?=
 =?us-ascii?Q?4AURRp0O7tEuFmVzX8nojurfFZia4OiNEv73C6KQZWOanKBLjGQ4e+qKccF2?=
 =?us-ascii?Q?PSVXD/YhJLxarurWQyqsQhqmWbRIsJ7kDSlQhkanEKcc6QlUV7n36gGfudUm?=
 =?us-ascii?Q?heNlSncSrMZGUhbvl/eBphZVuEqZ8SWEY1mRgPsXu7iSTeqkMRXuzKlW8kvB?=
 =?us-ascii?Q?tyfxtGxkvLMHl+9dX6CJwL2HkaZqqHAyIsasMVHSereAh5UhERr4FOi1b7KK?=
 =?us-ascii?Q?PUT1Vc9IrLwgt3spAE7UvfgcwUWwuBaG5u2eWXwfk2F7krkux9uMQQn1aGk/?=
 =?us-ascii?Q?QHu+SCuaDBm+Q5kIqFbVoTPQTstrTqOuOQtB7jaR0SPhewCUfjbV1OdDm6H4?=
 =?us-ascii?Q?Ot/zJ9J6pAdmbsAtizvXTVY132ZFkJXKxoBt2Eh3+JdrqMIbS+6c/bPORq/7?=
 =?us-ascii?Q?Uoefrwf6jqYZPZw+3Zqf78DVYYvDBv0mW7M7iOfV6uMVKIriyIPo5qVSizsN?=
 =?us-ascii?Q?t/PB5Vu49nmvULPKLdv0266s0o+BNHMceAzRp0BenZWlk24wM6vGpt7Gi5dd?=
 =?us-ascii?Q?rw=3D=3D?=
Content-Type: multipart/alternative;
 boundary="_000_DM3PPF208195D8D2B7E96C92B2B6CB6D9E1E33DADM3PPF208195D8D_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 926a0711-87cf-47b5-0cea-08dde1a156c1
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2025 17:28:41.7475 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: J8+VHfim4tIIbpdRIxJZ/dHJkTQ0YnxrrSp5Ggm2Lou32dbb85TpoNHHgGyTVWOP7p0MifED3R8PcsDGK+ho3g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6608
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

--_000_DM3PPF208195D8D2B7E96C92B2B6CB6D9E1E33DADM3PPF208195D8D_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



________________________________
From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> on behalf of Juha=
-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Sent: Friday, August 22, 2025 9:14:20 pm
To: intel-gfx@lists.freedesktop.org <intel-gfx@lists.freedesktop.org>; inte=
l-xe@lists.freedesktop.org <intel-xe@lists.freedesktop.org>
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Subject: [PATCH] drm/i915/display: handle return value in intel_sdvo_enable=
_hotplug

Report in log if intel_sdvo_enable_hotplug failed

Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_sdvo.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i9=
15/display/intel_sdvo.c
index 87aff2754f69..99a5ef1401a8 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -2052,8 +2052,10 @@ static void intel_sdvo_enable_hotplug(struct intel_e=
ncoder *encoder)
 {
         struct intel_sdvo *intel_sdvo =3D to_sdvo(encoder);

-       intel_sdvo_write_cmd(intel_sdvo, SDVO_CMD_SET_ACTIVE_HOT_PLUG,
-                            &intel_sdvo->hotplug_active, 2);
+       if (!intel_sdvo_write_cmd(intel_sdvo, SDVO_CMD_SET_ACTIVE_HOT_PLUG,
+                                 &intel_sdvo->hotplug_active, 2))
+               drm_warn(intel_sdvo->base.base.dev,
+                        "Failed to enable hotplug on SDVO encoder\n");
 }

 static enum intel_hotplug_state
--
2.43.0



--_000_DM3PPF208195D8D2B7E96C92B2B6CB6D9E1E33DADM3PPF208195D8D_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body>
<div style=3D"font-family: Aptos, Aptos_MSFontService, -apple-system, Robot=
o, Arial, Helvetica, sans-serif; font-size: 12pt;" dir=3D"auto">
<br>
</div>
<div dir=3D"auto" id=3D"mail-editor-reference-message-container"><br>
<hr style=3D"display: inline-block; width: 98%;">
<div id=3D"divRplyFwdMsg" style=3D"font-size: 11pt;" dir=3D"auto"><b>From:<=
/b>&nbsp;Intel-gfx &lt;intel-gfx-bounces@lists.freedesktop.org&gt; on behal=
f of Juha-Pekka Heikkila &lt;juhapekka.heikkila@gmail.com&gt;<br>
<b>Sent:</b>&nbsp;Friday, August 22, 2025 9:14:20 pm<br>
<b>To:</b>&nbsp;intel-gfx@lists.freedesktop.org &lt;intel-gfx@lists.freedes=
ktop.org&gt;; intel-xe@lists.freedesktop.org &lt;intel-xe@lists.freedesktop=
.org&gt;<br>
<b>Cc:</b>&nbsp;Juha-Pekka Heikkila &lt;juhapekka.heikkila@gmail.com&gt;<br=
>
<b>Subject:</b>&nbsp;[PATCH] drm/i915/display: handle return value in intel=
_sdvo_enable_hotplug<br>
</div>
<br>
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<div class=3D"PlainText" style=3D"font-size: 11pt;" dir=3D"auto">Report in =
log if intel_sdvo_enable_hotplug failed<br>
<br>
Signed-off-by: Juha-Pekka Heikkila &lt;juhapekka.heikkila@gmail.com&gt;<br>
---<br>
&nbsp;drivers/gpu/drm/i915/display/intel_sdvo.c | 6 ++++--<br>
&nbsp;1 file changed, 4 insertions(+), 2 deletions(-)<br>
<br>
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i9=
15/display/intel_sdvo.c<br>
index 87aff2754f69..99a5ef1401a8 100644<br>
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c<br>
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c<br>
@@ -2052,8 +2052,10 @@ static void intel_sdvo_enable_hotplug(struct intel_e=
ncoder *encoder)<br>
&nbsp;{<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_sdvo *intel_s=
dvo =3D to_sdvo(encoder);<br>
&nbsp;<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; intel_sdvo_write_cmd(intel_sdvo, SDVO=
_CMD_SET_ACTIVE_HOT_PLUG,<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; &amp;intel_sdvo-&gt;hotplug_active, 2);<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (!intel_sdvo_write_cmd(intel_sdvo,=
 SDVO_CMD_SET_ACTIVE_HOT_PLUG,<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &amp;intel_sdvo-&gt;hotplug_act=
ive, 2))<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; drm_warn(intel_sdvo-&gt;base.base.dev,<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &quot;Fail=
ed to enable hotplug on SDVO encoder\n&quot;);<br>
&nbsp;}<br>
&nbsp;<br>
&nbsp;static enum intel_hotplug_state<br>
--<br>
2.43.0<br>
<br>
</div>
<br>
</div>
</body>
</html>

--_000_DM3PPF208195D8D2B7E96C92B2B6CB6D9E1E33DADM3PPF208195D8D_--
