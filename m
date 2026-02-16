Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uEA/NqHBkmkSxQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Feb 2026 08:05:05 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 429301412E2
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Feb 2026 08:05:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D2A210E179;
	Mon, 16 Feb 2026 07:05:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CPl7RpPT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8FF110E093;
 Mon, 16 Feb 2026 07:05:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771225501; x=1802761501; h=from:to:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=Rl3NM8pWl+XRti9g1mRXWbMLSy1Sm1d1W4/Qz6BfVVQ=;
 b=CPl7RpPTrlD8jiOSm7o57TYdnoBkrEG2+sC5QlK3ahC+2VI7pXKOdDpm
 M8pbADfwWYXwSvARJrtKubw7ERNzxV8WdmEUcLtRuuEDUS8WieXE0Svz3
 Etespuoq/b5tw6ds2/BSZZCoUqlP1QbduOyD5YmzZBAJ0DSMm6uAFxb8f
 pR0IF+TrQoCDwWe1n5X0ifUXM9VsCKi76Ro4t9tCf6ga8C8cyf4AiVvKO
 17nHOT4orPsDIr/tTYUx9zupUQI2qroGuak9Xupp6GiYw5K2S0Xr6GXEs
 2LUd1tUzbEI9NnNqki+oR86qbFe/EnUXkYBQ2Bvul08Xk/NZPIrjVB6Ix g==;
X-CSE-ConnectionGUID: g9uyenDZSJyjgF6h2lShag==
X-CSE-MsgGUID: 7ctxDXJUSd2bp6DEm+gtYw==
X-IronPort-AV: E=McAfee;i="6800,10657,11702"; a="83743319"
X-IronPort-AV: E=Sophos;i="6.21,293,1763452800"; d="scan'208";a="83743319"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2026 23:05:01 -0800
X-CSE-ConnectionGUID: DB+GnRqGQ++BMmAsU143JA==
X-CSE-MsgGUID: +G1/zHEWQY2stYF4tiPLPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,293,1763452800"; d="scan'208";a="212838133"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2026 23:04:59 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Sun, 15 Feb 2026 23:04:59 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Sun, 15 Feb 2026 23:04:59 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.47) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Sun, 15 Feb 2026 23:04:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=l1g7Z7wTjT4xXG1xydcjjG2L95u7BH1t0mfDUeFNmTNWC4qC5DxaV809u6XK2GtYDQIMiwm0c7mMUexb0fYb20yq8VgSSS0GRP1Sj263B2bkCFPXnLQqW1ElXroVcoQ+myMIzneqfNFMy8tpRlZjthw1sDMbHDlZCLu2tG1IcaBZdWx2qBFxoA3b1MwsRibdqXndW6ZVkFZuCo6AYgORGaR47Knt8t+CD/Dk5v59FmjiiBAte8VC8GNP+t0KH0jlK5E9nrhK/94JYyMICErWubcVL5xo9SpbLUkjp+fUWfchh85NgpArRtpS9wYF/B6iuwIqZG1IVHiDuXictsmpTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xxK2A4xLI51pGq3uUCfVSaAC8oK6kEJI5tgmtv8SH2k=;
 b=iasBqUnkU0AevSgDOLvo2+tEexjCfYmbzYydAJR++l8KJbvefgpZ8qd0G0LXoqc3kp0+o5Tk8hcsNuZiGNzQEngkMZmng6voMb7hpGa6qa3oyooaHch4xN0SnbXw/wIsELbzoSNmSVOXDhnAk1AsAPbjnVJ5Ns1vsw1c22pT/Vnms8K9ydhV6BBt+X2K3XFQl99ysvNdbgxsDADWtmkf+62QOqVG+J988cAw6lgpBTA/ojshw5NiKlDAzKP7lqOM5kaYPjWdgBg9J1+VAQqT7JDa4pWLkox2ksOppHm6d9Aywd0bWKl9hGpA2fNR9Bx/jn12os+W5SpaaQK81KHrPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by BL1PR11MB5240.namprd11.prod.outlook.com (2603:10b6:208:30a::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.16; Mon, 16 Feb
 2026 07:04:57 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9611.013; Mon, 16 Feb 2026
 07:04:56 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 0/4] drm/i915/dp_mst: Allow DSC passthrough modes during
 validation
