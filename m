Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mAtACMzFhWnAGAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 11:43:24 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ED45FCBE9
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 11:43:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41DFB10E6F5;
	Fri,  6 Feb 2026 10:43:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kODeZWnl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D69510E6F1;
 Fri,  6 Feb 2026 10:43:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770374601; x=1801910601;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=nK61zuaTzCmdaC3eqBDLz03a+f4dzx6izj/xjJ3Y7Dc=;
 b=kODeZWnl3njyicWDV6noTpryQE3Gg/OQUVyDyFijfu1i0nZ1eEwvLUUR
 Yt5+/0FTEKxbgCUKpoS7kmcbSqVnSig/4KSH1RwljYHsleVwC9RSHFxVO
 w+MztB5AhQ+DfdmwjhR8eqgvJeMGEobYp6L14mBeDCSNe+lnFYwC1p+Vs
 /1Er/rYzqgSwtGmy7l3jtBSAZneiXp+AoqZiQgAuuYko/e7r4eij98odv
 7/q++VtXIzOokZM4OOn6/53Y4cxtJCInNf7f/acbK5aTj9DdNsWG+Zm4W
 2fzm8wW+Dj/9YkxW3FAdtD12fAM4D1FSjDnCs2H68GpDPw9l64raW/8ia Q==;
X-CSE-ConnectionGUID: 70MlmwPvTqeh31O1V1lMnQ==
X-CSE-MsgGUID: 8C6jAIVdSJSHQdokz384nA==
X-IronPort-AV: E=McAfee;i="6800,10657,11692"; a="82318515"
X-IronPort-AV: E=Sophos;i="6.21,276,1763452800"; d="scan'208";a="82318515"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2026 02:43:20 -0800
X-CSE-ConnectionGUID: G6VEQOfRTXiEBOctcbiiRw==
X-CSE-MsgGUID: ndiSaIOXSLqNfyZhBbky4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,276,1763452800"; d="scan'208";a="241315603"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2026 02:43:20 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 6 Feb 2026 02:43:19 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 6 Feb 2026 02:43:19 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.58) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 6 Feb 2026 02:43:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=W3Lif+27oCZNiLW08VzDhoVgttkgyMyrXhv9jO8uHfx6ht0LXc46rE0H8T2oVdecofWZQs1va/w6NI97G4CU8BeDkgtVwooLL8O1y7omuWBUIclKr3yduAKzYQk1tYSC2rbER44qMY5fka5J31En0/MwYCnHt8a84RSOCf+J5+eXZi3MbXN+nrGes3mL0f8nFnxswhJsyx7IU3eZqSKkmLTsH9RCvHMl1oxQCYK/jScP3H3GFR6zdNRvV19/PiKSCnlhvpPQcq6QuPZXettMJJtPinmK6YcIN+7tt+wigbw6g/AAc2OxF8dXnlOj+ZErV9jYsJ+6ck5p6aF3FGeV7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ftQPQk0VG5OCWZCtq1tWklZrZ5dfwfrqMhOA4lOobVI=;
 b=rj9wH8FIU2v3eTWipijiWTCz5QXVty5dSDv6fqWKXrY5eb/Vn5zoJQC5+4y1QZdU22S/Raq2lp99u4CPa9It5WTxKWIr5DfgOoSsQREd6C+20dy6MQDUd8lmx1s+tHNMnzqaZhonIQmfBG6YpF6Sy9vTaIXth3B79hbTH+gu2Rs+seCEpad62fJCr2XvsOf9IdaHV6M+FR8LEgNY8IGumbpd+bMtUreJqnOs0hSpSzt+uZ7hsLNWMHIcp6ecSaTqTmDxbJN9K2sfIxeJ7VSVF7a3KLRgRiAObk9PpsUdApVOmDrhG+O4HR6GlqmtugOg2uZj3Qof4V4rMtLRxErnHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ0PR11MB5053.namprd11.prod.outlook.com (2603:10b6:a03:2af::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.12; Fri, 6 Feb
 2026 10:43:18 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%4]) with mapi id 15.20.9587.013; Fri, 6 Feb 2026
 10:43:17 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 <stable@vger.kernel.org>
