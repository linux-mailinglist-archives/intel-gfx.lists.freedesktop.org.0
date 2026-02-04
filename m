Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MHCjID9hg2nAmAMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Feb 2026 16:09:51 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1201E8086
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Feb 2026 16:09:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1494710E67F;
	Wed,  4 Feb 2026 15:09:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nSqDCdDz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9C9C10E67F
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Feb 2026 15:09:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770217788; x=1801753788;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3JlKraiXpm1cXkfVsDjAihM5YjbtH+JTzlYZoqirysc=;
 b=nSqDCdDzXt4FtF8vNDUjaYDb/UK5ga7fXvnIt7eHpQQyB4WvTe8UERPn
 zvJkFYvATg659pl8pdATvoGnU0fCrW9pYCeQoDVHsWaVTOmI9YSF3rRRo
 E0KMgvKQBTzpoMrSawbvXbIV1rMegP5HrRldAy17bvMiR+axtQUAR0fr3
 zphCcG+d8iBZPOR5r5GoK8WgcRj67Doe7akxqZZWcZKurHm+/rNm+mToi
 Y0R3gI6OIcHoAjbj/2a/q3LcH//YZVYLM76ENbEU4apSYUli65bMrP3Bb
 s2X09xGTZhGCelgR6S6Hj01XmVsRvXpz06HD7FobRsThuXzDfRNKvvQHU g==;
X-CSE-ConnectionGUID: VjLsZubMT5i+Dqpx2sqKCw==
X-CSE-MsgGUID: WBvrN68cS8SEfdVgcNKeXw==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="81721275"
X-IronPort-AV: E=Sophos;i="6.21,272,1763452800"; d="scan'208";a="81721275"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2026 07:09:47 -0800
X-CSE-ConnectionGUID: pqT8tgkJTPCGPjo+vSZCcw==
X-CSE-MsgGUID: wOoVz6j8RCacRgxIrsSGew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,272,1763452800"; d="scan'208";a="209766495"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2026 07:09:46 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 4 Feb 2026 07:09:46 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 4 Feb 2026 07:09:46 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.39) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 4 Feb 2026 07:09:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gcVb/pQG1rt//s8U4zb6mieurwS8+WA/JDa8jhiH3nTA3P3V+id6W+JSVrH+6RJ3uJlXyEVCBz9XS1AGDkU6surHKaj1+YJkZT1eGDUCV8G4lbsbsEggxnrbhKoouvB+gNd4R44momZDxlw2EikuFFyDCf79CKV3sYpM98Z3qEfUPXX3chTkikmzcou63RsaQ+MbL+Sy920BzqFlK1izxJa3njnDQgjw+Okp+jhhXyG2r8iv2Zq7QADwDvbbYFNTSkpdNxeJk6bkYNdoRDRRWuWMdvnqBwstNsPCiksn1UUN+Id4cfm3pGPJfbgFX8zQfoH+/HNfPv88Q1HMh4uqZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2xrSExgeTM2hmN0lyHbPWHhjq30QBr+cBT3EEXrAeFs=;
 b=I6Aodfl0uQJXASmmlWiD3YZj4WQ/wVnAGzs+Mm3kL2lbX+2DTp5SwlXrYy1VDlPWDOphTcMLRShTz8L5y/T3NGaetfXyKT3aHa3yLu0fUvXCJIsI/KajNj4k5LEvkG106BfT4fcFkX2cekmiAZ6mZMRK8+R49Nh7w1E3nABrS3Kuiez4yrQFaSICVz4EUvSoe4jPrCmO94kkJyom2awhNyQvk9YgZQAZbemCJy13xuuBvsPiKFt9wKBa9qYIoL3kWLo3TWQvnuZjoaWtqHneMFSyaOWQzpHprqFdH6Rj1zFxgP1cJEJqZ7MtTN2dwQzLjT59UMi/sOJX4sCWhzpGVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by SN7PR11MB6946.namprd11.prod.outlook.com (2603:10b6:806:2a9::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.13; Wed, 4 Feb
 2026 15:09:40 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5081:cd4:1a4b:a73e]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5081:cd4:1a4b:a73e%5]) with mapi id 15.20.9564.016; Wed, 4 Feb 2026
 15:09:40 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Gupta, Saurabhg" <saurabhg.gupta@intel.com>, "Zuo, Alex"
 <alex.zuo@intel.com>, "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH] drm/i915/gvt: No need for extra op check