Date: Mon, 16 Feb 2026 09:04:17 +0200
Message-ID: <20260216070421.714884-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GV3PEPF00007A84.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:401::616) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|BL1PR11MB5240:EE_
X-MS-Office365-Filtering-Correlation-Id: 7126ead2-cf0a-4ae9-fe9f-08de6d29b11d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?UavfTX/C0SGj+KXX2UtYwsqCcfs57oIHrDNq+99G3OV9ymOG3XC6yPSrUkc5?=
 =?us-ascii?Q?L5ujXf2h1e5D4kMJaMfd5lzIVBA4vWDpMfPVDEmxqBVOu++JuBqiI3jEGEQ3?=
 =?us-ascii?Q?dOfpBd+0XU7wsfMoOL2xRkDEytB+k+qfgB3fvg6zTDbotMjVjNKp5Pj2Evg3?=
 =?us-ascii?Q?sLOn76x0vP1xISgnnl4Sc7sTDLq9lVQ1E4JIIn04mCpZqttRTXj8ajeKr2pw?=
 =?us-ascii?Q?OrOfaAYt9nJe9/H47/qoMQpv4EjQOywsP7Saq35R7V/lSJRfQEFtuuICPUV4?=
 =?us-ascii?Q?64iSqJycxzUbWjBTWWKFWSI2MCwMFfFoJNL9Lg57ul9YrS0lGv2twXD55eYn?=
 =?us-ascii?Q?x12xOxsZdJpg1A6/LOVXWy+/Snck4kKtySUsNHV6d01OaM0McF2RzrTUZ/Nz?=
 =?us-ascii?Q?ObYBJvmVBRDphtT1X7oIALLqnN0osol6Fkq5gWIu1jpfLj6dOo9Fwb3vNQLx?=
 =?us-ascii?Q?WGlWCSfDW53FUQKQiTfpjHxFlk7bOcggrXvZ88tsx9t1+N8vWx91xQ/6PEZW?=
 =?us-ascii?Q?nPF9HyEHGwzSO6eVuu+PQh0Nvue/iwNjtfJh0uuZSO/kSNHR4k+W5pa5sVTa?=
 =?us-ascii?Q?ayDGgyueZOnhxaYTPYPjrkVoGYcuswcAVyO5SokEF9a7xFRGEfnvHOp608sW?=
 =?us-ascii?Q?KzLLHIkJJ7m6p61htsZB/bqqb/IjbZTwaWMUC2Cr+E9IK23Tx/ozDAbDSg+2?=
 =?us-ascii?Q?R4elV7AHqE3XhL/f2Mvzs9MzucPGzYHTLyI7X7ikHJ42Wv251lWdIlG6qbRr?=
 =?us-ascii?Q?6s4xbSA6wSlM6TKHRrALOgxrqMPzK7Q+en14ktCugYzFEbtnrus83yDXKqSv?=
 =?us-ascii?Q?lA5ZJnOOY9snA+CwmsOAGBbyZXutlsioPE/pt39Q+96rf+nKkz6gKSxz8iiV?=
 =?us-ascii?Q?YdVw74KILGwMMe5PMwRDxmVIYBCmL28Rh+e35aUzS9dSsv5KpVWnV9FEgZf+?=
 =?us-ascii?Q?iORrcwjop62B7KhCxEPV0PoLAnSaiPv/NUkrUAmS8qcUqbvJ8NGQE7YmwHle?=
 =?us-ascii?Q?8bcxUp7XRXltSvJ3VbpHdjJsCxquPls/WzJmvlDKkCWd1LXFtpNt+OvgCnB5?=
 =?us-ascii?Q?sFkpgJg1LCd5TcA3Gw36JFPjH3NgS4+TZEDWCImpXE7pCBk9MSV83pY12S4Y?=
 =?us-ascii?Q?BNHj8qmrbjUfroefOJwqu4VQsfj2rNRUwPRYTq8Ad+lWBAB3bVwHJrZWvbdO?=
 =?us-ascii?Q?438o4cwjEAHLtqpenXUZ6JJuXZBM3AYgkHnq3npK6o78d0h8RbhdscNBaWSh?=
 =?us-ascii?Q?i9gAUce6bke2P0PviEOvRIkytCJX98FaFgZWwxzuFWrpJLevUth7moG9+fIP?=
 =?us-ascii?Q?EMNGeNt96NGySk8PBRTu1YwOlA2SQj49hB4mlA+fqGF8zGdY+rm0D2fhTIaj?=
 =?us-ascii?Q?aJLxg2sQvSwnXdIHgD2VPEn/kh8SmFdYosG0tCzaK7qVnX0zmj1GnWlEYXvl?=
 =?us-ascii?Q?PwmOJgqbSlYVfXr5xL5+R9W3/xK/YS88bGELv3cDpktvncWiRiGE+JJswL4v?=
 =?us-ascii?Q?sOHhqq4o2KCfWwSEM4Lra742Zxe8RHXzdgLfS+T8m1jXpdczTUWhLWJA485z?=
 =?us-ascii?Q?Mp2la4WdEGuig3lxMMk=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?QxfP9EtY4qwCstSH4xn1sU88LgFUbOd6XjwHVi/LznXY7rPSBiJstsVgMV5I?=
 =?us-ascii?Q?JB3Lssb8Z+N1FGGhrRRVp9AvVLWbnMl8uC2u5+URKCHknNyhsBOyqKSN7hkZ?=
 =?us-ascii?Q?sLqh9ZxoJ6wfDCb7SdpBg/9WcQR89sMFC2+rwLwCG+ZkPR0ZknlFM5LHeUr1?=
 =?us-ascii?Q?+1tb29b0olBYwctKGQV3MnEoKD7bNAvqJbAaPmXGpZertyUTdGRf3a6WVVCC?=
 =?us-ascii?Q?LuYRJWU3gjceK58rLKL6DA8xU10tw+ZxRKe7WbAbiyGi/hmNyX1h2UP43A1R?=
 =?us-ascii?Q?ApxUoEaaENw9fnHFB0PqbLX6SaolsMT0/kQRb2l2b1/eebVxQa3rsECk6Kla?=
 =?us-ascii?Q?FZSofF65ZOMAHdQOAf/qRgLyNoMVSA07EqsgtH4Ek8LqPB57dLrl6JsAvaQ/?=
 =?us-ascii?Q?lFIRJAmrqW0zbf3vCqIKWrUfoL4PnLP70DbbOZSkys5KfnQ9rWC6mnap7hOF?=
 =?us-ascii?Q?fCO+gmCLEjy9halcZYcjP8l3N3/YrC18DdgtDL3fE9WrlRttbRyjnV348S1b?=
 =?us-ascii?Q?oz59qgCmBzIAQ59MfoKEX9vMSubLVUupEnowwz0TsBhsw67mCjby3s9qG1Q4?=
 =?us-ascii?Q?0jSfpd+BfXKkS+58ibHsi/eBMewHOpsZ8fTdv+A//zx6PCT02JeKyWAqcyy2?=
 =?us-ascii?Q?1Nzc9NUFokzRkm058cQtPulBZB/UUjee9ZIQ/FYuD2zQH9JFnqwXrpkFpfSm?=
 =?us-ascii?Q?YwTEsMBk84r1wFxGov5Iu8xuboyceY2ESeadg84aAn0wL9wiKZd4a5pvu9XE?=
 =?us-ascii?Q?WRBOp90AeGlLI2vzIkgId6oqxIGis2Wl/5MzrPmUzcf1HvZyl46T2d9FW1eG?=
 =?us-ascii?Q?frgqVPeb1NuyfHgp9KbDGS5feQEeO/J6Gs+v7v6mofVeDfqK3t0zRL4C8+sS?=
 =?us-ascii?Q?st26fizaatcURcCIkJsSFdQHTwc9VZPqz4uQlHUfUVRH897OQGp4whcHNsxI?=
 =?us-ascii?Q?MQ/AixftfoMU9IuhlLGQPObPAhpjmvUQUSKAjAsVW0Rxlm4DBwvq7seSMVHd?=
 =?us-ascii?Q?QHMkNgGYmvFraGa8r7s4QOGNRA6D7rQ56SM1tBCjudS5PbEE+mNG7Sh6z3NR?=
 =?us-ascii?Q?USnjrttrII4y/8PJ+n496OoP+3qqojc/tOjgAKK6Wswt5QhnLJbUgjNoZhS9?=
 =?us-ascii?Q?+zZbvjIEpwNP6t+MJKr600Bxoo0dLcRRThuMtVXajcDwot/NcWIriu8ARcvX?=
 =?us-ascii?Q?SZffSLXaKgZK8FqiXNcBvcafxj1TbfW69I+rTjM54DzFm6SMufkyB2Z9jZkt?=
 =?us-ascii?Q?kkt43hekdCAnKGoqDHlDrvTmvwiNBB7Iqmpayb1C90AC8/9LPbkkhuPaXvdB?=
 =?us-ascii?Q?tUU9d9I7Em4J9xeHOU9rXpYVaMx3AsPvpWHgO6BqE35amDv0bE3DAJyEguEW?=
 =?us-ascii?Q?uvWhAsCAbSZXtsSF+pZBEraVSWD+I2+WBQEcJBA6mox4PcdT03TW4QViC/GW?=
 =?us-ascii?Q?OqzBIrKUMNET9bnVJ6ZkBTZVT1NbRt4+KVY7JgGXAAVnocgv2vOJChztysyx?=
 =?us-ascii?Q?W5hv7EzmnOAngTfIv9sYu1blrFk5QSt9yJfL5LX9dvpoVzpfA/qicTfU50gO?=
 =?us-ascii?Q?SOBL2Wha7g13fUIAimUFNFHkRG2SFIXgBBVi3+PKbnvpj3rXaQfHUCfHDzqu?=
 =?us-ascii?Q?ooRcSOVKs8b5iWnw1Wu3sGgVG6bcAMrJiaLaLrlCrzeB1pwUgJo7ErVKQ7C5?=
 =?us-ascii?Q?AF/7VwkiUpjAJxoiDo/5raPFNXnvxsgUa0jTLF6wW0Q/O7PA/p42EOTIe2Ry?=
 =?us-ascii?Q?cdvAXvqzMg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7126ead2-cf0a-4ae9-fe9f-08de6d29b11d
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Feb 2026 07:04:56.9038 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BhSYreldBTN1skDSiQaFn7Jn5DDdmkbSnKuG1R9pb0I4GTfxbyrzx75T5ytVv4Sga87l4cYzBbAcpm1lycawVA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5240
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 429301412E2
X-Rspamd-Action: no action

This patchset improves DSC handling during DP MST mode validation by
enabling modes requiring compression when DSC passthrough is available.
It also fixes a missing slice count validation.

Imre Deak (4):
  drm/i915/dp: Add missing slice count check during mode validation
  drm/i915/dp: Export intel_dp_compute_min_compressed_bpp_x16()
  drm/i915/dp_mst: Track min link BPP as x16 fixed-point during mode
    validation
  drm/i915/dp_mst: Allow modes requiring compression for DSC passthrough

 drivers/gpu/drm/i915/display/intel_dp.c     | 13 +++++++----
 drivers/gpu/drm/i915/display/intel_dp.h     |  2 ++
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 24 ++++++++++++++++-----
 3 files changed, 30 insertions(+), 9 deletions(-)

-- 
2.49.1

