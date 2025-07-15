Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43E39B0518B
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jul 2025 08:11:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2A8510E50D;
	Tue, 15 Jul 2025 06:11:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d9h7YXZc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D79F210E50A;
 Tue, 15 Jul 2025 06:11:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752559913; x=1784095913;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=D/+Gtr0tLuVJcnnMofvYQLN+3RbTBDnofBqMbchMgwI=;
 b=d9h7YXZc7WIfWEBOAyQU2VzC49taUWBN5cQZIUB+l4pGyzQSft/FMTAU
 xOBqJe6RJaY5balrslUQpeSajUf05RBp2nSyQjo4b/G31wolbUaD3z5hR
 bvBaPsr2Wz7wF8UB+YYbnRldl8cCcBE7TOie01olTNoSqr9hqV2lzeh+N
 CbPFTomhu+XMi7fkpZmj5wS1cSz8mXd+h+EZInvttsV1LNp9gdxVh+2i7
 SeikBduIA0Odg7QjQMaVdzBclx4I3+YhlTo0ZAu0oLTrmUGOOYM0Xcv54
 JgwqECYZTcG4p0lrD8eMCMLFaoF5nB94x5dEch32ws41HrCLepAI7NjMI A==;
X-CSE-ConnectionGUID: 5M9VK08HQmuERXFSDhWO4g==
X-CSE-MsgGUID: Ptzy5UlDQsqZJ+azU2A6xg==
X-IronPort-AV: E=McAfee;i="6800,10657,11491"; a="80210659"
X-IronPort-AV: E=Sophos;i="6.16,313,1744095600"; d="scan'208";a="80210659"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2025 23:11:52 -0700
X-CSE-ConnectionGUID: fWfM94+QReqe65AT0qdNpw==
X-CSE-MsgGUID: bDJqdkyYSM+/YOOZyzbGIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,312,1744095600"; d="scan'208";a="157227096"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2025 23:11:52 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 14 Jul 2025 23:11:48 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 14 Jul 2025 23:11:48 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.43) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 14 Jul 2025 23:11:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xvOXCR4QXyEPixRujHNULxD1IG9Ps5C9H8kQ4vHNUjCI6s2GdnnQpBkV/5YpIZSumAY6i5lefeOCAjdTQ+VDJXEXuJv5CL711eGpByyk3Mj2ynYNPeu8FtMouohr71YmJjynXkTJfQg0g1uK/m8LI79ZstJF3nxf6f1k6zv0tuBnKUeIlvMFwrrGOEfMuGQoe6tswq2ILV8xDmo0NonFb7mItiE58EQ3fcSgJYPKzPxl5241nJbk23crARZl/8Ovz4cj0Aq7yWGyTwTv+Y4k4AbanJ5oBEx0CHJjimPL8dOTALe/GbtOaUgJnZeFh41Fz6Pj4Cwv9isj9XTx3PcWAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uhUT2cv7Kr8Zz1F/M0imxBko+NvuODAfWLOcPtybtj8=;
 b=yz/rCM2YKPPyRY1+IW+gXBMjJYR0qrce4FXQomct50EUwCBAtaGtAersNsGEdpwwc6PIMYaEPE6ujwvDhDiRhCcJEHoYWH/PHlUuQQd+NlX+lm9fH/nCt6TwumFtWmpbhvDD2qfO7+yDLuuWPrfNtDF/s3bZOcctFNr5jmwGc4PD00Zd6JfFqq9tmKLawWfD2r0g8uh9eC7m0UixAjC+5E5j84qJbPAWj4AidK5QrZCj0eqdKP8Kfi2B4vZ0oy8a0F0q5DqEl789TaByf4ZBjuMLrga3yISmo+Yc6CRwxIRBd8b8LACTPxcmGoPT2ivAD9Cnxqm9oSlTqYSQ8i5UTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by DS0PR11MB6520.namprd11.prod.outlook.com (2603:10b6:8:d0::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.19; Tue, 15 Jul
 2025 06:11:42 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%5]) with mapi id 15.20.8857.020; Tue, 15 Jul 2025
 06:11:42 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "Sousa, Gustavo"
 <gustavo.sousa@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Roper,
 Matthew D" <matthew.d.roper@intel.com>, "Bhadane, Dnyaneshwar"
 <dnyaneshwar.bhadane@intel.com>, Dibin Moolakadan Subrahmanian
 <dibin.moolakadan.subrahmanian@intel.com>
