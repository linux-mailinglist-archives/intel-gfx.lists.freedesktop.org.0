Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0128B071E9
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Jul 2025 11:37:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 530F710E70D;
	Wed, 16 Jul 2025 09:37:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="en8b/fER";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C268A10E762
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Jul 2025 09:37:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752658657; x=1784194657;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=KzjnSPpZoyYCIQwAdW5QMwAiD7hvYU+xGUR2NsrD7ro=;
 b=en8b/fERPeJUcAElzEPbFQ3O6CHUC18Ieh6OFiP+BHfQC7jzfOtIziYO
 TuzSza9kGzyPciCDZQda22A0787vbgCpK5AKVPyP1tQ1nTUv62frF74aI
 sbqs7GjeoG84EesDxabfWJNar7ERkl7Y1Hd3auL/G2dOblgvhGwXsn6OL
 UrKVSSdx7sAcctpehKrmZUFr0SSzHOcMzvtfj+AzIadSxoTsL2mlMnbsQ
 HK0qN53ca+FGEIzug4j/W8XqFzygqSKtnDrYA+R2oTj1z0gZ7t+G5PLSY
 USTEuuzDeRUdcB7OT+Tp9UAw7WWVgLqf0O9GHAug9mM0/Qff432wuo0Xr A==;
X-CSE-ConnectionGUID: F6DwSurZShu5JVmVhttNjA==
X-CSE-MsgGUID: /CmJMY09Ttua9UCQpUQe5w==
X-IronPort-AV: E=McAfee;i="6800,10657,11493"; a="55018322"
X-IronPort-AV: E=Sophos;i="6.16,315,1744095600"; d="scan'208";a="55018322"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2025 02:37:37 -0700
X-CSE-ConnectionGUID: FRUi1XrgRCmDZ6izbjLv9Q==
X-CSE-MsgGUID: SDUz00e9QculhCYNyFJUKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,315,1744095600"; d="scan'208";a="161766442"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2025 02:37:36 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 16 Jul 2025 02:37:35 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 16 Jul 2025 02:37:35 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.82)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 16 Jul 2025 02:37:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Oy6nLGmTrdz6CXsntPmD6ef7gScg0HnXJuJa+MmrCTpX4evkKk692uUJTIRh53WP/xKKVP/4rXrjDkbu5MRNhaVNcdy4sBmGDBCIP4aJTH+BoqR0nHPu+glFcbPvfcJOJETet+rhPtRfr+0Fds71gNa1Hn0updfNLqpFUzQGNvTtMHQMKSenhzDHyoYZjtZ394ZDXBE+hYsr5CPYXlFbj4tCUHfJLak9HV9qAQ6/2VGk2XL2nEiYDOM/e3dZ3ghLsll3ZBCK/1uJTjUThK/gqM8sXSfBz8m8Y2MhXzf8iYU/dZJNQwBBQjUpyieh0gqon2IKBUFqjTfVLvvT7hVImg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i5HpBMMNSj/WWf2X3Qd91sowiQ9/FdconsDaQF5a54s=;
 b=Pvqnf3GAjEQ9n6crWyMHsIN8T+M99H726jDfvlNar2oTd3ayGC2rARKjdfjWWAEKMpEkLxAusfHPR8tSNck6q9sVXIBhO9p3RQ7eKnb9Mfp+b+GteCfhB61MOlYLtx4WHUSmn9PU4Zycuw7RE2AJdRmIRiQd/GpnRa632AL2zJAdYles8hEkII3ON6x4MQOEwPinkRQWNi7QfC5a8k70rNLRifoYRWp3B0n/PaRwSBQ6pR6dXGR2Vdf3pcfMDl7T3yawUTdYkOsU1ThCwR+8PVT5Mx2lyxbL1h4FRycHvfzcBTtP6XUn/JrcObd7orNT9ZvYq4wrWOOMkxp936pElg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by BL4PR11MB8869.namprd11.prod.outlook.com (2603:10b6:208:5a8::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8922.32; Wed, 16 Jul
 2025 09:37:32 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%5]) with mapi id 15.20.8901.033; Wed, 16 Jul 2025
 09:37:32 +0000
Date: Wed, 16 Jul 2025 09:37:27 +0000
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <andi.shyti@linux.intel.com>,
 <krzysztof.karas@intel.com>, <sebastian.brzezinka@intel.com>
CC: <andi.shyti@linux.intel.com>, <krzysztof.karas@intel.com>, "Sebastian
 Brzezinka" <sebastian.brzezinka@intel.com>
