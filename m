Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8B08BE4D13
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Oct 2025 19:19:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3091B10EA60;
	Thu, 16 Oct 2025 17:18:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PjxEQVd+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 502F710EA5C;
 Thu, 16 Oct 2025 17:18:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760635137; x=1792171137;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=hnTxNnoQB1/Nx8sfaREqeUOQR2ys0MNbJLZ/CxGi3mU=;
 b=PjxEQVd+X1mJ5p+G1+Vx/hPJkgg5+/uXyvCZqcMegzD5b6r6+IJtPz5m
 UEtOc5nOHBDo17XXOO28Gdz+Qa2E3AhmgcaKM/4NdV4NLyJMsyBPzjJaL
 3nPxRJppb3elavtdd4HJkCR3ktMJhJgh9ECxeeTVtN8lUUL5gehbMAAwY
 1RP8Zrk1e/IOu5hY5qobOqEqqG8lqnvSRvekE2JvH0XPneZv9muozWhJq
 cf0bSBEa+y/LlYEWABkv5r2vFLvbkl+eCR2ujgLqf4Ogl6GyZICDAliW1
 KQzQ/Cd1F6QdLuMOJugn1EhNl2CXNBl1nq9KUGLn1WKA2N35C0uG6B1Fm Q==;
X-CSE-ConnectionGUID: KFCIJg0zRNWGx5penuHvcQ==
X-CSE-MsgGUID: gsNDr0ugTIGJTJ9Kse/avQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="62742480"
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="62742480"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 10:18:57 -0700
X-CSE-ConnectionGUID: MtvChsNLRKa22tTF3bWW/g==
X-CSE-MsgGUID: ORpJby8bQ0CvOlUYdqQG2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="181723548"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 10:18:56 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 10:18:55 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 16 Oct 2025 10:18:55 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.16) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 10:18:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xPPogvA1kx5ee8tA90xNarlZI0eWsDjK3NjPbgza3R8W/Y4AbmNBF0zL01OF9s7hUiHEoGlv7vQiVHFWchH48YtYhjEg8aGjbmQaq+0/eZ588PsJ5DU5EdLnR+lLDf7HMp06NWB766pHz1Jh+YFDyO3B7IjmQSUia1hw2uv6hzwIZJexRk184BTNWcLLAxsDvb3626lEUShf+V7WB2aTfT7p+9J/yIe2mzfFC7tKTE9aZ7mbzuQ987raR8DEjMoGjNeTcMzhtNpUVSglfj3lQrTt8kNb/NvU8l6PDWxg1cwD2io47G4gXBpEksKqrGTRdqrROPaHsiBxdu0bDlNBFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J/8PaQ8J3uJRk37hUGSBBD1NF7OiPow9Gr6MSkcZ5Qg=;
 b=djY2BQrMR4tt8Ey5ekwFAgCHjG1eulYXeiWtu4lEPiZxUQewTrKL5/arAECp/1BCgMvKOXYS9gnxeJNON9JvCRGINHMDRPsIJc2+Tv+8EDAoqlx8R4pNkLISsFfq776mEJPxtVVA2oXJWvuBJWiauM1O2+/U3mMUVLtIhBVO6tHb6i26vk6id+OtQ3oLzutsGtTNXpkZ1pj9cT1mUBVAFaGuS/2rgIm6bHUpThxJuUujyAYv0YWMsdJyZSfAmL3CrEgSYfqWmr4jT0k/qEwtD6xKlFalv3OtQqA2osZHcDaNHzppFfOtBJmhLwIXDrtCRm67aO3QX0CtA3CxXAj5vA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SA3PR11MB8047.namprd11.prod.outlook.com (2603:10b6:806:2fc::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.13; Thu, 16 Oct
 2025 17:18:53 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9228.012; Thu, 16 Oct 2025
 17:18:53 +0000
Date: Thu, 16 Oct 2025 20:18:47 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jouni Hogander <jouni.hogander@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2 3/7] drm/i915/dp: Export helper to determine if FEC on
 non-UHBR links is required
Message-ID: <aPEo95sLX2TSol7q@ideak-desk>
References: <20251015161934.262108-1-imre.deak@intel.com>
 <20251015161934.262108-4-imre.deak@intel.com>
 <55a897534e3d0ab51ebdbc56a08281e20a30e937.camel@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <55a897534e3d0ab51ebdbc56a08281e20a30e937.camel@intel.com>