Thread-Topic: [PATCH] drm/i915/gvt: No need for extra op check
Thread-Index: AQHclV2bxPqsdE2sXkSkPhYPsaEnwrVyUWqAgABT65A=
Date: Wed, 4 Feb 2026 15:09:40 +0000
Message-ID: <CH0PR11MB5444E01277ED38362EC2B06AE598A@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20260203223642.7052-2-jonathan.cavitt@intel.com>
 <082f48353e0dd9aa62a0bf10c0c95094f8702296@intel.com>
In-Reply-To: <082f48353e0dd9aa62a0bf10c0c95094f8702296@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|SN7PR11MB6946:EE_
x-ms-office365-filtering-correlation-id: 8ad0ec37-b609-4350-9065-08de63ff6b8b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|10070799003|376014|366016|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?3edr4Y1nQsvsBZUaBpKEDKKhlbXPWvEEM4WUOGKqHE7G7H4kn4R05AdDSS6x?=
 =?us-ascii?Q?Uat+PAqPyQs6Gy4K9QlEbVI70ZcuDLsZLJLkxMagBT4khG+Hx+YrmIAHp08c?=
 =?us-ascii?Q?KZ6TGW6qDJwVviVjUTKz7f9sIpAAQo5hWIHYwyk9rCml52+3hgFkOInB2K6a?=
 =?us-ascii?Q?20Zhk+atO4N433cSZe2A1duh3+RTXdJmZY8rURTdIPka8HXC58R4ZBYHZ5uW?=
 =?us-ascii?Q?xzA5CjTeXSmD1Vjy+SjSKu8g2Kn9fjrHsTiWq/EyDXxU2Ai+8XX3URkg6WTA?=
 =?us-ascii?Q?Zd7n52zCs3fYI9kHODlMsN4N00a1ZY7lC6Zil3tuk/yKKtKjsQtWi8y2W68L?=
 =?us-ascii?Q?33iwJx7ykxs8V3/OgYqLC4uvTNtTdc2u2T9v9nPbzfxhib7rkorXiUZ9zM6C?=
 =?us-ascii?Q?StMWlkt8aEDY3IiG20pz6Jn2tVMGh/qHxjAh4Rh0h0Pq+ZSqckJ6yI2Zc0G6?=
 =?us-ascii?Q?xbud6tczb5eQ8uUl8eLAfXBz1Dcl5oN3OgzzxmObwj+9CQATYzox94EkG9Rs?=
 =?us-ascii?Q?EfXkWSHvtEbO8jEfu8a/i/7uQe9DNrTxH5M54aPVoqbJGpZs7b3APdlpTk0L?=
 =?us-ascii?Q?aZmEf8JOP7sT0fGTdM5EuAiRDfdkxr8J3nHPla/S9MUW6RJGY01h1lHz8TF/?=
 =?us-ascii?Q?Vbn2DBDs5B++lLGsMFu3ChKTvowAC7uKLrTHGXCiWSPqSxmadfxfYKj7WBZS?=
 =?us-ascii?Q?UaIZZ2w0LcXmu77VkTyQdDkBYdA+6GFzzawTxHaBqufMfN7oASnNASF2wZ5S?=
 =?us-ascii?Q?GlqZypLzkqzjezGwIBTbDzeO315GzD+xbT9Wo/4U3epyMh6Xuyargwcpie8i?=
 =?us-ascii?Q?lxtCXl7aCPUZKbhg7eUlj6Q5jrVELmo95FUqmJgnJMs1MECV6cR8xw2a8vNX?=
 =?us-ascii?Q?0nSe6tH2TeTS4wxHVBJ6IpIYxeSXCdkn16SoQNTPHXUWWmiHbuFuB/8NNhKS?=
 =?us-ascii?Q?fp7+ywJRSci1Vva6zONYPKaK9X2nUOq6mRDQxpiiD/LqP6OyxbyjfhNVnY9o?=
 =?us-ascii?Q?swK/m6qDotYctXD0Zl3QKZolhBLqoO9t849XKbqwv+Gqyk6Hi1kxOF98Gmxd?=
 =?us-ascii?Q?LEPZPprwnM3+aSdVpphlAKTtbky4nuQ82Z2iqSq3uj0GhvQSHB+4ebT4GgrH?=
 =?us-ascii?Q?azxTzUrCeT2UYWiG9ZjBvnLwMUsnZyA3lpQ1fdaL3TE0J60okkPz4WclXeuv?=
 =?us-ascii?Q?RM9PGI6XlLLwbTEzzb92y1MTPGw2WjIJk9W+bSm+dZRW1GQU6jWeq3EiPOdh?=
 =?us-ascii?Q?JcGey1tDpmeG3Q0MfLk33rj5nEJwGdArJgp2lHN1c9wYM18Bx626G+alJAR5?=
 =?us-ascii?Q?t+SzkCSFeMIRotasIojyFTTug2MX7OcuCVvHsVPJVBIsAf/7BR20CNPXLGXk?=
 =?us-ascii?Q?ebvUt6Tnk6pItKZZoyuFz7J+Sn3QH2s2s1ea0na4kolN5UZpHrma06PqCkCb?=
 =?us-ascii?Q?o251vnrUyeHG92xuk1cMIAl8CY7z9ftWlNysqIN4nyUbAySPGXKJJelu+Ux8?=
 =?us-ascii?Q?xE56aEq/j53RrQuYWd+sL21wHxB2BK+T776pvpr93w19pbPH/tBsJvvXDGZj?=
 =?us-ascii?Q?+8rUzXDG8lFVsTeuYsVzQ79Vv9Sh+woxkehEkVLiMO4+mGOHJ7d3wSXmzKLo?=
 =?us-ascii?Q?4+SVUHeT8l1GE+BB1ChW7ws=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(10070799003)(376014)(366016)(38070700021)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dtFLcf/S1VqgjsCwpTNjBJxB1Nr+WFM+8brcCn1LTNygAbGTWid97W2f/Mjo?=
 =?us-ascii?Q?RAhCNa3jbeXzjIqKb/tC/Fxk1oWKCs2gLfsjE1xp6E2fCyAnQtgoOdyl2iIq?=
 =?us-ascii?Q?QS0Q9xE2ryxUH2sp/EC1NNRyyOx5Ea/594u/KtSAfumT3DNTs31cdi6ujf0Z?=
 =?us-ascii?Q?rf9YmHQud24uQ+3RZULgChscLd7dsN5j7mwMjrwoHLpCtoRlfeV+F6p+btOx?=
 =?us-ascii?Q?bRIzl1m8utpBhUN+RwTdn5KhgGfiTvHSX3zvarCvuVYlPYNTeFAh9AWua45/?=
 =?us-ascii?Q?+TnRMy/n9SOpFYU84fcKKKQ3c8TDK9C36lxWYm/QyM34X5udbN0LHfaeySKk?=
 =?us-ascii?Q?f9w0mOvXvHHrxnP/as7hM1NLr3dRuVBypu+RzR8xQ8g2Xox0UrubMMOrYjUo?=
 =?us-ascii?Q?g+YZfwbpKESX2PLzcIlRA9f8dMXFFexMSmB73Ztyb27pAYY8kdgwkrbDzr5+?=
 =?us-ascii?Q?/0N3Z9ZENAoGNplJLcSyspKOpqARtMhdm3f97Rk6fXv3H/ZQHMs7q/ZtW9Uc?=
 =?us-ascii?Q?qIOFRG9cZbxoan9FwuQEwnGURnetLBmuQKqc7f6pVbHCJFTyDBj5bfCAQmBw?=
 =?us-ascii?Q?6Puo0z2PyXGElg2EmrmPDyvNNnaJvXj1LDaTtNbPnp7ScSfXwkxe45WC0HKs?=
 =?us-ascii?Q?5IZEX2pcLx8nXsQAw24q2R5E8ryoQ/E0Wg8fFUF5wn8YEivE7zSIRvx2F5UJ?=
 =?us-ascii?Q?kGLR4vSQiTieL7OXjlQ8i00/s+VI5SGsAhPWPyD5HT9I/93z7qYdZ2zwR1Bf?=
 =?us-ascii?Q?pjkGGAkmFuUre3HJSQ7NsSAbFN2lcsj4hR01QEtxsdrOA/e0lHtDRkItcEOf?=
 =?us-ascii?Q?3UEKirEBtGU8MhypD+JPO8CWlMmtWmFAwO8BM38TlPb0bmISnK9/Ua0AfpGY?=
 =?us-ascii?Q?lerjA7dyICVVvcMwPnRqDKbB9QUZRWVfuRqDhAErF0uJbTDblbWtHmgoNnS1?=
 =?us-ascii?Q?6un2wNPE/S/S4ZaXXS8f1zDk+2AJsSxPEi6FdQKaIZGCzD6kyiO2uYkt2WpL?=
 =?us-ascii?Q?cggN/WarI3kvLgXwHO87OBenbKHoAf/O53qtFc5gHbfFeHr0pr8+noyP1Rbf?=
 =?us-ascii?Q?Ok1rMsG8vdlrzVU19S3uqicnsRjph3drgpzWVAGp34okP2bCNJBZDpltvm0u?=
 =?us-ascii?Q?sg9+vj4sGXh/gxV3KS5YmooBt7BQO00Tt0oXsaXly1BxKljWOQCa3FVT7Vzq?=
 =?us-ascii?Q?7Ur5gLR7KaXzIWWc5m/q1KUKGd0YOYGfpectVrJqMiISQNWpZ5ThhxRT8JJ2?=
 =?us-ascii?Q?ttprXpvOJ/HV57xI6UeHnJv0s7CpnL6Rs8NZW7VHRn8AT5zRywbPupPviHm+?=
 =?us-ascii?Q?JJ2PhujPU8wm3e4Kta61KmGZwIiZpd5lW+ij6ISm8knilv8Iy9OMrLrP/jCd?=
 =?us-ascii?Q?4nLTdklu+BgcmnWNEbPkcnzJgIXzHJfrFkIP9CHZ+WAHzsmB7Y4/72CGR3F/?=
 =?us-ascii?Q?PyIDETMIq9cLUh4nMrHZlic+Qkxw+nQr84+ljtHZg4t/v1j+uiaf9qhRgLPp?=
 =?us-ascii?Q?xpYh1rPGdmte3lLpku/EvlKWtenIt0tYhY3dXrlTT/EIiQsHC60o/9sys1FS?=
 =?us-ascii?Q?rC+G0XIbi1KYK5e/P0E2VgVA+qK9IOGr90P7bi5VLYr8Ae/umFoYF8kb4EYG?=
 =?us-ascii?Q?M40usQr3y508U3NqytN5O5Iei3EHoBsksWZ11WhQt3GOF4O55bGlInNfH2nF?=
 =?us-ascii?Q?sHCNie/Bvgigaoq+6Hl8wtD6968kcvP4PlvTpfakbP/+7IZahh1KIkA+/Xh8?=
 =?us-ascii?Q?hKCiIhH7kjW5wnQa973GGNgkKTPRKq93RW/jKyQ/Tmny6SjzUAz4bqubeXQw?=
