Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C2C9782C98
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Aug 2023 16:49:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8341110E291;
	Mon, 21 Aug 2023 14:49:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D487010E27C
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Aug 2023 14:49:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692629374; x=1724165374;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=QrMV+HXev0k95iLcvmtvlpbS+v2cB8+CPJ+R4qaTMGU=;
 b=BCoUlLy20QTHLqb8pG6we7uTB3e22PzXO2rzLpayA5LY29eAFFk6xhGr
 gDqLg89mCsfh35vXq6GIZHyioZBqvHDw41u6cUmP9YmhA7uGz99csoCBr
 qs+XNDPucc+8949Qgae3kT2LhYTMdmt37+3iLmM8kqqgJnHezcx7YRPHz
 A3PylkIaZm5Nfyg29h8JyJA7B0JKc7ltOGVyioRt0p/EgaUwVSScdOT+W
 TPqfaTzf9kqEeLsHVA3HQFyyTGhNspQRcKucyF/OYithhk4RjTNPB5efV
 NKvfg0i/T4X9F74A5wAOTbNx7QVDoMLor1nxEad6mGmDhRNPLZfo0Xfnw g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="376356727"
X-IronPort-AV: E=Sophos;i="6.01,190,1684825200"; d="scan'208";a="376356727"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 07:49:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="850213770"
X-IronPort-AV: E=Sophos;i="6.01,190,1684825200"; d="scan'208";a="850213770"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP; 21 Aug 2023 07:49:33 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 21 Aug 2023 07:49:31 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 21 Aug 2023 07:49:31 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.44) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 21 Aug 2023 07:49:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ja3MYh0Nel6cXSJ2pwuZUFwMU2lAYKYjzHUd7FQFqJP2DYrihfvBd6jw5d7aXH58MnAMXKqVAjW70nDk/0D4WO8XBVlj8LNz7g4ymo2kKXJ0JSQYs/O9gc1p2hkVqwK3HGgEoK7cdqn3U8Qqrra46pGMQXkzEtnYZS14gnxpjcHEOs3PBJ4ieeh0DLzqDD9MnuxxqgtKmMF9Y5PX9bHbwkohacxFQQ1Uey91SICldTKbqpt3wXYvdF6mZ+93rYkkv95Ce1JIY3wUfTLs2VRY4F0K6l0bAEKwNFeoQzCXWweHkrLVUFE1B8kY+48F2WWpahMRf7WTi0FcmUvcFZgLFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZgUtgDxgFkvD0SbLDCCXRfQ6BJhjkPxxQSeJv1v9kD8=;
 b=LRJ8PboEun5ZRF6MDq6u84rbhR4LRAGb81yUnnWjyczHRUhW4RZ7gjHTEdiAATwhRyspAtGV2IOPOmjJmBsDVFxx6+NWBXZOwtbDRjwzz90Du1EeXVHKd8s3NnmQUz1jJrywFPfde9dNSVy+QFnL5FdG45MWj8feja+srcARsYVIapq0N1wPhGQA8ORN9EVHKdETUOgxZK34spvNzWisIs6Vxp+jXvVmd12HbcJKUMjVhuq8qu2GbUcgHKrhRrSkIUcSEMTC9whYBJpUFMt8oaD9/GNY2IunRQFJb453p+lOn5zr0SiG4a1k6Xw7U5wm1u0pyM1tVNF19bNqoEiGQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by SA2PR11MB4891.namprd11.prod.outlook.com (2603:10b6:806:11e::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.24; Mon, 21 Aug
 2023 14:49:24 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::e76d:33ce:73f1:573d]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::e76d:33ce:73f1:573d%7]) with mapi id 15.20.6699.022; Mon, 21 Aug 2023
 14:49:24 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20230814200632.56105-20-matthew.d.roper@intel.com>
References: <20230814200632.56105-11-matthew.d.roper@intel.com>
 <20230814200632.56105-20-matthew.d.roper@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Mon, 21 Aug 2023 11:49:18 -0300
Message-ID: <169262935848.6257.13923313990794464615@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BYAPR01CA0050.prod.exchangelabs.com (2603:10b6:a03:94::27)
 To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|SA2PR11MB4891:EE_