Subject: [PATCH 1/2] drm/i915/dp: Fix pipe BPP clamping due to HDR
Date: Fri, 6 Feb 2026 12:42:26 +0200
Message-ID: <20260206104227.290231-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GV3P280CA0053.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:9::21) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SJ0PR11MB5053:EE_
X-MS-Office365-Filtering-Correlation-Id: f60348cb-3958-4b1f-6eb9-08de656c89de
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?ynC3cwHAk8ESKWMvPDbMcROjzAuVwkYGcBRyFu0eSLdGVCDkL43C7C8KaMjA?=
 =?us-ascii?Q?V8rkvXMfy7rOEqAXjv4U+isSBcJfvdHUCPG9dnRcs+SXpgF/nyn7vuCrnFH/?=
 =?us-ascii?Q?1mRL3qVS6r9ztM3QAnw/Hybictyz/AQA0yWECqYVgqYkAT2xaT58M5bny9yT?=
 =?us-ascii?Q?1t9pf7fuu/imWjd8CDpUsorYYwf3B6XIqNrE6wAblacBCLEFL7WNuqC3Fw3s?=
 =?us-ascii?Q?b0SNtcvvKm1GBsmGCM++LrMEeYwvW3qRJzvCtEBKraGAdQRAvjfuukfZMgHd?=
 =?us-ascii?Q?wsv1MMV0JWWacCfFyJlbi68KepfMlDE4fMTqm8raJ5QEo4kq/jSUY7PZeDvg?=
 =?us-ascii?Q?SdEvEtmgRLt9JKP4cF/Qsd9xOk13vwj0eCWE4wpwAcsq+nnFR+IlFUGQ8S7Z?=
 =?us-ascii?Q?WVAQcYlXVP7OvnVx231Gf/hPPLyDOzHqvcnOIjmvrFKPFgh/j9YHaWVOG5Gi?=
 =?us-ascii?Q?kPQprL3BFsyAuAaBUk79qamF8tJycM5/+b7UsPeh9WmWJqefeYNaEss6Ki4n?=
 =?us-ascii?Q?RiswgEqQ3tSHeCfTuKd4j+2lA7XdOVZIPD+6e27+w/xqjyB0XJfa8KU+IJx9?=
 =?us-ascii?Q?7bl0l6qJ98rRjFZf+iwV557w/rd0EO8OfWMIoqK21gNyr+VFIbwdJye6Ujc+?=
 =?us-ascii?Q?MGEF42kqMGkliimBPpc1YvXQ8STU9zGH+mDLcJfte1vpkDu0zcvuBjhNgrfr?=
 =?us-ascii?Q?5ZOV1XHnOynYxV7Il3e/eA5OgAOLvMHJAR0Jj4MwtG4B1JNOMCH++9WU1dGD?=
 =?us-ascii?Q?9xz5I4b1ENHOpRqwYTdmNWd4/5u5j5frHyC7ovUEaLYJ+ddw6MPTHWpm4I6S?=
 =?us-ascii?Q?rAKnQzamVt/EIolFEZPzP8RJ4l154APTQtiCzVW/NdY7hBmE6RynAjWulfKn?=
 =?us-ascii?Q?3f/JGh8SipVqU9wBOO7O1PuOUpQDkq8OjYKE+KCPAq2ALP8cNXRgzCwWqT8Q?=
 =?us-ascii?Q?pezEpNwyxC7TKPbnm6oG8NKddYPCubNwsHLmgtqCzn7llBXDS1XLCU4L1uHn?=
 =?us-ascii?Q?346YXJ5Qha9xace4oDPQyxL2Ls+UJ6p6wVDJgbBMnlrzepOtFmbtexActs5K?=
 =?us-ascii?Q?Vvx07OYt/8PGFN0jJLcGRXc/AwlYO3qLSjkN+kcBTs00D3xkEcdTJRuYKqRj?=
 =?us-ascii?Q?6OskEjsxLEUCCJwre4odKNugETH7aiA1IAQQDpz2p/OvX9zdcqyC/BaJ0hI2?=
 =?us-ascii?Q?IN5Hf6xqZ5KwJvXus0vWU9eBksDf/arRE76N37QhMc72wNNddrElIbA/vzfW?=
 =?us-ascii?Q?LT8uYN8gwUB/myEEnDJs0L4gruHPexX923hX/1pO/Aqc8mAvLimziZAH6De3?=
 =?us-ascii?Q?b/Dvny0Lm+KixLjxcfJIHVyTEROnYezZee2H6OMD0TVwBlK/ziYpFmH+hclR?=
 =?us-ascii?Q?wr8Ild6LCkPJmtj8XviLXjNzq85gmVhjZCGybJ1Q7auLNnDI/g1sxtktSp8S?=
 =?us-ascii?Q?tXmr/om98VeNcscxvjSvA+PJIWSB1/spQXAe1iOn9Ey/JcMmmq+yR5cgBg6m?=
 =?us-ascii?Q?0k8w8WVPBRbCNcaRxJ66b7guCPna2iu1GOB4+jT+9gw38xfRBAlEbQTY8T/a?=
 =?us-ascii?Q?o011qi2Ub7uoOQ0Jb8I=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?hX0JQW+iesN6X27XhTA+b0JS0FzgI2KqebUuMP4U4dkt5UqzKB7NwIQl7r4P?=
 =?us-ascii?Q?XS3o8390zt3gLtbbVRnRA5M6nAVZXv27hd9r1uweXhWRufu2B2MUP6QDxP6e?=
 =?us-ascii?Q?+g8LJ6jWUYzRRQlwi4MMdklLIx2+wkCtP/HrKbRqBTGk9Z51DhH78xRSqPCs?=
 =?us-ascii?Q?kNYxxO0H2ILjuGbxPGSwsH8rhO+L+gF9vJBNP6orUkkUd95uek7GPI3C0rdV?=
 =?us-ascii?Q?1oZB8H7468fIr9JDPsLZ1LEuFeOac2iyB+0HSoE/Wf3s15zPTSIeKgZMVmTs?=
 =?us-ascii?Q?Fgv2xN2s9aoFUqqVtxmIH1T9z7Rjnx+EqvVVFTQnCLeQWmUSrqL1TFwFaTqs?=
 =?us-ascii?Q?yqrVXHqhEsgAOyBR+iBi3+7KfUxql6jeekh2d0H5F6K7Rb5bR24oBPloi04z?=
 =?us-ascii?Q?ouO8gna2pdpPX7/OFxC3ux84nTTIOC4H5YKp2/m9qOtV//E0+2X3uNJ1OiyQ?=
 =?us-ascii?Q?wrXLbHyNrtFMjRAiPeXTodH6C83DbmFsEo68WEy9UnPuJu3nP1Kkzd6P4cRL?=
 =?us-ascii?Q?TBkEl0ao+zqb2zwTI2YHX1Nn8M83FJxc85UfY3AMCSSGEgCZx1ay4vh5k8Mx?=
 =?us-ascii?Q?C7m6gtlMKIsgkMefCgQslIJvhABS0QOHanrX9/Pamz4ymvgHt632y2z4XnKX?=
 =?us-ascii?Q?79cNsOmrn4cL9YENQ2qmAXN2mQuvOtCUhByleHTQrbHHqInObgCt4uHrU6jT?=
 =?us-ascii?Q?MHt3yZrX54oy0Iw2jRapPup46zojlxe6/Yz4/Hro7qYs8oYP2KZcSsE/Oix8?=
 =?us-ascii?Q?VDHv/8SfrAJoMsuZNIwEwfr1UgkO1obBHuVjyvAhePPEcg0XghHp0mshlK6O?=
 =?us-ascii?Q?JJq6HAtoyzkWNfEOXjIc/MZf+qy2No3evmdJCT1NBdstKudydZNtG7AtB+UI?=
 =?us-ascii?Q?goVBtfkd2gHrTI9P0Cp6nwan7+lPpPcv90wV2qD7ELVsG8ZysOZKzY3ThAFp?=
 =?us-ascii?Q?nyzYdHC/RclshvTXg+DJk/J1L8EqtZjif/570vlEUx0mJcPsCRMuo1S2x7DQ?=
 =?us-ascii?Q?8/pK9lV1haG+ORnNWKU+v8x0O3iJ6OnzNCXm8lkQSkEcMduEtWQyUO6Qvb5q?=
 =?us-ascii?Q?H1YcrlLjCBeXS21tZgHobF/n2q6I68+EnFYGqSZGymhpTVpgmydUjEQMxRNk?=
 =?us-ascii?Q?YxM/cGg589mzS/yIpCVY71DEZh39LZyANDcCx7XqZRJTiw38myBKXy8n6PwH?=
 =?us-ascii?Q?DNj6lFp1aKCEQwC9NXB6x4vgUxpynACbuDUF/Viwut8YYoViK+14GReSHlNO?=
 =?us-ascii?Q?RAifN1pIiLeJzuG7q2oIbUkpTJLCxCd7Vm0LxcjJjLrBuM8dKNpPGODMx6mU?=
 =?us-ascii?Q?03eUqjF2BWLKfgBsvidECeJJpeZQAHXEGgqSB+PGk3ckLAZbDg9hMP/hWXtl?=
 =?us-ascii?Q?Kjd9co+RvaKPHidlImUBKGYaZelHRCTETeAcbjXqFWDU6UcdTCt102drnU9H?=
 =?us-ascii?Q?bv+DDxkyZK0U1PAnuGz5yxebi1LGIghivad57JAnr29ipzo2DW+gu26Ic0S2?=
 =?us-ascii?Q?e2ebJi/dKWtb5CccA3ryTJnTs3t14ZkIPlW96xQQBhNzpTxGwBXrkhYLahWQ?=
 =?us-ascii?Q?rn1ly+AxevYrxwpkkxTqpxg82jyX9DtmtXrWkjeh+ix0niVS5Bge9t89ayjR?=
 =?us-ascii?Q?G3hvDBd1D5RZ94RbcjfqvvnvOODcdlu4wVsvnjAycCSuERoWa0ljtB0joOrq?=
 =?us-ascii?Q?vc3aU7aBO58aC6Vh4uAFwO3niuN8T7OT6QvRtckl4pPh7sBeReSRyw6gmjgr?=
 =?us-ascii?Q?f+6HbO9jhQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f60348cb-3958-4b1f-6eb9-08de656c89de
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Feb 2026 10:43:17.8015 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HbOyPDiuAlk8XOxf+XRlVNCGLgT6/+dv+exUw5sCwlXzM6TAtWcuB31OL3hVw/xitQ1L6GN8wvdpgQGaDGxqYA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5053
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 5ED45FCBE9
X-Rspamd-Action: no action