Subject: RE: [PATCH] drm/i915/display: Add power well mapping for WCL
Thread-Topic: [PATCH] drm/i915/display: Add power well mapping for WCL
Thread-Index: AQHb9IOoR1hS/FCnYECF8+D7w7CCkrQxuRkAgABPMwCAABC2AIAAm02A
Date: Tue, 15 Jul 2025 06:11:41 +0000
Message-ID: <SJ1PR11MB6129CDD29CB5D1C9B38C0CA4B957A@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20250714055344.3825881-1-chaitanya.kumar.borah@intel.com>
 <175250567065.1809.3544809721458903787@intel.com>
 <175252267874.1809.10923766878963295870@intel.com>
 <aHVtuhwmBdXt3hfd@ideak-desk>
In-Reply-To: <aHVtuhwmBdXt3hfd@ideak-desk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|DS0PR11MB6520:EE_
x-ms-office365-filtering-correlation-id: e4b2c257-e70b-4480-88b8-08ddc36677c3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?VmihUgCzyv/S+4CBuKYTuswZvWUjW38hKi8upbQbnl4MZQTPVQ0zGH1+8sbx?=
 =?us-ascii?Q?ztk1gLesrUZ5Asgn7I1gBD/Bi17cggxr4Jo/WLyST64BCHFwUWMImXYcXIu/?=
 =?us-ascii?Q?vkFgLxD8K/f17l6z94n4e6anoILzPmL2ZGXDvmozhIYWfWwPNlhLHiMwvf3r?=
 =?us-ascii?Q?ri1De6wyMzJSf7kIGCoMO7XcGujgWq9iQ5XCHUxsOYzs2FgbVELbf3roZTku?=
 =?us-ascii?Q?zk7L2i0m6sv8xuskoEl4RWBEewaXKN5SIwW1k+fmBpZoT7iAIhYNJ5ShYQj9?=
 =?us-ascii?Q?HxF460bRBJqgmQocXx02LlIQcZoEdFSequ7EKWhuRYEGTH7y34beyTCbkD31?=
 =?us-ascii?Q?GTcVziFHJ34m2Kx7PJTg9pxE+mRpEVNRR0UbpyBs7uRPG/K9ytTYEf8YFQcg?=
 =?us-ascii?Q?zCj/8nlZgOXqOzVLImjCgbktugrzicvy2YhKVkfPoMkHaIPtPFuFR4eLP3bc?=
 =?us-ascii?Q?k6fWGos1UzLTf4zZgZfEJHmg2YMkwSqT32sO2bGu9Amreqf0OXXGHll1RGsS?=
 =?us-ascii?Q?kpzlSQV3KHli3yYKWzKXtpfsMkQBocNMUaTzhcfL2gSzZ8estYEiGfYYrcPt?=
 =?us-ascii?Q?eVXVto0ahvZst4zhpYjigKSH4709wwgx6tj7NqfTiDvB5bFsFaOBdvqE2UVK?=
 =?us-ascii?Q?NH17H1OoPvAPi1kuvBQ5beesZoX+0+890ns1IGk7qoMknbCPv17vZYbszZSW?=
 =?us-ascii?Q?fAXKTqURg/t15quaQ4g/QLGRu4Wpb+HwuydDaNKhn3D+O5bORiLYYlF9u1qp?=
 =?us-ascii?Q?/HZUtU8/YGtBv9xr1KbrhdK6KCFchHxd4rnNgBd5B90QE6rDupi2uzLIlqJG?=
 =?us-ascii?Q?00QwXOb2FWM7oKxEp9LEjYOMhi2E0qdvQ7gjwj9ajPf50thm/McOGd0em9Et?=
 =?us-ascii?Q?umYTItWF6g5VNEissDVcmcrs1tPdP//VUAWq1TjjvDGAG3jzbeVnTLUb2P8W?=
 =?us-ascii?Q?rafuoDcPNGn85UNeuR0iPTP4kKp+h4XOzxMIzkBb7KsJ3We4tHaEnTnZLgYP?=
 =?us-ascii?Q?5bxSMCygBahYRTGQ93juQawsPqqZfB0GQGmo+PW2Ypzp7dnbg7TUJg0IDuOA?=
 =?us-ascii?Q?NqKnVDJOAsM5irIAGHPoKlefW+AzuviGPH4KyfUJyqvroGNB2YQRCA93j+Jd?=
 =?us-ascii?Q?+AWywW75QXPB93jBN+XzBWu81mYSVroGpz1wC35m4lh2n+jZR7X+q5KLkndr?=
 =?us-ascii?Q?fqlIBW9CRikpP91zE8GnEciDMJ7OqJmuDxTEekCg9sNLRR+vFNID7V76kMLu?=
 =?us-ascii?Q?d/QfLpJR/e/VBLIAfITkR9Do/szWPasXzNU7dhbisBi1cReCajr7OWRdrtn4?=
 =?us-ascii?Q?GdLoSCdRGEfKrJicFMEIGyRMiufTNokaiMCS76gyFXHkEOsk9Kpd5RejfxCh?=
 =?us-ascii?Q?C2n9vFN89t+LbcCUQJ029hnTW+Hc5v1JMySniqj0WLhS8F2AiLK1oOpINJMD?=
 =?us-ascii?Q?VdKpqOfCK5Cu9L/rcwgqgpVlf/hQGucAcGRs5No/Lmp9c4AbiG7P4x1zZYyQ?=
 =?us-ascii?Q?OBVb8aZ4UZ1Tn+8=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Ij+knAUdsO1PnKKrPzYVlV/jUmq3FkHWaHf0UxLz2hZw69tGlW8LN2qAd+Ex?=
 =?us-ascii?Q?EXsY21Qu/tmloAVbKhoZ7WY3FtvrRKtXrzHxkWhJ7NkHlyueZsj1UgH9cC7b?=
 =?us-ascii?Q?PGCQr/Z9maK0aWHguoMhOZaLNAAxlGOh5dg3sVp8kydANftDrhg70huHLTS0?=
 =?us-ascii?Q?17AR6dk6fy9wIguXmlIwF/67WDfdM319FkJBJW3jPbj7EXrz0Nvg80VHkrNm?=
 =?us-ascii?Q?S7crDL6sHHEllixF8h2cCkEtEN0PqmFfZ4dJATEnhgYc8Ef8VV4Rv3mEge0r?=
 =?us-ascii?Q?JTBFKDUZtOFkgFG4bxX6mJuOtJxqPNhOcX7OSj4cBn1f4GOh6MAyihRKT5ZN?=
 =?us-ascii?Q?Qnv4tXIXAxwQW5EiES85/Ff+9f5RxB5j1MEoWDLS4j9t1U+Xox1Wu0Pl/Jxf?=
 =?us-ascii?Q?QVkN3Wpt8k1K6dfnhtGEdS1DaALJuA0pESgrJIplTvn92LfAsULu2W8/Yjvu?=
 =?us-ascii?Q?e/gJhO9xDTf6BkzaKdYvZXsnziNukYsA/ILhDqtSy8zB9c3y5Ww3btIWTVSn?=
 =?us-ascii?Q?fbBGW4f1XA+nED9T/+Iax2YpZd3ILcbmQGfcsx4PLqM1AzKlaTRAJD7dHcsY?=
 =?us-ascii?Q?Y1OtDLU4sY4eSwTF5Vufn1K3Zp/ZBwZBgLkgPMf3UqJvlg8IVUCJzQcEviLL?=
 =?us-ascii?Q?bHIeWwqB7LMK0nrXpZzixZZlz7DV8GhCYBRSgyYCmQGF/3k6w2y5Jyw17LwD?=
 =?us-ascii?Q?kGpznXFQ9x+VCdE8x5KXU23JkJ9paKSJ4BEGd7HnujWXWGxFcIe4JOj9ehA2?=
 =?us-ascii?Q?BQk//uxl1y/a4/hMFHTNN74welvLQSh779GlagKfFzZJA59kgR6BeIi/fs/t?=
 =?us-ascii?Q?J5+pNZmZVHD6LPI5OKJR2XHKedEcFSpGB/YqRirx02sG6HjKaPccAKAGFVir?=
 =?us-ascii?Q?WWKj7YTDqwIzBmFeAif8vZVWB/u++9VxliwGK/YYNewuQFwOyoz8Qepvn6c9?=
 =?us-ascii?Q?mjsFd/J2nZkui3KtV2mYn2o5G9OSTGy4OWtQnOWLZ+ocmX0/4ZXbmzkkDGWf?=
 =?us-ascii?Q?TPP3Gv8p3nv/Wfi6Ok8ujhEXxWkWSlaarFcQ+522GyAG2SKpVh/MCbSC9LBR?=
 =?us-ascii?Q?EKf4K8zdVdAIS1Mersg61ttrV2eaMCQjY9dC1RkknVg9kiRRLoEGpfhNOj/N?=
 =?us-ascii?Q?2+K/ecXSnlc3i7Lgdp3iPUkJ/b/RpqO0XgNzMtiPXx3OmQZkUAzYtUt50pjR?=
 =?us-ascii?Q?16QcqKhs90AwqFpuPolrqXxr92kYf4OXuoeoFwMzMUNHqIAXS5ZkX5rlI7wh?=
 =?us-ascii?Q?lkNB7rA/cVWRkQNvPXriz34R30yZ5q42rbVNbb7iXcwgaZ7HTFmlzpJaA0A0?=
 =?us-ascii?Q?+U+zbJ5Vn642GXX2bB2+sVt6QU+PiVJaSaLfWkFLJQYxsRDCKkkQs0AramoV?=
 =?us-ascii?Q?FVvcS9iFmcdChqTaqCDHrk5DiepOXucrR4I1jqV9bf8LT2ebzNAwLEXtlXsz?=
 =?us-ascii?Q?OYL61M0hOtrUv/ZBYSpSgATqCHzRW1Q/GXH+hg2XoKwOIDVR8s67ZNHtXd2g?=
 =?us-ascii?Q?+YOS53miyT2mnOpHzXIdFObnGyIuQ02g7VO96Qk3IoJR7jlipegR7CHwhd2f?=
 =?us-ascii?Q?ST3QpdddyrPY14I/hxrW8Jo+epp0g/VRBTIOvUBb3dYu3bLZpzShaFsnvBW4?=
 =?us-ascii?Q?jQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e4b2c257-e70b-4480-88b8-08ddc36677c3
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jul 2025 06:11:41.9433 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4jidXZP0s7vGVMIl75lSfduXQxDbLLrBmA9hrG7NH3peTVojbYIzGGyUKWmIfGGTurDrfzh/KHBQLIU2CCEmZ+/T4Y8H5VMgQ2V+TcOJwMY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6520
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