x-ms-exchange-antispam-messagedata-1: zlQqvFmX51SS2w==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ad0ec37-b609-4350-9065-08de63ff6b8b
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Feb 2026 15:09:40.4921 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wytH+ti+7fSwdC9j8uXwhDV+DhA0ztLQlgEoKwyPQ+ttzwuei4z66H87cQoDKNFR6YUqMyu++wWG1li1NWPSrMTpnlTRRCfROFu0wcryPwM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6946
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
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@intel.com,m:saurabhg.gupta@intel.com,m:alex.zuo@intel.com,m:jonathan.cavitt@intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[jonathan.cavitt@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:email,intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,CH0PR11MB5444.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[jonathan.cavitt@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: D1201E8086
X-Rspamd-Action: no action

-----Original Message-----
From: Nikula, Jani <jani.nikula@intel.com>=20
Sent: Wednesday, February 4, 2026 2:08 AM
To: Cavitt, Jonathan <jonathan.cavitt@intel.com>; intel-gfx@lists.freedeskt=
op.org
Cc: Gupta, Saurabhg <saurabhg.gupta@intel.com>; Zuo, Alex <alex.zuo@intel.c=
om>; Cavitt, Jonathan <jonathan.cavitt@intel.com>
Subject: Re: [PATCH] drm/i915/gvt: No need for extra op check
>=20
> On Tue, 03 Feb 2026, Jonathan Cavitt <jonathan.cavitt@intel.com> wrote:
> > Static analysis issue:
> >
> > In intel_gvt_i2c_handle_aux_ch_write, we check if op & 0x1 =3D=3D 0.  I=
f it
> > does not equal zero, then it must equal one, so checking op & 0x1 =3D=
=3D 1
> > in the case it does not equal zero is unnecessary.
> >
> > Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> > Cc: Jani Nikula <jani.nikula@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gvt/edid.c | 2 --
> >  1 file changed, 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gvt/edid.c b/drivers/gpu/drm/i915/gvt=
/edid.c
> > index 021afff1cd5d..5ac7636d6c07 100644
> > --- a/drivers/gpu/drm/i915/gvt/edid.c
> > +++ b/drivers/gpu/drm/i915/gvt/edid.c
> > @@ -543,8 +543,6 @@ void intel_gvt_i2c_handle_aux_ch_write(struct intel=
_vgpu *vgpu,
> >  		 * support the gfx driver to do EDID access.
> >  		 */
>=20
> The context here is
>=20
> 	} else if ((op & 0x1) =3D=3D DP_AUX_I2C_WRITE) {
> 		/* TODO
> 		 * We only support EDID reading from I2C_over_AUX. And
> 		 * we do not expect the index mode to be used. Right now
> 		 * the WRITE operation is ignored. It is good enough to
> 		 * support the gfx driver to do EDID access.
> 		 */
> 	} else {
>=20
> and you could also toss the empty branch to the curb and check for=20
>=20
> 	} else if ((op & 0x1) =3D=3D DP_AUX_I2C_READ) {

To clarify, you are asking me to reorder the if-else tree such that the fir=
st
else-if is triggered on DP_AUX_I2C_READ, and the else case is the blank
WRITE operation?
-Jonathan Cavitt

>=20
>=20
>=20
> >  	} else {
> > -		if (drm_WARN_ON(&i915->drm, (op & 0x1) !=3D DP_AUX_I2C_READ))
> > -			return;
>=20
>=20
>=20
> >  		if (drm_WARN_ON(&i915->drm, msg_length !=3D 4))
> >  			return;
> >  		if (i2c_edid->edid_available && i2c_edid->target_selected) {
>=20
> --=20
> Jani Nikula, Intel
>=20