Subject: [PATCH 3/3] drm/i915: Replaced hardcoded value 4095 with PAGE_SIZE - 1
Message-ID: <20250716093645.432689-4-sebastian.brzezinka@intel.com>
X-Mailer: git-send-email 2.34.1
References: <20250716093645.432689-1-sebastian.brzezinka@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20250716093645.432689-1-sebastian.brzezinka@intel.com>
X-ClientProxiedBy: VI1P190CA0014.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:802:2b::27) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|BL4PR11MB8869:EE_
X-MS-Office365-Filtering-Correlation-Id: 4b5a6f77-f596-4e04-50df-08ddc44c63b8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?R0RydDFIeXI2WUluY0gvYUpEVDNqckNYWldnK2lHbURGV1BGRHZqZTJvNytr?=
 =?utf-8?B?bDBJMlZLSUxKMC8vU2ZZT2FmTS80UUJld1pBeEgxMXljd21RanUrb0t1NmVw?=
 =?utf-8?B?bzBSdW9naXNVR0tibjlGK1R6SjBjZXB5eFJGNEc4UlBSNkgrenZrd3RVb0k0?=
 =?utf-8?B?QTRFYjRsbFpScDR0SU1TbUE2My9nT1ViamI1U1hlMzlQdjg1ZlFPUGR1SmQ4?=
 =?utf-8?B?RGlMZ3hJTEszQW5mM3dzeW8zZDlIODhabnpmZzVEVG5naEFnakNraEF4UDl1?=
 =?utf-8?B?VGpzaWQ0czM1dDl2aUxsOEFQdEdEKzBGRGZoWFVJWDJNMnN5blA1RnNzWkxN?=
 =?utf-8?B?OXU5YmVQQzlJUlhZOCtRRFJNMU9HN3Z1cVQrRWJ0RW9CN3lBNmpSQU11Tkhk?=
 =?utf-8?B?bXhickNHZWhhOERIcWtXWlErNWQ0Y2RHbVdpWkxtQVpaV29IYm5VNFNPcGtV?=
 =?utf-8?B?bjA3NjZNS2M1akFsckJjKzBLSi9CQVdTVGNPZDBraDZGMmtwQlZMRWFIemk4?=
 =?utf-8?B?dU9BRkJtSTBEMSsrZGM3UUhiVlhPclRSekptVDVaTTFqUkV0SGFrTm1RUFpB?=
 =?utf-8?B?bzhvZU01T3VWQ25hRXhxUnF1ckdDb1BNTWhuRCthaVpUc21Qem85VTlYc2Jp?=
 =?utf-8?B?QXQwTnE1OUsreW9TZDF5OWVtUEcvODF1SCtXRUFEZXVpdER3MXN0cUlHM3gw?=
 =?utf-8?B?bTlhamMwZ2Q4QWhFNkpyN2R0TGNPL21GWVNsd3lkTklMVUxXS2h4VDZTSDJY?=
 =?utf-8?B?L2wwTS93a2RPNVY2dVRZMVZEaWF3MlRWb1JHdHpkaVlyS3FoMi9kWTYvbER6?=
 =?utf-8?B?d09IWmdiZmJpaW1XMHhVdFZ2M010cGdVNjd1NGc1ekpXU2YwYlhTYXhtL0lS?=
 =?utf-8?B?VUFBbXhZTFF5bWIveEhFS1VUNXFoTUEyRkswV0RCR2xjY2N3U2YwdjU2cVUw?=
 =?utf-8?B?NHQzakVRbVp3bmhGVG9Oc2RSM0xJUG9EUEE2TnpTTStFb0NTRE9LUUxVZmxL?=
 =?utf-8?B?YnVISUFhSVNuVUFkR3hydmt4V2FqeDNDckZlbVZ1TGp3V29pVXVMblpMcGQr?=
 =?utf-8?B?WndyOUFwS3VpZ2psRzZHZ29DTUlXaWJaY0xNbGI2TC9PMkZPcWV6RDVqb0Ez?=
 =?utf-8?B?Mis4a1dGcTlZejA3RnhNaU5ZNHNmVDdSM1NWMGxEbUxHWUNwdkpNZ0phSmZp?=
 =?utf-8?B?VlZUUmYwOFRqRk5rUTJjWnBXdXlvNEdoQ3hrbE5OVjFrQWRpMitOZ1JZRzdu?=
 =?utf-8?B?UzdZbVBTTFhCcC9xVnRlUXd2cGlCbVV5V1p1R291OW5LVkh4VVNUZ2ZnQjIv?=
 =?utf-8?B?dFUvMm1SSlJFdWZrY3ZnR2VFZ3U1aUd0NTRjLzdya0E5UjI5MW9hUkljMUto?=
 =?utf-8?B?Q0d4S2xMRHZpQUNJZ3I0Y1dXTVB2QlVXZVRRRGtZM053WWlyR2VzN0JBaloz?=
 =?utf-8?B?ZWhSRkpOazBZbWZ5M1ZMdDJaZVV3T254RUk2WVJjM2xiRXNhS1FIWWMrL3JM?=
 =?utf-8?B?ZFgrcFdvMVYzQWVBek1vYzNkYklIRTNWVE1TdVNkY2hhSG1WSnhiNVZiazBs?=
 =?utf-8?B?V2VEd1MzUWJWd3pPejZzRE1qVXBaWjFBZWg2NkNDWXJ0L2svejdXcTZDVEpN?=
 =?utf-8?B?OGNJcU1RTDdOY3EzNVQ0NzY2VXJOR2lxQWVncnZ3NlBkOS9nekYvT3Q5MU5x?=
 =?utf-8?B?NUwwcUVJT1loU3lIeW8wQlZ2STZXOU1DRG1ZK2psL3d0Q3NXOW1PWDIvOFVL?=
 =?utf-8?B?Rm54cFhKaFFOS2hCSzhMeVp4Rjk3ZWE5dkkwMGx5UjRlVU0yZmlpaHROVWxD?=
 =?utf-8?B?aXZnVGFVNUR0Sk5WQXlzS3BaV0dFMWVXTVJveUpKTnlISks3Y3FBdGdEN3Y2?=
 =?utf-8?B?dnE0NnQybWRJcEdmV2Q1Tjc2MlBUVmtCT2JXYUxQa0lPYkZPRGdZTDFMUFdj?=
 =?utf-8?Q?PLF2wNjqNls=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RmloWCtkR2o2TlQ4Ly9BKy8wQnYzYXN1UExOWG8vTUtodG1TTmFUaWF5bWl4?=
 =?utf-8?B?TXJuN0NBb2lqa3Y5TW5hTUc0V0k5WWdWc2xGblVDUldJNzhROGdHNkVTRlh6?=
 =?utf-8?B?UE5XNHY5bmZtcGtqNVZ3VHB5ZTRhaUxPdE5CdFJMWTJERXpMTGVPWURudXpN?=
 =?utf-8?B?dU5Iamx2NmFSdXNVbFc5cTNhWThKUzlPZEs1VkUrN1YxSG5TSHI2OFF5RkVW?=
 =?utf-8?B?aXA4T3BjUzZrbVdjWnlTdXZJRDlnblRJcEVWZGQ5T3VxODFpb05OeW51Sk5j?=
 =?utf-8?B?Z1FlTVRibnJnMzc5YS9JYTB2UlJtUEJCSDlTSEVydUpEVnRsczNscFNFeVMv?=
 =?utf-8?B?d0NSRExTNzg1cHZSajZ2MExYeXVDWEpaM2pJYWIrMGhrdWVLZ01GYUEzZUtH?=
 =?utf-8?B?M3hMenI2UzhvdncySS9mbEs5bnM1ZWMyM1orL29URE90WW5JZHF4VnVQdnlm?=
 =?utf-8?B?MklWcGhuRDl6TENEVlRIaGkzczNQNFpKbGlPQXVpVi8rVklPZlBUMUVISE53?=
 =?utf-8?B?YmJmNVlJTDVWc0JBTFQ2WVRXR3haZlRacDZQT2czbk8waXR1cGJOQVhXWi92?=
 =?utf-8?B?WXZDVHkyVnI0UHNWaDRCWWVrZUdWOXBWRnJlVURQaWVFQU0yZkZYVUxYbjA4?=
 =?utf-8?B?bUdnRG9HNDVmUnBRRHVYdTJvcjk1dHowaUF4Y1pqNDJyZFNhWTh6U05lOVp1?=
 =?utf-8?B?K3Q0d043YzRGc1dKdDdnbGRDU1N6b1AwR3VzWWpZSEN2aTU1RC9BS3FWaVVL?=
 =?utf-8?B?b0xFYlV5WE5sa0hDVlg3ZkkzTHZlSlo4azgzQVU1RTMrTVpLaHMvRWpwSjd1?=
 =?utf-8?B?WEgveHViKzFwbGp2WTlaR0FVa2JTNjhmelZrS2twajRIOC9kRlVod0g3d3JX?=
 =?utf-8?B?WncvaXNMZTIxVTUzNEdhN1pHVmh0N0w1S0U1VVY0R0JCM09FN0h2YVZ3ZnQr?=
 =?utf-8?B?c0lJb2VsTHhxOXV2a0NlS3d3MWZaUlBseGtOQ0FSWGp1bUZKSE9nNlJGT1hU?=
 =?utf-8?B?K1kwUTJIbkU3NGQ1VzZIWU5GQkYxRnliQ2UyVStnVzZlV1JCSGRpNGRlQ0Vp?=
 =?utf-8?B?eXdaeDVEWTJmRUhaaktsNERqRXBvYW5NcW1kYlc4OGQ0VWxCdUFPb28va2dt?=
 =?utf-8?B?QVMwWGVsWmxGZnZNaEdvNk9XTktmYjAwd0RzN2g2SXpVRERFZE45TnMzWTZ0?=
 =?utf-8?B?Qm9TY2J1OGJ1QjhoeXJwMVFNVjNRVlhHcjE4USs5MmpMaTF0VEVWRU0veWw3?=
 =?utf-8?B?RGNzMUZQaEtTUU44SnlON1YrZ2sxcnp3cmQ5NXZqYmFDY0RzREQ5RjN1RUkw?=
 =?utf-8?B?RlNib1UyQ3NGZ0pDZnBxQWttYXFWV01KdDh6UlVVSy9lSmYyeGF0OVY1WU9B?=
 =?utf-8?B?ZVEwdGhoMG1uYjlpMG9abHJoRitzay9aMnpBeUZRWExuY250anE0TXdJNG9O?=
 =?utf-8?B?SVpLcUlZMjY0WUxaeDNTWFlyR3ROSWU4aXF3ZjdSUDBRZDU5SDRxUmV0Zlo4?=
 =?utf-8?B?STh1M011S2NMSVZBWGdFOXMrTEt3NEhkMkNUcjlEK3B4cE5NYXJQNUp0N2dm?=
 =?utf-8?B?bERuRTRCa0lYdzA4WEZJdFI3VGMyU2U2eVRHZEd1LytzNElTVHF3MkhYV1py?=
 =?utf-8?B?WWxDMWRoZmhiSUdocnVHWGN6Wlc0bzNsN0d2ajR4eW8yblF3aExoN0tlbnlF?=
 =?utf-8?B?T1RtVVFQazNJTU5nZXNlVzAyY3c2WVBoazZpWFh5MlBLbVJpVjBoU0RvNzNh?=
 =?utf-8?B?a213VU1RUnNSdkpzLzlnSTJsU1FxQlFwa3hmNDJSVjJ0aGVmZndtbGd6bzZz?=
 =?utf-8?B?eURrdjZmTENWMEgvc2kwTktTT3lraFpjcDhucDhSM0UrRXc3ZFAwdjdFS1ln?=
 =?utf-8?B?S1ZVVmdiZi9ZdWlkNTVyTmRWSnZuNHVCZFIxWnRSUDlVMmwxRGNOZFFyd1lq?=
 =?utf-8?B?TitoYUdtaERUbHF4WWtELy90UHdmUjR3Wmd0RUxzeWxqWDJ1dGxVTkhKYitU?=
 =?utf-8?B?SUdxOW9qNklGUFNtTmZxdDM5UmlLWDArUkgvbkJVc3ZNcWNCOXp4UHNYUlhS?=
 =?utf-8?B?SW5UZGI3WG9rMlozV1k2NGpBZXhZck42VU03enZMYnkrQ0xoa2prOGt3TDVh?=
 =?utf-8?B?QXVrbHUvdHFJdkZpZ0JjaDcxc1V3U0dMSGRvLzd6SVhhdmR3d09WSjNwYTZ3?=
 =?utf-8?Q?z1RuPbtcXJcXDZny9ATNrUg=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b5a6f77-f596-4e04-50df-08ddc44c63b8
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jul 2025 09:37:32.7314 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uQKbnDEuOyuu/Wh2esgZM/2J9phFz8PgxhVgNUcF1q5Bnvk/rOy4o/pA0X0RB1YER36aos2OVFjkOG+bFM/5Pxxo1v+AeZ/ptYGwZabzGXY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL4PR11MB8869
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

The value 4095 is most likely intended to represent PAGE_SIZE - 1.

Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index b2660445bb51..ea6d4f411c83 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -397,7 +397,7 @@ eb_vma_misplaced(const struct drm_i915_gem_exec_object2 *entry,
 		return true;
 
 	if (!(flags & EXEC_OBJECT_SUPPORTS_48B_ADDRESS) &&
-	    (start + size + 4095) >> 32)
+	    (start + size + PAGE_SIZE - 1) >> 32)
 		return true;
 
 	if (flags & __EXEC_OBJECT_NEEDS_MAP &&
-- 
2.34.1