> -----Original Message-----
> From: Deak, Imre <imre.deak@intel.com>
> Sent: Tuesday, July 15, 2025 2:21 AM
> To: Sousa, Gustavo <gustavo.sousa@intel.com>
> Cc: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; intel-
> gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org; Roper, Matthew=
 D
> <matthew.d.roper@intel.com>; Bhadane, Dnyaneshwar
> <dnyaneshwar.bhadane@intel.com>; Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Subject: Re: [PATCH] drm/i915/display: Add power well mapping for WCL
>=20
> On Mon, Jul 14, 2025 at 04:51:18PM -0300, Gustavo Sousa wrote:
> > Quoting Gustavo Sousa (2025-07-14 12:07:50-03:00)
> > >Quoting Chaitanya Kumar Borah (2025-07-14 02:53:44-03:00)
> > >>WCL has 3 pipes, create power well mapping to reflect
> > >
> > >I believe display fuses should reflect that, right? I don't have a
> > >WCL handy to check that, but I believe so.
> > >
> > >In that case, I believe a better solution would be to filter out the
> > >power well mapping during initialization (__set_power_wells) based on
> > >the availability of the associated hardware resource (display pipes
> > >in this case).
> >
> > Hm... Thinking again, I think even this solution wouldn't be very
> > robust. If, for some reason, a pipe-specific power well would need to
> > power stuff other than the pipe itself, then a simple filtering based
> > only on the info about fused-off pipes could be buggy.
> >
> > For some context, this patch come from the fact that we would get
> > timeouts during display initialization, right? I think that comes from
> > the fact that we do intel_display_power_get(display,
> > POWER_DOMAIN_INIT) during initialization, which tries do get every
> > power well that POWER_DOMAIN_INIT maps to, including pipe D's power
> > well, which is not included in WCL.

