Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AF1E896FFC
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 15:16:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AAD81126F9;
	Wed,  3 Apr 2024 13:16:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dWnzzeXZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E36E112700;
 Wed,  3 Apr 2024 13:16:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712150172; x=1743686172;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=eoUKtQ8tUEpkEyJqJoYYUJ3YiTM0j6QIbPOnQ1UyxF8=;
 b=dWnzzeXZB6XgVl4zhNhGMo6/GSmkccHqG5PF3W9bNX7lrfLAxkYA2Ydl
 uSDDyjp2Asjmqzadr9G499mrADi8gRtsXgrvaU4NmBR/UMED6F4omlWnC
 CMJmFFOYZw7SLNA+nBQZNy8EpcPt3UGj9SN4iwqOREFHyKJ804rdQtmFW
 Ui5BUiLotLzeqvWqYIgK+l+RChKfiTI8fOVJw3BQkW5A379/ZLZGCx6Fh
 9g2Ohu4lCJgGPq5N4gB1Mb42ZZ0fbBTnXBr8C/dOm7cedgNM/M+6gahBt
 R1I+E/GC31yQyDgld7WBSGkQ3gtwBI6Ug9sP/urnkprzW6dkskk3k9lW5 A==;
X-CSE-ConnectionGUID: o/3MQNY4Rp2FauMIdL4cKw==
X-CSE-MsgGUID: o7wW54KPSkKfo0sBSshCxA==
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="7242041"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; 
   d="scan'208";a="7242041"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 06:16:11 -0700
X-CSE-ConnectionGUID: ytca1VWUR4uOGxi8BXLRtA==
X-CSE-MsgGUID: us6DU4p/TpSRevdVcR1m2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="55896605"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Apr 2024 06:16:11 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Apr 2024 06:16:10 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Apr 2024 06:16:09 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 3 Apr 2024 06:16:09 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 3 Apr 2024 06:16:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RtzJo+NN98p4x33aJ2IXsPbyn3ObUese4aGyMhvPpaV8TmNHwIRITpMahBLh9mDAUMnPfj7qjgGZdJLaMCBDf7ImkWHDg+9n9wymcGBvWo8LW7CKqEhiVmj0STSE7rmDSe8t1A8oH1nbWdVTc0/GqKvt+qPXjFH6vKmWd285890hLszbI8dlHGDCU1QH83qMTxwylINBxVOM25vE1UnGtgl/PW4zIKInJ/kHd4TiUOC3C7uL8NQ61IZHWj/+8N8Ya+aesEnVPVl2G5crHcH8njUREzRmEKqpi/ioVt9G3Q3h5q+joz+VCB8YWWvIyBGH8xzw8WESHXw09Zm/HNRw+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TbpBa2WbYfQ/LGRZ4yHpRPZIWDeGeIcJZ+nHco0ei8c=;
 b=mbcTQJ2iCEdSbqH6cclYMDO2GOazESEqZO7sQoKYs3Ygzw3GegzXOANeU8eSyYB3iaLylKc+qlsfDhuiqcN7oxXtjZRhRqdtLIfFolXGeOEb5TyBXBmoi2qhODYR/0+nUaKR65hmv4PVywWF61JKIitROlv2vp5LsIo/mY8LNshA7aktZXtq+pYOi6N/HhGv9j75Eq4Rpj520rgBFdd9ebinH7LUh1aPE0kaU1sYzfFWo2BMYWs1Y2AGxCgC7iAZHECVcs3s3/4tNPIqPh4f2ehd2dL5Wwl6NJNF4QlvFRstBtb/Wuz6vUiPcYdb8eDbBdfj9y24PC4EJCSAs0rAcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by CH3PR11MB8156.namprd11.prod.outlook.com (2603:10b6:610:165::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.33; Wed, 3 Apr
 2024 13:16:02 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257%4]) with mapi id 15.20.7452.019; Wed, 3 Apr 2024
 13:16:02 +0000
Date: Wed, 3 Apr 2024 08:16:01 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Matt
 Roper" <matthew.d.roper@intel.com>
