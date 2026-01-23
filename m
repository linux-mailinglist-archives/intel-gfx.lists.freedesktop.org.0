Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GP3eARRQc2ncugAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 11:40:20 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ECD074666
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 11:40:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4B7C10EA9F;
	Fri, 23 Jan 2026 10:40:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iVCI1pbi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D3E710EA9F;
 Fri, 23 Jan 2026 10:40:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769164817; x=1800700817;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vTneiDFKNMv/5UCpAmPh2WdOpxD61aIrj/LLvU5ZKq0=;
 b=iVCI1pbihYUB1FqKPULPijBcoW6iaK7omXObpySNlgDFi/qDVSSFeuaW
 Zc0kSW3Dsa4orp1MC4fvodeYGiwTcZv/1nM8NDwGYDzcEk/+L4ZqNj7Tz
 uH/Mu0Gblb5FmydnSep9Tr/1PhTv+upey84db8UxBHKAQ4zdZnEzO/oW0
 V5Lz3/c7ivuH4zICekYqITsB4BwcxF1KF++to1wGyTqD/bLiLwJAdhfvP
 7y8kQoqeBVUjgXD16T2sUeEpx/Atkzr001psbMAAF7N9HzHvgs3fWxq/A
 rQl5on5Z+E61Y+DFhaB39rFJV0QApgCKvCY8Qskdm7YTABKp0q5ElB/15 w==;
X-CSE-ConnectionGUID: GeJF6LxfRSWTivDerCErNA==
X-CSE-MsgGUID: hHQl6XVSTpCXz43SL3KKOA==
X-IronPort-AV: E=McAfee;i="6800,10657,11679"; a="73004896"
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="73004896"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 02:40:16 -0800
X-CSE-ConnectionGUID: ZIPAK28ZQS6XaXf/QtLHeA==
X-CSE-MsgGUID: J5Uiu7glTtSW+uGB1+VddA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="244606864"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 02:40:16 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 02:40:15 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 23 Jan 2026 02:40:15 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.5) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 02:40:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tJ97+eitMC9qZPhFGs7+x22quCzSBMSxIJHr2eMIWBajCodcQaQjO1EAgm0PkEHY1COHNxmub0V3ThLsjRgkCpuH51SKK05nGvydUeWN4KFOEYVsIe/RNXowwguf5yjTaPAP5Al2eYuEFAYAgBTRavgLgFcB9l90E08Nmmm4T3jhHe7lve+Cql7C9uwPmeR06RI2M9g4jOR6x+k8dG+twx0NOTuVCotrZb+BorMfRnqGfsewn4O0G6vAtbgM3PVYJCtltmdqL9Wj84moCERdXNPMDBAzPh/WhY7d4sKOO41/y50Cin7fvjuzrvEEYTPpFs7isfdTTJ2gBW2i9797FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4Jo/td1hWFHNpYIrlUnZ3K2IftkqILEXnkC2qi5F3Ts=;
 b=mFdPdicSNw0pTdQgeWahZi+LqSwAfLMb7y/K29NkiVe9dtQiQjUdLmrB5+H6V5hbyItOzodaGoBB2Z77LXXqW+MauWLiW6pX4p1kVA2O5kI9vfNxXbgXj7p78lJo0ytoXm1RcO+kOKN/COd+DwA8urLwVaUr4TDdlcBQWjm8s3bZdtxqF1zVpRKeh67t7alXgtBtSs/XT7tvYr5nkmQ3TKsaPHjTFftWgbU+NPJJapeE3MX3/KBoBmfdfhtpzp6eEnzeqf9py/8VyBSCmCS/x/xV7EH82sbuzFXYQq6OvJ7uufvXCC84rcIm9YP8lsZ/5kPNrb//0qARIqCIwoo81g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 CH3PR11MB7177.namprd11.prod.outlook.com (2603:10b6:610:153::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9542.12; Fri, 23 Jan 2026 10:40:12 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%3]) with mapi id 15.20.9542.010; Fri, 23 Jan 2026
 10:40:12 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: RE: [v2 02/19] drm/{i915, xe}: Extract South chicken registers from
 i915_reg.h to display