Correct this leads to a WARN_ON

[    5.077874] xe 0000:00:02.0: [drm:hsw_wait_for_power_well_enable [xe]] P=
W_D power well enable timeout
[    5.077937] ------------[ cut here ]------------
[    5.078244] xe 0000:00:02.0: [drm] drm_WARN_ON(!timeout_expected)

>=20
> Not registering a power well by using something like
>=20
> static bool has_power_well(struct intel_display *display, const struct
> i915_power_well_desc *desc) {
> 	if (desc->irq_pipe_mask &&
> 	    !(desc->irq_pipe_mask & DISPLAY_RUNTIME_INFO(display)-
> >pipe_mask))
> 		return false;
>=20
> 	return true;
> }
>=20
> in __set_power_wells() would prevent enabling the power well via any
> domain.
>=20

Thank  you Imre, I will take a stab at it.

- Chaitanya

> > Ideally, we should just make sure that power domains for fused-off
> > pipes are cleared in power mappings, but that doesn't really work
> > because there is no real hierarchy of power domains encoded in our
> > driver. It is just a flat structure that maps power domains directly to=
 power
> wells.
> >
> > Now, I'm not sure how involved (or worth it) would it be to convert
> > the existing infrastructure to a hierarchical one... I wonder if a
> > simpler solution (but that does not involve hardcoding a new mapping)
> > is feasible. Perhaps we should treat POWER_DOMAIN_INIT as something
> > special?
> >
> > --
> > Gustavo Sousa
> >
> > >
> > >That way, we do not need to hardcode different mappings for different
> > >variations of a display arch.
> > >
> > >--
> > >Gustavo Sousa
> > >
> > >>HW. Rest remains similar to Xe3 power well configuration.
> > >>
> > >>Signed-off-by: Chaitanya Kumar Borah
> > >><chaitanya.kumar.borah@intel.com>
> > >>---
> > >> .../i915/display/intel_display_power_map.c    | 58 +++++++++++++++++=
+-
> > >> 1 file changed, 57 insertions(+), 1 deletion(-)
> > >>
> > >>diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c
> > >>b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> > >>index 77268802b55e..23c59b587f78 100644
> > >>--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
> > >>+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> > >>@@ -1717,6 +1717,60 @@ static const struct i915_power_well_desc_list
> xe3lpd_power_wells[] =3D {
> > >>         I915_PW_DESCRIPTORS(xe2lpd_power_wells_pica),
> > >> };
> > >>
> > >>+static const struct i915_power_well_desc wcl_power_wells_main[] =3D =
{
> > >>+        {
> > >>+                .instances =3D &I915_PW_INSTANCES(
> > >>+                        I915_PW("PW_2", &xe3lpd_pwdoms_pw_2,
> > >>+                                .hsw.idx =3D ICL_PW_CTL_IDX_PW_2,
> > >>+                                .id =3D SKL_DISP_PW_2),
> > >>+                ),
> > >>+                .ops =3D &hsw_power_well_ops,
> > >>+                .has_vga =3D true,
> > >>+                .has_fuses =3D true,
> > >>+        }, {
> > >>+                .instances =3D &I915_PW_INSTANCES(
> > >>+                        I915_PW("PW_A", &xelpd_pwdoms_pw_a,
> > >>+                                .hsw.idx =3D XELPD_PW_CTL_IDX_PW_A),
> > >>+                ),
> > >>+                .ops =3D &hsw_power_well_ops,
> > >>+                .irq_pipe_mask =3D BIT(PIPE_A),
> > >>+                .has_fuses =3D true,
> > >>+        }, {
> > >>+                .instances =3D &I915_PW_INSTANCES(
> > >>+                        I915_PW("PW_B", &xe3lpd_pwdoms_pw_b,
> > >>+                                .hsw.idx =3D XELPD_PW_CTL_IDX_PW_B),
> > >>+                ),
> > >>+                .ops =3D &hsw_power_well_ops,
> > >>+                .irq_pipe_mask =3D BIT(PIPE_B),
> > >>+                .has_fuses =3D true,
> > >>+        }, {
> > >>+                .instances =3D &I915_PW_INSTANCES(
> > >>+                        I915_PW("PW_C", &xe3lpd_pwdoms_pw_c,
> > >>+                                .hsw.idx =3D XELPD_PW_CTL_IDX_PW_C),
> > >>+                ),
> > >>+                .ops =3D &hsw_power_well_ops,
> > >>+                .irq_pipe_mask =3D BIT(PIPE_C),
> > >>+                .has_fuses =3D true,
> > >>+        }, {
> > >>+                .instances =3D &I915_PW_INSTANCES(
> > >>+                        I915_PW("AUX_A", &icl_pwdoms_aux_a, .xelpdp.=
aux_ch =3D
> AUX_CH_A),
> > >>+                        I915_PW("AUX_B", &icl_pwdoms_aux_b, .xelpdp.=
aux_ch =3D
> AUX_CH_B),
> > >>+                        I915_PW("AUX_TC1", &xelpdp_pwdoms_aux_tc1,
> .xelpdp.aux_ch =3D AUX_CH_USBC1),
> > >>+                        I915_PW("AUX_TC2", &xelpdp_pwdoms_aux_tc2,
> .xelpdp.aux_ch =3D AUX_CH_USBC2),
> > >>+                        I915_PW("AUX_TC3", &xelpdp_pwdoms_aux_tc3,
> .xelpdp.aux_ch =3D AUX_CH_USBC3),
> > >>+                        I915_PW("AUX_TC4", &xelpdp_pwdoms_aux_tc4,
> .xelpdp.aux_ch =3D AUX_CH_USBC4),
> > >>+                ),
> > >>+                .ops =3D &xelpdp_aux_power_well_ops,
> > >>+        },
> > >>+};
> > >>+static const struct i915_power_well_desc_list wcl_power_wells[] =3D =
{
> > >>+        I915_PW_DESCRIPTORS(i9xx_power_wells_always_on),
> > >>+        I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
> > >>+        I915_PW_DESCRIPTORS(xe3lpd_power_wells_dcoff),
> > >>+        I915_PW_DESCRIPTORS(wcl_power_wells_main),
> > >>+        I915_PW_DESCRIPTORS(xe2lpd_power_wells_pica),
> > >>+};
> > >>+
> > >> static void init_power_well_domains(const struct
> i915_power_well_instance *inst,
> > >>                                     struct i915_power_well
> > >>*power_well)  { @@ -1824,7 +1878,9 @@ int
> > >>intel_display_power_map_init(struct i915_power_domains
> *power_domains)
> > >>                 return 0;
> > >>         }
> > >>
> > >>-        if (DISPLAY_VER(display) >=3D 30)
> > >>+        if (DISPLAY_VERx100(display) =3D=3D 3002)
> > >>+                return set_power_wells(power_domains, wcl_power_well=
s);
> > >>+        else if (DISPLAY_VER(display) >=3D 30)
> > >>                 return set_power_wells(power_domains, xe3lpd_power_w=
ells);
> > >>         else if (DISPLAY_VER(display) >=3D 20)
> > >>                 return set_power_wells(power_domains,
> > >>xe2lpd_power_wells);
> > >>--
> > >>2.25.1
> > >>