Subject: Re: [PATCH v2 02/25] drm/xe/bmg: Add BMG platform definition
Message-ID: <jmgaruuivoineqbkx6rvu6n5qasuq4lev6vwwytyt7vwnog3q6@fl3tkitfwbfv>
References: <20240403112253.1432390-1-balasubramani.vivekanandan@intel.com>
 <20240403112253.1432390-3-balasubramani.vivekanandan@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20240403112253.1432390-3-balasubramani.vivekanandan@intel.com>
X-ClientProxiedBy: SJ0PR13CA0162.namprd13.prod.outlook.com
 (2603:10b6:a03:2c7::17) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|CH3PR11MB8156:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: m4JTY+IQxyaAJn7B9ZwNpT7ei99+aWyXFPfHRdMfwGdubLL7bgY4wCKAvDqf4Ub0gfFayFlEy6MsmXKO9Yv2/0WC0bKqPJx0ltqHywDDEWS1l6PzS5HQjdB3+dTdS63R+y6oc072XPYNUFXwXjq7Gd+dtm9zZ2SY4U4pJBNRxoRpbXanIC4OIGl8BVJMP9TeOBnoyBRFDE+PRZEhYlwU8RG4st8xteggIm+2N9aeRz+j2LT2mOwNWPTD18Tn3Hf38Epo1MT/Et/8pWRGHLy11NenCb+H8Pl09uGrTNhOwvMzwydCMt9wtdZ6rv1LD8MRLvcuAarONhB8oH7lp2j425qOA3yW09KKdNZq9UF4MJml8DdipBvLAoW0O5a+ftDwoKcmpHYJWSOH8M02r/fqTj94jcb7YXCX5IOuP1fUAJjdJ91c0NBNAirUvynk08Q20isu3i8FKZqZfh4p/3JEmMkhRNnx45DVk5B3B5FpJzN7MAm+R6Yp4eQMNyZ4JmmAXNsjxiv7J3aDY0R450gAIcd3ecpfhB74HArPPdhEB7PP14npvjVNx9d9mrjl33y+R02PJ4AGFS3vNfFBYEpUH864ZXIiRcusScq6wzwe5De4NNx4qN5JZk3BBVKNv3NluE9H8e7LHp6RKmB6gj99YxI6B3Qj9v51h0vMPSiE3vc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qUAoY9gT8XhsIiecfjrAgQv6x15KVzqeH3f8gMtrYrrc1PRD1wQod+PUCWu3?=
 =?us-ascii?Q?V/4EPkrqqnuuT3vkrQL4inxoaD24m+1gVwCk92bTCX8COW7/oT9qL5cSOtqM?=
 =?us-ascii?Q?M2UwYktiC3bxeZ9xQ0kvG8b4zwWXad2urAa7ScAzQwx3uM9Kh0eD1FSnn50e?=
 =?us-ascii?Q?EW3EcL1WluPw9PuNUgIHyOiHENhixkNvyHihGJmb8pCnBINfvBOVecZJqP9D?=
 =?us-ascii?Q?/WXTiPD46Y8YFDTof3/cMLzRsHCyBgIAaRhUyN7qJ8Td7G+lfl/N4bHSQKWa?=
 =?us-ascii?Q?okKOoreRB9F7+IE3izyIJKlFnY/4FMcx367Y4Wq8lx3xrCD8jHVMKUnVGpN0?=
 =?us-ascii?Q?n1lfh6S17vvwAaGM56QL70SalJPNjQ6y6f2M2rhUkhs3OsdEdAQ0tAENGV2n?=
 =?us-ascii?Q?vLOQRGss+4LHEF6aET2U6ot+9EYAJtJBnUVIEKbsmsDOilcg6Km91KVoEcXz?=
 =?us-ascii?Q?L+UGlWxanT7z4dWw8nrrL7LDatrf3wTd/81i7ORkb1KOAcFK7MQ8ykx2bbmA?=
 =?us-ascii?Q?w8I/MAn16tM0pvxyoryRIXal+OnxuhU8fkW0MV3lvSoj7eFGMpfRyz8ebPwY?=
 =?us-ascii?Q?3Qcj3DWydLipMHsPfvPT3dyWExLfN3rCpx635JjsP6uRdM2UB6GkGHPrp5lF?=
 =?us-ascii?Q?Z4a8Du1FOi4XXxrkYMv4eT7TA4Ys4fIAekbDT0gayU14ANc5XSo+2MFFITwy?=
 =?us-ascii?Q?w+2ebgM7dAtbB4CJQOAWhLBD2pcTfMxr6EkFL8F4UFhtmxet/Lq8FxChu3H8?=
 =?us-ascii?Q?VEgH35gN0jCpbK3qAECqW7ygBuc8UYFjSp6MRZrgacjYBOdATBTG+lSwlD9S?=
 =?us-ascii?Q?UQy1c/YsbZDRwsV1vwcTpdnn76Wk0UC/Bg/K4XlWDlu3Ta7mUfwOywsZU8Uv?=
 =?us-ascii?Q?+DFS4KTW34nd2ARl2QfLomjH0izKWKMnrbDRs+tdB/Hkikdk77qiokTU860L?=
 =?us-ascii?Q?EkVSQT+cmzmJjwLEzUhvFZGeGFuLdadxYKqkHSvnqzmE6yIzBxSWFj22PV5B?=
 =?us-ascii?Q?AaOFjQxCYT/QUvY/GGg0mFNt2HTbroB4lEU1sgaGbp67ywuaYEBGUrompsVJ?=
 =?us-ascii?Q?BdmvfPvvjTqeTDeuJ+r2pzYFyzfBqSlbh7sv3qGtL9CwsptONzm5Znej/w4J?=
 =?us-ascii?Q?STO4AEWX9tipRi3qnYJpW0C7TTSJkm7Eaf9SLW5mNtiFPRuetHRhqaHPVlrX?=
 =?us-ascii?Q?oXNwuyx5hrOi+uXm9wpAaNFFK9zMeZjWXZKzYZziEjyD5hMB8BzzhrfxRZ2Y?=
 =?us-ascii?Q?Zkb0lHgCeH7M1bCZQBcFafVqO3uscCLgohbDVUbmR+f//dAEEommqHTlAV+4?=
 =?us-ascii?Q?PBaY+Jiia/57UscsbtZxyr39DLWmG86idCt7SpTlstll3EaLhjVNloS/jZNU?=
 =?us-ascii?Q?P51ryFkLE45hoCr4TRg59qTa+KtwW9MLo96ALd+1XQjJNX51WbOIYAlDvrMe?=
 =?us-ascii?Q?Dwnzui9eCJpxzmpPor5ZMuC7iJ44SQLWAlbrtcbbfbJkGaf1vQ5nRaphhJLa?=
 =?us-ascii?Q?N70CSsypH4GBMaFG7dk8SzhdY+LzR1wnGwfh90aOsadWzDRK6oq3+iwQE3e8?=
 =?us-ascii?Q?H+wgXC+76z+rRtmgQK65Gdbd3XiUyO0bRsI5YLpDbE3axt6ONvCoI/W6pV4m?=
 =?us-ascii?Q?uQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b41f90d4-3251-4ab9-9867-08dc53e03625
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2024 13:16:02.8106 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aBLcsszDMuNiNPPyiJQsraIxPcc2DwiaeINrb4oq0K64LCUhypE3DA/jvhidFXc0rneMZP/jkDmzUE9fh04SaVXLOgRBKaElRpTCgL6KT9s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8156
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

On Wed, Apr 03, 2024 at 04:52:30PM +0530, Balasubramani Vivekanandan wrote:
>diff --git a/include/drm/xe_pciids.h b/include/drm/xe_pciids.h
>index c7fc288dacee..73d972a8aca1 100644
>--- a/include/drm/xe_pciids.h
>+++ b/include/drm/xe_pciids.h
>@@ -208,4 +208,11 @@
> 	MACRO__(0x64A0, ## __VA_ARGS__), \
> 	MACRO__(0x64B0, ## __VA_ARGS__)
>
>+#define XE_BMG_IDS(MACRO__, ...) \
>+	MACRO__(0xE202, ## __VA_ARGS__), \
>+	MACRO__(0xE20B, ## __VA_ARGS__), \
>+	MACRO__(0xE20C, ## __VA_ARGS__), \
>+	MACRO__(0xE20D, ## __VA_ARGS__), \
>+	MACRO__(0xE212, ## __VA_ARGS__)

see my previous review. I don't think these patches are split correctly.
We should postpone the PCI additions and let this one be only about
adding the platform descriptor and definitions. The next patch adding
IS_BATTLEMAGE() could be squashed in this one, while the PCI additions
be separate in another patch.

Lucas De Marchi