X-MS-Office365-Filtering-Correlation-Id: 80747f25-68d1-4a09-47e0-08dba255cfac
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0a8dmb1fOz6aSpgYg3O6KEKqTzKaK2/7/GXS+7BCKz1li1C1LDpBjnAjaJ00er1n4dmoRKVPq/k5wbgZMTw+G+1s3Q59tQaKZM1cX5vVKcaYGXILNqfvgQI9eIG1OiJv20jeum7b7lc3lTnsEywVzIXM6fSuCrsSYCKT73ZeLM40ho27QctT7/HnSfslL5sF+ZIKZOMU5qCjWmS2M8VGPd7T9Es3z3WCDsqF32JTcKRAnb/G8wyDRT2VM7wLtSacGHdrJOwwvWHng0nwM709b5jWt984PTNv40fym1e+q86Tx8BulzC/kz/ZrLSPONshiBEs8kGv/To4wfoWSOmZviEJENnyV78PNddm6m2gdILrMJ/Y4hosn83EtlJf5Zmp+RsNVvU41CKL6wDYqekKmyvPh9LF55LVZbdmRMddrS2uz4ecGyq9IHjlGUmRbn64mkXpkjkjGJdVnV4Cs/riJawSBxAvJTplqfaYmatf8g6K0dX/5rL/K9Bp/B1sMU5svIj372F6G6P5XjAwKgL7BQk6tbmTEBbDTjM9CRC0sUZPVHTjBf3JvR2/sZRHE2Om
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(346002)(366004)(39860400002)(376002)(136003)(396003)(451199024)(186009)(1800799009)(2906002)(38100700002)(6506007)(6486002)(83380400001)(5660300002)(44832011)(26005)(86362001)(8676002)(8936002)(107886003)(4326008)(316002)(9686003)(66946007)(6512007)(66556008)(66476007)(82960400001)(478600001)(6666004)(41300700001)(33716001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eGR0NVBnNkhOdENhRE9hVmdIcHh6cUQxL0JRcS9BeDV0ZnpmTUdWRkhWUlNq?=
 =?utf-8?B?MVBZRnppMkxpdlc1aWY4MGhWc2Q1SytEOG9YaDNxWGFlYS8vYTVyZWgwRktI?=
 =?utf-8?B?YzF1bHUzRVJvZ0xGNWhvTTQzL1VFdk1FcGRmT01tWnI1S082UitUUmo5YTFz?=
 =?utf-8?B?dW01ZmxwUWpXc0F3aElmalhkUmo4M3hHL0xzckowRFJZcnlOUDViMUdPSis4?=
 =?utf-8?B?Mkdyd2FVSnVITmtrVk9KMzN1MzU4eHBKRDBlbzd3QXRIK2pscU05Z2NyNFE1?=
 =?utf-8?B?NWtYWHBCUGlleTdrZkUrNFRUZ0duR0RzTk0vWE1zMDFMejJFMWZwdmR1aHc4?=
 =?utf-8?B?bW5UVkxIaWxSYjI1YVgvV1Q4VFlLVkZweExSN3FSSjg4UGQvVzVBVytSNnJm?=
 =?utf-8?B?NEUzVE02WEdxRVVCaVcrRlBwNGdMclM2b1UzSGZEbUxCbnFmVjhUcVZXRkVy?=
 =?utf-8?B?SmNaVTdoYjc4YllzZE9GM3JFQUdIM0FBTzZQR0RXcEEya1praWd3bkExOGM5?=
 =?utf-8?B?TlE0cllFM2ZPNDBNb1p2aXVSZTUyeVhqc24va0YxY0o3MFdNQVNQSE1TTGNJ?=
 =?utf-8?B?SkhUTndZd3RqcFBzNXprRDU0S2tiSHMwL3JJRzZrY1gzSTRmQlBmS2JVblAv?=
 =?utf-8?B?RVF2clJOOEdwUEdGWmEzK3BNQXYrSUsvcDZ6S0RFWVNSRHNMR3BlTVlZTzRP?=
 =?utf-8?B?RGtJSzNWeHBpeDViSmxHc29id2c3bzlkZjV2Nkh6VjFyNStSUWc0bS8rQk9z?=
 =?utf-8?B?RXA1aVMwZ0dtUzlHaDRZQUZOQ1RlRnQ5MER6d3pTbVlDNXVPSmdkQko1Q3I5?=
 =?utf-8?B?eGRwRWhWT0E2U3RoRFRMRmZpR1p5UEhnRStlZFo1UExwa2RrNGlWa20xRkIz?=
 =?utf-8?B?OXVwekdSRndtL0Y3MXJqcVVwZVhPc0E3Nm8rTldOd0pxVTZ1OFdFdHVabzJR?=
 =?utf-8?B?WFNHMDA5K0hTSW5TQ3V6azVsTzBRT2JrUXN3aWVOSkJ4NXlLT0FRREtaTFlR?=
 =?utf-8?B?T0xyNDNFeHNYcDkrVXNHWW1JbnduS2FtbDRrRFZQOENDY0o0cWtvaVAwYmw0?=
 =?utf-8?B?WW1XSHUrNk4zMnM5YjdpLzhiYUpISGFjMVM4UFViUTVoZlh0K0E4b2QxYjNW?=
 =?utf-8?B?Sy9BZ1ZjNHpHWnhuZ3ZiTndLNTBQSjFGOUJRM2o0Wm5EUmozMUtHZEN5QWtu?=
 =?utf-8?B?cHhQaG5rR205anFQdkw0MFZZNWMveGNiS2J2Ums2dEQ1b2NTUlNVTGpHQXo5?=
 =?utf-8?B?TEsrSWZGTytpbSs5Q0t4Y0tRTERDTERxYVRLVndxMGhLK05vVVdlOU84cWFY?=
 =?utf-8?B?OENvWlR1MFl6TFVkVHlVaDFCRGkwSjUydkpqVGxhdnpQbUNUU3BMeE8wUy9S?=
 =?utf-8?B?WjZhbU9kZlNXeG5KVGRoRjdROWJwSGVSMU9TODhDVXJDVTlHM2NRRDVQaW91?=
 =?utf-8?B?SUFkWjlkaE5GbHQwa0pabEUvd2xjM251eDF2dTBJaHJwVUVodURDQ2tyeEsr?=
 =?utf-8?B?Umd6NXY3eVpMcGdSaGRLcnF5UlJSeWMyd0QyTDBJYkFqbVFMNzR0MnNxNld2?=
 =?utf-8?B?Sm1IMDR2YzhCNzd6UldaclNjaFl6S1NkbmFLQlJWMXY2WFVHaWVpUXV2OFVL?=
 =?utf-8?B?YmJqbmE2ZitRRXJaektPa3MxWWR5RWs1b1pzaVdpeTdMb2xsdTV0Vmk3Rjhr?=
 =?utf-8?B?a2JMRWdOdXl1VituQzFiQUVyTUtaYUJxRWMxN0tSZy9EYXRRR0Jacm9lMkZJ?=
 =?utf-8?B?SjUzcTRCeDFYMEVOVEQ1Q1pVYWl4d2s1YnVOekFJWFlZeEVGaWtiR1JvRi9l?=
 =?utf-8?B?Q1h0SGdDNkR4eFNlZkltdFo5dVdrR3dld0VBM3JqMGxnc3FTMEswNmJCV1Nk?=
 =?utf-8?B?cCtLRWdRS21IUEVwVGVWSDVpUEljdERGS0dxTVU3MHBaMWtOd0pxMndjMGZG?=
 =?utf-8?B?c3loYlREUXB1b0RYYzZOM3d3cmp6c2JqbXA1eHh4SXJVaGZjRGZrajF4TWls?=
 =?utf-8?B?T0IrVUpPS0x0bU5NOGU3V084Rk9PM0JaQmNVTUl5cUUydmN4VUdJc1J6Q05M?=
 =?utf-8?B?T3JYOWlVeXFxaDBzNUZ6WC9rQmU0ZHlncHhEVUtYUTFMd3pVVmdQYWxCdHB2?=
 =?utf-8?B?ZEpNK2FDN3NoM1dweTNEVS9jR3dZUXJUM2xDaDZyaVNUK2t6VUpha3Q0TFlK?=
 =?utf-8?B?cFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 80747f25-68d1-4a09-47e0-08dba255cfac
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Aug 2023 14:49:24.6315 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Rlzjq68qH+qITsOQvnF32jJ28evL9eaHLQP58VMUUi1Elm8Ca4xHP07cCEW9B2leB+3S4++1jzCEV3zZyiXG0A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4891
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 9/9] drm/i915: Replace several
 IS_METEORLAKE with proper IP version checks
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Matt Roper (2023-08-14 17:06:42-03:00)
>Many of the IS_METEORLAKE conditions throughout the driver are supposed
>to be checks for Xe_LPG and/or Xe_LPM+ IP, not for the MTL platform
>specifically.  Update those checks to ensure that the code will still
>operate properly if/when these IP versions show up on future platforms.
>
>v2:
> - Update two more conditions (one for pg_enable, one for MTL HuC
>   compatibility).
>
>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>---
> drivers/gpu/drm/i915/gem/i915_gem_create.c | 4 ++--
> drivers/gpu/drm/i915/gt/intel_engine_pm.c  | 2 +-
> drivers/gpu/drm/i915/gt/intel_mocs.c       | 2 +-
> drivers/gpu/drm/i915/gt/intel_rc6.c        | 2 +-
> drivers/gpu/drm/i915/gt/intel_reset.c      | 2 +-
> drivers/gpu/drm/i915/gt/intel_rps.c        | 2 +-
> drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c   | 3 ++-
> drivers/gpu/drm/i915/i915_debugfs.c        | 2 +-
> drivers/gpu/drm/i915/i915_perf.c           | 8 +++++---
> 9 files changed, 15 insertions(+), 12 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/gem/i915_gem_create.c b/drivers/gpu/drm/=
i915/gem/i915_gem_create.c
>index d24c0ce8805c..19156ba4b9ef 100644
>--- a/drivers/gpu/drm/i915/gem/i915_gem_create.c
>+++ b/drivers/gpu/drm/i915/gem/i915_gem_create.c
>@@ -405,8 +405,8 @@ static int ext_set_pat(struct i915_user_extension __us=
er *base, void *data)
>         BUILD_BUG_ON(sizeof(struct drm_i915_gem_create_ext_set_pat) !=3D
>                      offsetofend(struct drm_i915_gem_create_ext_set_pat, =
rsvd));
>=20
>-        /* Limiting the extension only to Meteor Lake */
>-        if (!IS_METEORLAKE(i915))
>+        /* Limiting the extension only to Xe_LPG and beyond */
>+        if (GRAPHICS_VER_FULL(i915) < IP_VER(12, 70))
>                 return -ENODEV;
>=20
>         if (copy_from_user(&ext, base, sizeof(ext)))
>diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i=
915/gt/intel_engine_pm.c
>index b538b5c04948..e91fc881dbf1 100644
>--- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
>+++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
>@@ -21,7 +21,7 @@ static void intel_gsc_idle_msg_enable(struct intel_engin=
e_cs *engine)
> {
>         struct drm_i915_private *i915 =3D engine->i915;
>=20
>-        if (IS_METEORLAKE(i915) && engine->id =3D=3D GSC0) {
>+        if (MEDIA_VER(i915) >=3D 13 && engine->id =3D=3D GSC0) {
>                 intel_uncore_write(engine->gt->uncore,
>                                    RC_PSMI_CTRL_GSCCS,
>                                    _MASKED_BIT_DISABLE(IDLE_MSG_DISABLE))=
;
>diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/g=
t/intel_mocs.c
>index 2c014407225c..a2d8a271fe68 100644
>--- a/drivers/gpu/drm/i915/gt/intel_mocs.c
>+++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
>@@ -507,7 +507,7 @@ static unsigned int get_mocs_settings(const struct drm=
_i915_private *i915,
>         memset(table, 0, sizeof(struct drm_i915_mocs_table));
>=20
>         table->unused_entries_index =3D I915_MOCS_PTE;
>-        if (IS_METEORLAKE(i915)) {
>+        if (IS_GFX_GT_IP_RANGE(&i915->gt0, IP_VER(12, 70), IP_VER(12, 71)=
)) {
>                 table->size =3D ARRAY_SIZE(mtl_mocs_table);
>                 table->table =3D mtl_mocs_table;
>                 table->n_entries =3D MTL_NUM_MOCS_ENTRIES;
>diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt=
/intel_rc6.c
>index 748b0c695072..a5d725508c77 100644
>--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
>+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
>@@ -123,7 +123,7 @@ static void gen11_rc6_enable(struct intel_rc6 *rc6)
>          * temporary wa and should be removed after fixing real cause
>          * of forcewake timeouts.
>          */
>-        if (IS_METEORLAKE(gt->i915) ||
>+        if (IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 71)) ||
>             IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_C0) ||
>             IS_DG2_GRAPHICS_STEP(gt->i915, G11, STEP_A0, STEP_B0))
>                 pg_enable =3D
>diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/=
gt/intel_reset.c
>index fd6c22aeb670..98575d79c446 100644
>--- a/drivers/gpu/drm/i915/gt/intel_reset.c
>+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
>@@ -705,7 +705,7 @@ static int __reset_guc(struct intel_gt *gt)
>=20
> static bool needs_wa_14015076503(struct intel_gt *gt, intel_engine_mask_t=
 engine_mask)
> {
>-        if (!IS_METEORLAKE(gt->i915) || !HAS_ENGINE(gt, GSC0))
>+        if (MEDIA_VER_FULL(gt->i915) !=3D IP_VER(13, 0) || !HAS_ENGINE(gt=
, GSC0))
>                 return false;
>=20
>         if (!__HAS_ENGINE(engine_mask, GSC0))
>diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt=
/intel_rps.c
>index 092542f53aad..4feef874e6d6 100644
>--- a/drivers/gpu/drm/i915/gt/intel_rps.c
>+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
>@@ -1161,7 +1161,7 @@ void gen6_rps_get_freq_caps(struct intel_rps *rps, s=
truct intel_rps_freq_caps *c
> {
>         struct drm_i915_private *i915 =3D rps_to_i915(rps);
>=20
>-        if (IS_METEORLAKE(i915))
>+        if (GRAPHICS_VER_FULL(i915) >=3D IP_VER(12, 70))
>                 return mtl_get_freq_caps(rps, caps);
>         else
>                 return __gen6_rps_get_freq_caps(rps, caps);
>diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i9=
15/gt/uc/intel_uc_fw.c
>index 32e27e9a2490..ba494a4a967a 100644
>--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
>+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
>@@ -850,7 +850,8 @@ int intel_uc_check_file_version(struct intel_uc_fw *uc=
_fw, bool *old_ver)
>          * not working with newer ones. This is specific to MTL and we
>          * don't expect it to extend to other platforms.
>          */
>-        if (IS_METEORLAKE(gt->i915) && uc_fw->type =3D=3D INTEL_UC_FW_TYP=
E_HUC) {
>+        if (MEDIA_VER_FULL(gt->i915) =3D=3D IP_VER(13, 0) &&
>+            uc_fw->type =3D=3D INTEL_UC_FW_TYPE_HUC) {

The comment says the issue is specific to MTL. Can we confirm the issue is
actually tied to the media gt instead of the MTL platform?

  * If yes, then we
    should update the comment as well (and maybe rename
    check_mtl_huc_guc_compatibility()?).

  * If not, then we should discard this hunk.

>                 ret =3D check_mtl_huc_guc_compatibility(gt, selected);
>                 if (ret)
>                         return ret;
>diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i9=
15_debugfs.c
>index 4de44cf1026d..7a90a2e32c9f 100644
>--- a/drivers/gpu/drm/i915/i915_debugfs.c
>+++ b/drivers/gpu/drm/i915/i915_debugfs.c
>@@ -144,7 +144,7 @@ static const char *i915_cache_level_str(struct drm_i91=
5_gem_object *obj)
> {
>         struct drm_i915_private *i915 =3D obj_to_i915(obj);
>=20
>-        if (IS_METEORLAKE(i915)) {
>+        if (IS_GFX_GT_IP_RANGE(to_gt(i915), IP_VER(12, 70), IP_VER(12, 71=
))) {
>                 switch (obj->pat_index) {
>                 case 0: return " WB";
>                 case 1: return " WT";
>diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_=
perf.c
>index 2ef8addb0cfd..f3ab6f65a556 100644
>--- a/drivers/gpu/drm/i915/i915_perf.c
>+++ b/drivers/gpu/drm/i915/i915_perf.c
>@@ -3227,11 +3227,13 @@ get_sseu_config(struct intel_sseu *out_sseu,
>  */
> u32 i915_perf_oa_timestamp_frequency(struct drm_i915_private *i915)
> {
>+        struct intel_gt *gt =3D to_gt(i915);
>+
>         /*
>          * Wa_18013179988:dg2
>-         * Wa_14015846243:mtl
>+         * Wa_14015846243:xelpg

Should we take this opportunity to use the correct lineage number (18013179=
988)
here?

--
Gustavo Sousa

>          */
>-        if (IS_DG2(i915) || IS_METEORLAKE(i915)) {
>+        if (IS_DG2(i915) || IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER=
(12, 71))) {
>                 intel_wakeref_t wakeref;
>                 u32 reg, shift;
>=20
>@@ -4539,7 +4541,7 @@ static bool xehp_is_valid_b_counter_addr(struct i915=
_perf *perf, u32 addr)
>=20
> static bool gen12_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
> {
>-        if (IS_METEORLAKE(perf->i915))
>+        if (GRAPHICS_VER_FULL(perf->i915) >=3D IP_VER(12, 70))
>                 return reg_in_range_table(addr, mtl_oa_mux_regs);
>         else
>                 return reg_in_range_table(addr, gen12_oa_mux_regs);
>--=20
>2.41.0
>