The pipe BPP value shouldn't be set outside of the source's / sink's
valid pipe BPP range, ensure this when increasing the minimum pipe BPP
value to 30 due to HDR.

Fixes: ba49a4643cf53 ("drm/i915/dp: Set min_bpp limit to 30 in HDR mode")
Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: <stable@vger.kernel.org> # v6.18+
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 2b8f43e211741..4d8f480cf803f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2697,6 +2697,7 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
 			       bool dsc,
 			       struct link_config_limits *limits)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
 	bool is_mst = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
 	struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
@@ -2709,8 +2710,7 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
 	limits->min_lane_count = intel_dp_min_lane_count(intel_dp);
 	limits->max_lane_count = intel_dp_max_lane_count(intel_dp);
 
-	limits->pipe.min_bpp = intel_dp_in_hdr_mode(conn_state) ? 30 :
-				intel_dp_min_bpp(crtc_state->output_format);
+	limits->pipe.min_bpp = intel_dp_min_bpp(crtc_state->output_format);
 	if (is_mst) {
 		/*
 		 * FIXME: If all the streams can't fit into the link with their
@@ -2726,6 +2726,16 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
 							respect_downstream_limits);
 	}
 
+	if (intel_dp_in_hdr_mode(conn_state)) {
+		if (limits->pipe.min_bpp <= 30 && limits->pipe.max_bpp >= 30)
+			limits->pipe.min_bpp = 30;
+		else
+			drm_dbg_kms(display->drm,
+				    "[CONNECTOR:%d:%s] HDR min 30 bpp outside of valid pipe bpp range (%d-%d)\n",
+				    connector->base.base.id, connector->base.name,
+				    limits->pipe.min_bpp, limits->pipe.max_bpp);
+	}
+
 	if (dsc && !intel_dp_dsc_compute_pipe_bpp_limits(connector, limits))
 		return false;
 
-- 
2.49.1