X-ClientProxiedBy: LO3P265CA0020.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:387::14) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SA3PR11MB8047:EE_
X-MS-Office365-Filtering-Correlation-Id: 1b725deb-3326-40a5-ccef-08de0cd814a8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|10070799003|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?oFfdGCkXpnuRth5uyNgyBOCRjrIJ/WHdZlkSKzHVXc9yDJBloOfkdTVRql?=
 =?iso-8859-1?Q?rIt4zWUap5cvnaGv8bPD2BuwfzKnidLhaM4tyKrE5T8goW0884AhW03Ijb?=
 =?iso-8859-1?Q?PxuRzKzES+ZtqhIZbJ2qX9QLd83+GXj2WPoTGhp7K+wedTsV+vvUViiIc0?=
 =?iso-8859-1?Q?Zq/vqBZursUeaF9tC0oZtBb0u/A+3zE8quPecvgFcyv9+WNv/8gvw0ys3S?=
 =?iso-8859-1?Q?k5YdzSY/gpojMNx3OBmitbymmYQJ7jpJ88mkLTSmObkkn4U87KZ86p5k4b?=
 =?iso-8859-1?Q?s8lLgeafzZEiRjEFcSsn+puBjxCjij3vjEm6yacl/EGBVCWQTh2sBAVHWZ?=
 =?iso-8859-1?Q?B3bYHQt+BcOyFAPCJri1LuWQHEEVA+uzFtltlCIb8nRRprn+qDffZhR8Tp?=
 =?iso-8859-1?Q?1b5UBSDZj4edIeL6qVdoGVKp20orBMtKJ/2dB7hGq9Lv6uY8vxRrEcpIXk?=
 =?iso-8859-1?Q?YyV+q+N05dhjb9KabBU2sUTESG2bzivyRwVkJ4x4PVXCA7gb/7WEsxCSlF?=
 =?iso-8859-1?Q?EF7aIZg26+/rfvm6+ljtrYjEpniCu0DVDA20gFRnoupMdVsILujhkkjRu3?=
 =?iso-8859-1?Q?OZHrn2vGN3vgRQNGvXF2jgeink/XWhYJKNXKDS9vPcnUlzwVNZtSdrWuyK?=
 =?iso-8859-1?Q?GACL274V6maXPt1RyU/Cif21ld/2+ygHe/af9y6YA1/tgg/hMRpteH+6wC?=
 =?iso-8859-1?Q?vcfQN/OquOj1drJtnCbT0YarlyP1DsxBB7CnJkBCl/qs/t2nFK4q1RHTQz?=
 =?iso-8859-1?Q?2N7nYvXbm9FzTiD/BiI7hubyXpKQy9snUXMFabQUrGwacuwKjeeueekeWZ?=
 =?iso-8859-1?Q?spF0siOeKn1xqr/4Wp5Xwtm2lDAZB3zQnPM3uYply+bHaN8RLA10W9fmTV?=
 =?iso-8859-1?Q?9lm2mpM80UY0+SIWoNyiywLilVVfYExSuKEqdHhzbbRMoyv1IP1RmCRMjR?=
 =?iso-8859-1?Q?aJ46ufkzTvTsA2jQNj1UTseZmjlzTpn0S6lhhxS1PIhCc/XdjlZcjG423r?=
 =?iso-8859-1?Q?HlEc/3aGRzwP656akj9w2Lvr9We3AIZf7SulFRs9SJB96vKU9fvjBo7C3P?=
 =?iso-8859-1?Q?Je93va2n1eVzWxHkOVNzakQ4Dr3nLSOMly29p1PDLQLctvWHe0S7CxpQ96?=
 =?iso-8859-1?Q?//lOF+jkcPdjYfLJMLtIJovOdI8/ipV5OpQq2GVRvC/l/haceKR6kxdRlW?=
 =?iso-8859-1?Q?dUrHgPpXMkz4F+aUXwS6Hx3erQO/jHs9hIUPKaowy4cFoVUDM1mo+hlLe4?=
 =?iso-8859-1?Q?RAmpZJRQMjcvbsb+lG8IdKKzGug0FtTbXX9aSgFFoNeHVRRXyQ6CR2AkLl?=
 =?iso-8859-1?Q?1V/Xw/9hriAodv4gH8Dw3bt+gCbsKMmPhdFkGxGmeRU4vl1PGl203VGWuu?=
 =?iso-8859-1?Q?VQWtITpddFgHU5pakfCkVHI2Z0r5dxIqpYyWzfBuDyZjKg1OmFiNYVfTvT?=
 =?iso-8859-1?Q?1RdaksV77LuY7Nh1nrpk/2z0PJizepkeUTWhJYkqfY4zAc8tG+s8WoAIfs?=
 =?iso-8859-1?Q?n6+EqvCi8S/5YbaOK3IJQD?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?BJUN4FK/cUtzpPt7uoewJ9nNHMndZb6+iUCKr4oi/Ov0002eT/bAP9g9k7?=
 =?iso-8859-1?Q?JpMgAlbsa9viPRH7val7zAHoxqHmpav/4STteD/s+s4TP6BksjptqliP8N?=
 =?iso-8859-1?Q?wr6DkuaPKssPE6p7Jq2sp6ydt/j6l4zbliNqU4Xr1D9BrgLI/QyFLrM1Ma?=
 =?iso-8859-1?Q?Z3WGtLCjyfHw4mO6WrT50uOg0OT0/laMC8m6bx1niVJuqNWio363X142Oo?=
 =?iso-8859-1?Q?XsEV++DKpDBQtgtAgC/oPXKgjEvgo0L7+EKwaza3mR6gJOT06fFrNhL23Q?=
 =?iso-8859-1?Q?+WzYFdgb2vfQsa0Hzd+UL5WV418XSuZcYziCkN4urGwtxg9PjfmtCuUdlO?=
 =?iso-8859-1?Q?uzdbzNNBbXKzUXk3fFXs+qy6A0XrpGGo3MeBfhxS5uCb6ctWIGD2Z9gZqG?=
 =?iso-8859-1?Q?GKBXKnlGLsD0zFCNRv070n0V6G+ezQPWZsHumzrOsQOrJeQ1xyr2thiOOM?=
 =?iso-8859-1?Q?hsSTsgPKTlPGJh8cQjKiAUG6qcIa+p7SxhRBhjIcrClfIK4KY212AzMxr5?=
 =?iso-8859-1?Q?d+HJYPVt8Lnw6BfFbg55KL2FDp+1uYg10HCuAEFySQbryw6kO13qmdrl2o?=
 =?iso-8859-1?Q?hd2iVpRLQ0IbXQxYfu77RIoy1+3nA2lCrLhG9P/LIxq9ovLBfXsxeMi032?=
 =?iso-8859-1?Q?d3sifP9r7pyoADQzKycB/zJv6h0f1NEy/ulTgFdjd+8Q1mXGjK8sKN9G0G?=
 =?iso-8859-1?Q?e2fWBcPqsHWtPac0ytG97dLJVNewObIy6eCSfkJiwRa+GZUD5CDUxQS5HP?=
 =?iso-8859-1?Q?WS5nw3UK4LVXjwH6vFgQPJ9HXKIWNEhrYXCwOdrrt4t62H47Gy0oKUFgWL?=
 =?iso-8859-1?Q?Ku+TKFv4z/x5yAhY3A7l1uh4+TiqRnAQJ0w5aU1eETjKU+3m7GTtxGjWag?=
 =?iso-8859-1?Q?88R1meMFFGokxnGjbVrMJks0YTVi2B+3OAMha0IABcdikqZzu3n5Kyte4K?=
 =?iso-8859-1?Q?7uqh1b62Yx4wxW8+lTzzWIqjaTSA+QS0apDwQXsk7IWLCMj94bspDCir2W?=
 =?iso-8859-1?Q?x2Umd9i2wbtgVeB49R91jXRrCRD4A5yNiZ6Gz5Pry2JWVlaXQOdgQVsM0r?=
 =?iso-8859-1?Q?XP4gJFPFUO83h9b0xXjgr1Uognp+77sCJ4g5+6ZHkkrl/lZtWKWxx290Ni?=
 =?iso-8859-1?Q?hUsXh5eJKO8mYeGlBmm7ymTCcdHrw+U4udkqEF9mk5JP7bsg7MPO6gky6C?=
 =?iso-8859-1?Q?i9TFZ47LcXA5Lg/TsVVYrOeEAECONqOqrakYlo6kcZLfivJjXF4z4B2Bop?=
 =?iso-8859-1?Q?X4v1CWLkCYikLmavmPSs9krP6ho80xwTdWJltIPg+e0F1ifg6/lF+KuU7w?=
 =?iso-8859-1?Q?HgK0TOIpnyv+QuLZn8eWaWeY4TlWCr2At2QqjlYptjdiL8UFUZxJB8l8RE?=
 =?iso-8859-1?Q?dudeA4fg1kWNd5TzyzRcx98SxD4SDQmi2pgemzXZKDQ0a/Sca4cYNUjSyz?=
 =?iso-8859-1?Q?cIXF7hbV2f2FJCsHCvJpfz/TSwZj3LfonXx5BQBRosiHT67aX2Y0VwjQy2?=
 =?iso-8859-1?Q?cC0/T7Yg+/Y9kqU9x0yxsWEiTPIXbPMIOyA0s28Sl9NcCpWulhp8jHwvQ3?=
 =?iso-8859-1?Q?QcmBVh5Ce9gM1NGKfVwWhtyBuZzWwaB1OmlUnO+3Ult+92eaOjiqKbBVDe?=
 =?iso-8859-1?Q?tjdkv+rb0+bfjTXlP5K8H3qK1euWbq4ML3E/TBEoWLrPKgWuIgxXedxbC2?=
 =?iso-8859-1?Q?RzPFmALzVPqHWAPZAQkYEbBfrTe44GZBvy7/v35y?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b725deb-3326-40a5-ccef-08de0cd814a8
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Oct 2025 17:18:53.4207 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3mcWLg6VCjWv5NPOa/D8A+v3L0dZ1gHataCSvZlUAIS2sR84UL9rlLFPWC16Io8eo356DC/H55SrBVPxEiiVWw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8047
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Oct 16, 2025 at 07:56:32PM +0300, Jouni Hogander wrote:
> On Wed, 2025-10-15 at 19:19 +0300, Imre Deak wrote:
> > Export the helper function to determine if FEC is required on a non-
> > UHBR
> > (8b10b) SST or MST link. A follow up change will take this into use
> > for
> > MST as well.
> > 
> > While at it determine the output type from the CRTC state, which
> > allows
> > dropping the intel_dp argument. Also make the function return the
> > required FEC state, instead of setting this in the CRTC state, which
> > allows only querying this requirement, without changing the state.
> > 
> > Also rename the function to intel_dp_needs_8b10b_fec(), to clarify
> > that
> > the function determines if FEC is required on an 8b10b link (on
> > 128b132b
> > links FEC is always enabled by the HW implicitly, so the function
> > will
> > return false for that case).
> > 
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c     | 21 +++++++++++++------
> > --
> >  drivers/gpu/drm/i915/display/intel_dp.h     |  2 ++
> >  drivers/gpu/drm/i915/display/intel_dp_mst.c |  2 +-
> >  3 files changed, 16 insertions(+), 9 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index b523c4e661412..3ffb015004c54 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -2365,24 +2365,29 @@ static int
> > intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
> >  	return 0;
> >  }
> >  
> > -static void intel_dp_fec_compute_config(struct intel_dp *intel_dp,
> > -					struct intel_crtc_state
> > *crtc_state)
> > +/*
> > + * Return whether FEC must be enabled for 8b10b SST or MST links. On
> > 128b132b
> > + * links FEC is always enabled implicitly by the HW, so this
> > function returns
> > + * false for that case.
> > + */
> > +bool intel_dp_needs_8b10b_fec(const struct intel_crtc_state
> > *crtc_state,
> > +			      bool dsc_enabled_on_crtc)
> >  {
> >  	if (intel_dp_is_uhbr(crtc_state))
> > -		return;
> > +		return false;
> >  
> >  	if (crtc_state->fec_enable)
> > -		return;
> > +		return true;
> 
> Not really changed in this patch: Do you know in what kind of case
> "crtc_state->fec_enable == true" before intel_dp_needs_8b10b_fec is
> called?

Yes, that's another corner which should've been documented at least:
that's the case when there are two or more CRTCs on a 8b10b MST link,
only one/some of them enabling DSC (but not all). For instance, CRTC#1
enables DSC, but CRTC#0 does not enable DSC. First CRTC#0's state is
computed (due to the regular order of CRTC#0/1 etc. state computation)
and since DSC is not enabled on it, it will compute
intel_crtc_state::fec_enable=false. Then CRTC#1 will compute
fec_enable=true, due to it enabling DSC.

After all CRTCs computed their state, through
intel_atomic_check_config_and_link() -> intel_atomic_check_config(), the
following path will detect that the FEC enabled state is different for
the CRTCs on the same MST link (whereas the FEC enabled state should be
the same for all the CRTCs on the link, since FEC is the property of the
link encoding). After detecting this, the state of all the CRTCs on the
link will be recomputed with FEC forced on now for all (forced, even if
DSC is not enabled for a CRTC):

intel_atomic_check_config_and_link() -> intel_link_bw_atomic_check() -> 
check_all_link_config() -> intel_dp_mst_atomic_check_link() ->
intel_dp_mst_check_fec_change().

The above will set the intel_link_bw_limits::force_fec_pipes mask for
both CRTC#0 and CRTC#1, then both CRTCs' state gets recomputed, during
which intel_crtc_state::fec_enable will be set upfront in
intel_modeset_pipe_config(). The above intel_dp_dsc_compute_config() ->
intel_dp_needs_8b10b_fec() will be called after all the above (during
the second round of state computation) and so with
intel_crtc_state::fec_enable already set. This set state must be
preserved for CRTC#0 as well, even though it doesn't enable DSC.

> BR,
> 
> Jouni Högander
> >  
> >  	/*
> >  	 * Though eDP v1.5 supports FEC with DSC, unlike DP, it is
> > optional.
> >  	 * Since, FEC is a bandwidth overhead, continue to not
> > enable it for
> >  	 * eDP. Until, there is a good reason to do so.
> >  	 */
> > -	if (intel_dp_is_edp(intel_dp))
> > -		return;
> > +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
> > +		return false;
> >  
> > -	crtc_state->fec_enable = true;
> > +	return dsc_enabled_on_crtc;
> >  }
> >  
> >  int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
> > @@ -2404,7 +2409,7 @@ int intel_dp_dsc_compute_config(struct intel_dp
> > *intel_dp,
> >  	 * FIXME: set the FEC enabled state once pipe_config-
> > >port_clock is
> >  	 * already known, so the UHBR/non-UHBR mode can be
> > determined.
> >  	 */
> > -	intel_dp_fec_compute_config(intel_dp, pipe_config);
> > +	pipe_config->fec_enable =
> > intel_dp_needs_8b10b_fec(pipe_config, true);
> >  
> >  	if (!intel_dp_dsc_supports_format(connector, pipe_config-
> > >output_format))
> >  		return -EINVAL;
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.h
> > b/drivers/gpu/drm/i915/display/intel_dp.h
> > index b379443e0211e..55059bd5c7efb 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> > @@ -73,6 +73,8 @@ void intel_dp_encoder_flush_work(struct drm_encoder
> > *encoder);
> >  int intel_dp_compute_config(struct intel_encoder *encoder,
> >  			    struct intel_crtc_state *pipe_config,
> >  			    struct drm_connector_state *conn_state);
> > +bool intel_dp_needs_8b10b_fec(const struct intel_crtc_state
> > *crtc_state,
> > +			      bool dsc_enabled_on_crtc);
> >  int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
> >  				struct intel_crtc_state
> > *pipe_config,
> >  				struct drm_connector_state
> > *conn_state,
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > index 27e952a67c343..d0590b5ffffd7 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > @@ -296,7 +296,7 @@ int intel_dp_mtp_tu_compute_config(struct
> > intel_dp *intel_dp,
> >  	/*
> >  	 * NOTE: The following must reset crtc_state->fec_enable for
> > UHBR/DSC
> >  	 * after it was set by intel_dp_dsc_compute_config() ->
> > -	 * intel_dp_fec_compute_config().
> > +	 * intel_dp_needs_8b10b_fec().
> >  	 */
> >  	if (dsc) {
> >  		if (!intel_dp_supports_fec(intel_dp, connector,
> > crtc_state))
> 