Thread-Topic: [v2 02/19] drm/{i915, xe}: Extract South chicken registers from
 i915_reg.h to display
Thread-Index: AQHciyrjcSXJhzwPA0yckxcAL0tuj7VeDZGAgAGFELA=
Date: Fri, 23 Jan 2026 10:40:12 +0000
Message-ID: <DM4PR11MB6360F76973F1BE9B87B123D9F494A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260121232414.707192-1-uma.shankar@intel.com>
 <20260121232414.707192-3-uma.shankar@intel.com>
 <099215c667f4e0019c9200fb5558fcadff9d04bc@intel.com>
In-Reply-To: <099215c667f4e0019c9200fb5558fcadff9d04bc@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|CH3PR11MB7177:EE_
x-ms-office365-filtering-correlation-id: a9f93969-56b2-4ec0-ef98-08de5a6bc9a6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?xHU6e1Qi+1rUtnq9PkqWFQcNQP43FyRVi6p2FzwALxNKOh3n/YNk+EpTQSA3?=
 =?us-ascii?Q?/FxbJyCQGjNPU47K/+I460VzKwy35Pi+FtVjEEZ24q0VxSy/4K9qcGSNdt+F?=
 =?us-ascii?Q?Ag3Wa8GoLyGNi/6J+TaTXfo7TzrsODnPV3eDleIkWuQCoxq37zGES0f2NCdl?=
 =?us-ascii?Q?jtNUriYjyTFTgB54xSPqq0/AeCt0hvYEXnKxV0C0FlRDxHgjFVPgdjkAZuZm?=
 =?us-ascii?Q?1af1Lt+EHa5Fp+iQCG4CG0nR+TaOaANNuz8REKjt1Q4u1TIO1vr5gTWwpF2S?=
 =?us-ascii?Q?9fC0jQlvSLKui72JlVDN5tL6w7dUjf2LXZQkfKXi5sbnysFwPfFyfLN92ZQ0?=
 =?us-ascii?Q?ANBjaBKHy/blOCtxF9sLeTi4/tZx11UmhRKKzoh1SlH1/max5wPBddzPQbCH?=
 =?us-ascii?Q?5kLudTo68x6+GLEcykh4LROJuN1IT3m67RnqqKq8QsIXZjM9flwFPxV56RMJ?=
 =?us-ascii?Q?ECND+Z2mH5JxmDS5TPF/p5IexUXbEbZQUKxW7Pql4NuWbkOU5bVFRt6pQWgS?=
 =?us-ascii?Q?7rhxtTM4VWuUUYdlt3taslidI4K2d98eZ+xuWPiWQ7zG1FpSVAjMMvfTjmj2?=
 =?us-ascii?Q?TebB/yCHe9R/CiA3Ck83ifJ/wYtBMSAe2qnSQpMNqsI5okvGfRYFssbQE7hJ?=
 =?us-ascii?Q?wa2VQDBGI+4E+LbhkCHN+QDFHSe5LtA4D6VfTeW44094altCA0G/NN+JmJge?=
 =?us-ascii?Q?6ph97sNiiQk2tZ5aIja+1d7qo1pPq2o7dpCFGDNzYWonUhX+/7PBnZVWxvpA?=
 =?us-ascii?Q?6DOW5g7uWhhfW6FHDHXpkkpdiu5NhlNE81Ku09n9g12V/IQQF6lAlhCMKITP?=
 =?us-ascii?Q?Gm+o0873PP77XrD2udhwiQYhV4IDX3ihL0P6HyNY0LY5+dirbcAmZ5ANF+cR?=
 =?us-ascii?Q?M+n/z9c3cAoXJO1SWGbcA65wb/ftb8OEdRXlbSCyVWBADuaLBB15au77AR3/?=
 =?us-ascii?Q?gZ7/oB+85Rc8TGHTA5fYhFxG4EI9SPgmLOWkBBiP35P4ZbatZzU6kC8OVKtm?=
 =?us-ascii?Q?pbEzuMk4A9s6SNh7Y8zCKhL8hYD33hArwG8kIReHPcCdIDJZMs17Wq261b22?=
 =?us-ascii?Q?7XP9hybaXvYiT1uP/6ZNCzuIpsLAysOrakqdY4foEWEICF/kThO8PJDyOmtb?=
 =?us-ascii?Q?0E3oobnVSEdsSAN+O8Ca9yCIxIiiNiJbwUZ0Th8cS8aisK3brdNNQF6lSTPT?=
 =?us-ascii?Q?Iln1PQZUdcT9jbn7K3o0gocOa2/qCYfqZZ56jcS0edLFuxZvRDErC+o9+3S8?=
 =?us-ascii?Q?0b6nBjBvGUWZhe+Bvv+1XuyC+Dyl8qiK+3LJtspx2+P8fH3D9Obld6qN8+Pv?=
 =?us-ascii?Q?Tz73KKnNYgHeI3lAQ7vZdGiA/85UfeM3+3v+CcoXmHAFD4OhpXk3hWv0lebI?=
 =?us-ascii?Q?/B0Lk9D71Xv6ZUfn9lrJ3PaDvtqA+6M4kg8hwiUWoMYzRly7xjkrm8np0sHG?=
 =?us-ascii?Q?VRDQ/Y/Cz2nPRdEpLElpd/W8CxdF5h60Hs+ib/6ygEc5MSay2yFXSpkgBIQa?=
 =?us-ascii?Q?3pTkR+D/BnYss8SBU8+kAJcVME2ylG/vk+ZoEbuPJCnekAFV7TdjUGMStYIY?=
 =?us-ascii?Q?lXWPPwCiGEjOddZl3OYpJn4iucsE6QiWoCSPzu3fWH3YX3VlubTo1kzpIoca?=
 =?us-ascii?Q?Stp1K8ufk9W02RF4PdWXw6g=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fJJ8KItdpi9pPhPqFNCSdG2RiybmCixfQgr/RMHS6AK2gnhkJoeEOLF+xNJ3?=
 =?us-ascii?Q?wjK+6vppudA6EwCNWvxMoBKjVWI6ovL/JuPT8gVk+e7fuhlp+qkRCmcvu8gR?=
 =?us-ascii?Q?cbGdAfy4xc+L9bLvMzKO7oWmB5J+oPc8NKgpYcz8WQvmIBN9q5JmQuGeFcl4?=
 =?us-ascii?Q?sNoyw66fVBm1F8NLAdaEPm9+l2hs/C/T4qopqmZR3com/80iufwHaSoon/1T?=
 =?us-ascii?Q?5WNPm8BADaXazL92FgG8j7ncWoS3FE7cUnG802E8AO1XF0T+JLgU1iEX76rS?=
 =?us-ascii?Q?7tbhU9VmLmUVkANyamQoWyIgY/uzmxaDt7fB/sO4untXlFrMxcdhCR4EZ1Se?=
 =?us-ascii?Q?kFh6KGhxTWC4I7lMf6SKkbJKjtJBN9RCoRqSjUWw9hk+JSqj5T0oOviUgqKl?=
 =?us-ascii?Q?4lpNwtkfRc7gWNIH3Z9EzdcOV6go1+TBeiAMzmKYXwDLxQPxd4cmqrn5f1Wt?=
 =?us-ascii?Q?Ne8XbAMvvwD1n95X9wG6NJcLGSt4Xvf3HS/t/yy/a+OruxpQFdAk0j+DxFro?=
 =?us-ascii?Q?Wpps3LBE2KYq56wWpUCdmLjmjqYHSDkBHY13dwfLdTlVH6poC8GTzRTogQRB?=
 =?us-ascii?Q?MDPRmlb4Luyk8b6mY7T4CydXuc43YpViwsPX8W6kCNJtGLLCw/EJBbJpesyd?=
 =?us-ascii?Q?oa1iiVhIrcgTC8Peud5mKlnKw1+VbEUOz+9vVdAwobAts7nMcsxkKplsQDJb?=
 =?us-ascii?Q?CfljTmp7eBiilQCZ5cGXjrguhKi0RaJ4aEcl+FzsnF4QRB5XWrt+F8lEQVOb?=
 =?us-ascii?Q?g80ybJbW9qHN45G+kFg+4/a/7U7tTFAEpEHqrgMQusk7JpeMBffhWJZMhxTa?=
 =?us-ascii?Q?KYc9B8jYmz6FeHMdDjxpTvdvVisME8umNAfFjGYmFK6iFFVXpx+UWHIBZaYb?=
 =?us-ascii?Q?6P6FEJaUZ6Yh95rAQnABkLXJBhQLbeHfsQV2uH6xuaxSwGalSheIUIYVMV3n?=
 =?us-ascii?Q?cO1twhN1HBqMn7gxo9XrMBq4bVrUOBoIzMtFsAJgWA2PgnddEqHsfOcx0fGW?=
 =?us-ascii?Q?oV3LErGdba3U5cBLxTRC2/UJqW/JIyD+Kbto1BRDNByKmhWmV03q4B0pDW8y?=
 =?us-ascii?Q?0ree7ZgfGTS8HuJUXeceEMxoUN0rj8eNTJuy//yympKaFwmVQy9lyQhZmmfU?=
 =?us-ascii?Q?HnpLrdJaWBO3QFJUgkRYPj7HLTK3RqRDAz/ITw0jiQKgqIiIhZqV2ZF4wK+M?=
 =?us-ascii?Q?LQRLKsni0Df529gznhrVoEmSbnurP6j0AyPN1OKMDyMFC1gLMFpi3eiS02Fy?=
 =?us-ascii?Q?1DkNUYHkBfc01Ft8OU2/pRZvGspEghbXIiM19yDJe4g6jBpVevF8U/vgCRMY?=
 =?us-ascii?Q?MpAGu/b9mJrh2fh+msSJPcMKqlNCbNhnU5iYj40/moEJunwTJlunGiELW7Yk?=
 =?us-ascii?Q?QDAI+vZ7n7kNbsb+RuJISYW7GLBO4ZnQiRuRPacBP0uZf65Apz5jdWT3MWUo?=
 =?us-ascii?Q?eFyaxLHsReSUt77de6bVNr6SVTQBjxo57ionGZTI9IarBBAkH2ljppufzI86?=
 =?us-ascii?Q?RaQf25CAp9pMkLwIEGBNNt82PZNQFCStP/0nZXAjAWlRwunmjn9bgBvynNPP?=
 =?us-ascii?Q?aN2XidzlZqQjfnwCGpsRRBQrKWo7HZ8VRopY60LFp2gL7Pac6J/iiJc6su9v?=
 =?us-ascii?Q?paUVN9siiisL1+D3e87vLtrdPBA6pTfb/vn2kzg/ItpBizIWjagCGVe5MNHY?=
 =?us-ascii?Q?fCv2jI8Lhlgenysi8Rq+cxTi9VgGNZx1SdcE+pip7elaiBmMmCe9Gd4mMTuy?=
 =?us-ascii?Q?rsM7kSJp0Q=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a9f93969-56b2-4ec0-ef98-08de5a6bc9a6
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jan 2026 10:40:12.4221 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OtEkikQ2hh778ZxQNUZt7I/dcjvx4+WSegRDnqJeCYG7fpLNogxuxQ08ueOsBuMjIH9Zx0lsUVANxHCZl2h1Gg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7177
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
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,lists.freedesktop.org:email];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.991];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 5ECD074666
X-Rspamd-Action: no action



> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Thursday, January 22, 2026 4:56 PM
> To: Shankar, Uma <uma.shankar@intel.com>; intel-gfx@lists.freedesktop.org=
;
> intel-xe@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; Shankar, Uma <uma.shankar@intel.com>
> Subject: Re: [v2 02/19] drm/{i915, xe}: Extract South chicken registers f=
rom
> i915_reg.h to display
>=20
> On Thu, 22 Jan 2026, Uma Shankar <uma.shankar@intel.com> wrote:
> > Extract South Chicken registers from i915_reg.h to display header.
> > This allows intel_pch_refclk.c not to include i915_reg.h
> >
> > v2: Drop common header in include and use display_regs.h (Jani)
> >
> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
>=20
> Just drm/i915 is sufficient as subject prefix.
>=20
> It's mildly annoying that there's a bunch of whitespace changes bundled i=
n here.
> They should be kept separate, if only to speed up review by 10x with 'git=
 show --
> color-moved' which works wonders for pure code movement. Subsequent separ=
ate
> whitespace changes, in turn, are a breeze to review with 'git show -w'.

Noted Jani, will take care of it next time.

Regards,
Uma Shankar

> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
>=20
> > ---
> >  .../gpu/drm/i915/display/intel_display_regs.h | 28 +++++++++++++++++++
> >  .../gpu/drm/i915/display/intel_pch_refclk.c   |  1 -
> >  drivers/gpu/drm/i915/i915_reg.h               | 27 ------------------
> >  3 files changed, 28 insertions(+), 28 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h
> > b/drivers/gpu/drm/i915/display/intel_display_regs.h
> > index 9f8fbfb2e115..4759a9600d3f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> > @@ -2864,6 +2864,34 @@ enum skl_power_gate {
> >  #define  SFUSE_STRAP_DDIC_DETECTED	(1 << 1)
> >  #define  SFUSE_STRAP_DDID_DETECTED	(1 << 0)
> >
> > +#define SOUTH_CHICKEN1			_MMIO(0xc2000)
> > +#define  FDIA_PHASE_SYNC_SHIFT_OVR	19
> > +#define  FDIA_PHASE_SYNC_SHIFT_EN	18
> > +#define  INVERT_DDIE_HPD		REG_BIT(28)
> > +#define  INVERT_DDID_HPD_MTP		REG_BIT(27)
> > +#define  INVERT_TC4_HPD			REG_BIT(26)
> > +#define  INVERT_TC3_HPD			REG_BIT(25)
> > +#define  INVERT_TC2_HPD			REG_BIT(24)
> > +#define  INVERT_TC1_HPD			REG_BIT(23)
> > +#define  INVERT_DDID_HPD		(1 << 18)
> > +#define  INVERT_DDIC_HPD		(1 << 17)
> > +#define  INVERT_DDIB_HPD                (1 << 16)
> > +#define  INVERT_DDIA_HPD                (1 << 15)
> > +#define  FDI_PHASE_SYNC_OVR(pipe)	(1 <<
> (FDIA_PHASE_SYNC_SHIFT_OVR - ((pipe) * 2)))
> > +#define  FDI_PHASE_SYNC_EN(pipe)	(1 <<
> (FDIA_PHASE_SYNC_SHIFT_EN - ((pipe) * 2)))
> > +#define  FDI_BC_BIFURCATION_SELECT	(1 << 12)
> > +#define  CHASSIS_CLK_REQ_DURATION_MASK	(0xf << 8)
> > +#define  CHASSIS_CLK_REQ_DURATION(x)	((x) << 8)
> > +#define  SBCLK_RUN_REFCLK_DIS		(1 << 7)
> > +#define  ICP_SECOND_PPS_IO_SELECT	REG_BIT(2)
> > +#define  SPT_PWM_GRANULARITY		(1 << 0)
> > +
> > +#define SOUTH_CHICKEN2			_MMIO(0xc2004)
> > +#define  FDI_MPHY_IOSFSB_RESET_STATUS	(1 << 13)
> > +#define  FDI_MPHY_IOSFSB_RESET_CTL	(1 << 12)
> > +#define  LPT_PWM_GRANULARITY		(1 << 5)
> > +#define  DPLS_EDP_PPS_FIX_DIS		(1 << 0)
> > +
> >  /* Gen4+ Timestamp and Pipe Frame time stamp registers */
> >  #define GEN4_TIMESTAMP		_MMIO(0x2358)
> >  #define ILK_TIMESTAMP_HI	_MMIO(0x70070)
> > diff --git a/drivers/gpu/drm/i915/display/intel_pch_refclk.c
> > b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
> > index 9a89bb6dcf65..5f88663ef5e8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_pch_refclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
> > @@ -5,7 +5,6 @@
> >
> >  #include <drm/drm_print.h>
> >
> > -#include "i915_reg.h"
> >  #include "intel_de.h"
> >  #include "intel_display_regs.h"
> >  #include "intel_display_types.h"
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h
> > b/drivers/gpu/drm/i915/i915_reg.h index d247e107f42f..80ea0df40b1e
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -1022,33 +1022,6 @@
> >  #define   TRANS_CHICKEN1_HDMIUNIT_GC_DISABLE	REG_BIT(10)
> >  #define   TRANS_CHICKEN1_DP0UNIT_GC_DISABLE	REG_BIT(4)
> >
> > -#define SOUTH_CHICKEN1		_MMIO(0xc2000)
> > -#define  FDIA_PHASE_SYNC_SHIFT_OVR	19
> > -#define  FDIA_PHASE_SYNC_SHIFT_EN	18
> > -#define  INVERT_DDIE_HPD			REG_BIT(28)
> > -#define  INVERT_DDID_HPD_MTP			REG_BIT(27)
> > -#define  INVERT_TC4_HPD				REG_BIT(26)
> > -#define  INVERT_TC3_HPD				REG_BIT(25)
> > -#define  INVERT_TC2_HPD				REG_BIT(24)
> > -#define  INVERT_TC1_HPD				REG_BIT(23)
> > -#define  INVERT_DDID_HPD			(1 << 18)
> > -#define  INVERT_DDIC_HPD			(1 << 17)
> > -#define  INVERT_DDIB_HPD			(1 << 16)
> > -#define  INVERT_DDIA_HPD			(1 << 15)
> > -#define  FDI_PHASE_SYNC_OVR(pipe) (1 <<
> (FDIA_PHASE_SYNC_SHIFT_OVR -
> > ((pipe) * 2))) -#define  FDI_PHASE_SYNC_EN(pipe) (1 <<
> (FDIA_PHASE_SYNC_SHIFT_EN - ((pipe) * 2)))
> > -#define  FDI_BC_BIFURCATION_SELECT	(1 << 12)
> > -#define  CHASSIS_CLK_REQ_DURATION_MASK	(0xf << 8)
> > -#define  CHASSIS_CLK_REQ_DURATION(x)	((x) << 8)
> > -#define  SBCLK_RUN_REFCLK_DIS		(1 << 7)
> > -#define  ICP_SECOND_PPS_IO_SELECT	REG_BIT(2)
> > -#define  SPT_PWM_GRANULARITY		(1 << 0)
> > -#define SOUTH_CHICKEN2		_MMIO(0xc2004)
> > -#define  FDI_MPHY_IOSFSB_RESET_STATUS	(1 << 13)
> > -#define  FDI_MPHY_IOSFSB_RESET_CTL	(1 << 12)
> > -#define  LPT_PWM_GRANULARITY		(1 << 5)
> > -#define  DPLS_EDP_PPS_FIX_DIS		(1 << 0)
> > -
> >  #define SOUTH_DSPCLK_GATE_D	_MMIO(0xc2020)
> >  #define  PCH_GMBUSUNIT_CLOCK_GATE_DISABLE (1 << 31)  #define
> > PCH_DPLUNIT_CLOCK_GATE_DISABLE (1 << 30)
>=20
> --
> Jani Nikula, Intel
