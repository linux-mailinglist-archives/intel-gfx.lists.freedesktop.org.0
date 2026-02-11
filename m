Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OIOyABdvjGlmngAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Feb 2026 12:59:19 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4C05124063
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Feb 2026 12:59:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37F5E10E16F;
	Wed, 11 Feb 2026 11:59:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gdauM8q9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E600010E1B5;
 Wed, 11 Feb 2026 11:59:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770811156; x=1802347156;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=q/Rdoo974v9ixkZf4iCjLEru4of6NwQtODS3dyLomcU=;
 b=gdauM8q9HfnyiCYcMstdzb3+oPTt8udI99pxt3RGsdYVv/HquFJmBlYV
 o0YNeWRoOUs87z8z+TSeR2rlx+CbgW4elRwSUw6IqKptVEwdHybZLpIo2
 b3/apkU/iAna93tI7gA+PFmHrkjVwS9zAVlgY1zsfdN19R4oKr/bUbmhO
 fpZaozX0laabqHXj+4gsUIEpGJF+++pioUTVuAQ116lEeuiETwmzfwaGm
 TCk7+gLOejCc9nzcxeAUqdYQg3rMAHKj23I0ZUGISUFVVsD+vRSIM4n/P
 FNb3nCP84d3yzPhBwv1gdherdYAfDvpdU7Nu0NgMgDhRUZOGE9iX+i4Rx A==;
X-CSE-ConnectionGUID: 1NVpjOzmSWSDh/miD1Q6gg==
X-CSE-MsgGUID: jEOwKexdSHuFDkAkNbxIoA==
X-IronPort-AV: E=McAfee;i="6800,10657,11697"; a="71943852"
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="71943852"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2026 03:59:15 -0800
X-CSE-ConnectionGUID: lIjGutLgSTyn/QLdw6aY6Q==
X-CSE-MsgGUID: czlpVEV1Qy6vDo6x/42pYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="217191403"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2026 03:59:16 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 11 Feb 2026 03:59:15 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 11 Feb 2026 03:59:15 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.12) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 11 Feb 2026 03:59:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=K9S2T3BTxzf620L3aZTmh0B16Gxf7hm+V3KunTgCYyH9fMVVf4v4v2X2l4znx2floIj4luOk6vDrAWnPETg0Cv1zB7ILkxXOp/Q8DM+1aZuP8l2fQmDyvI5czBFodbjxu5EGJ3QKvllbk5BFUt0r+aiy7NZfLk3HJaomeQuYjhQOECwuiSRv4czfHpx3Ae6s46m88mqX8m4QF6R734ZkmKwhV+02GB5ocpnQarz2KEjvR71tj0HmPOQvGjPSRSj2ICiuuHhTOhOyhPda1yD+SliXjVOWBSnLKRz7Nd6dtLTukamaUpbh1w6q4sF/PMwU5MZ3T3A9evopXbpA0Fm0YQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QSBbuyhxAtBN4NsYJgbupmes+qZboOYMPk4QOqd+UM0=;
 b=O922WQ0QeB9abLk5nJstwr+ms/xRlEYpf3eGiVVicwKxpeOOwTic1NrLlcWxFV63FayRxrjGKEXX57nITmVtoBOXISp2tgqWINgPqnMIwP64/x6z2c5e2onKTJb0r4L5RQUJW6sAFEhzwC6C9gB58OlG14rCzJx4l96RyCjaoKrEN3hrfAl+1kkUqxMEXLKTp/dxSbKa0oy54mCPRBaZbmPWcAPWEz/FCssx4CwtBBJTfWteJKX+dArZUgF7+CswAXmHB6y7R1ZdG/uJcc+tEv5UoNgs4XguSFSuuVGUpIkU0H9aZPbJcAaC5ZVWvtdXavKCWbO+KOgawvphAKnnoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ0PR11MB5069.namprd11.prod.outlook.com (2603:10b6:a03:2ad::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.10; Wed, 11 Feb
 2026 11:59:08 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9611.008; Wed, 11 Feb 2026
 11:59:08 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 2/2] drm/i915/dp: Clamp the connector max_bpc request to the
 valid pipe bpp range
Date: Wed, 11 Feb 2026 13:58:11 +0200
Message-ID: <20260211115811.508496-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260211115811.508496-1-imre.deak@intel.com>
References: <20260211115811.508496-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GV3P280CA0025.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:b::21) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SJ0PR11MB5069:EE_
X-MS-Office365-Filtering-Correlation-Id: 98b2e068-9d06-4e3e-50c7-08de6964f63a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?PDr526SOjECqHcpScX8bhS3KN/NQnegdBLESZL92xEMUpGBVNNfHYON3cmhn?=
 =?us-ascii?Q?dDFAmCsSQumB/2H3AA2z1CM/yBOnXdLpsxAlO2nmh3xTQ4EHkndeaQTDNZ1+?=
 =?us-ascii?Q?63otAQb8Ok+9lz+JYZa7AmEqmpCk/wq20QSdqXOHA8py0KL/gYomWZxpWFvY?=
 =?us-ascii?Q?l89qGv+PIBTRvfDyN9tPdandXbbbFGpOw1ITtBb0OLILpU/fSWzl8TTv4A58?=
 =?us-ascii?Q?MO0IlbfkaCGKCTeP30UQyCXCtLrh2DZk7MJuAO5fK3tp05MGyN0Elf72H+uh?=
 =?us-ascii?Q?d1lwyluW58nbJl451nz0jMvQt9c8oEre1kjWRfaW0Y6hkSaO+KXg5sBDDrCy?=
 =?us-ascii?Q?9Q5/+DTGhNmMNDfDZaeyGF1kO9//4CzFwv1oJlPIzc0MDPTQheL1OQAQm0LC?=
 =?us-ascii?Q?RYPL4F5DjDAwPzj/Iv7ZZY0PhTzykpxV7UGA+Vn5E51vETbLm/iywhuhFVIf?=
 =?us-ascii?Q?B7hAkJ/Obnq7FyYNhDDThqSxpbwM020knNiBgtWyJ7SfApgM2tCLyPXZnMM1?=
 =?us-ascii?Q?ao9TtP+Zo/lHTDYhVdBaO04xie7lDyNnhj63mvr8jpJ/wMgFNDIztv/yeBSI?=
 =?us-ascii?Q?Vc7byrkn/nqFL2MMZcd3udpVl0HJOFEwFGFfTGLrLiovKyaRCRuXNjOnjUX4?=
 =?us-ascii?Q?AkC0Ho0N3Wm3LbwtCpPHIFXqz68LH80XPUvxGp0H6wsBSXZrhLAaWFOmHs2W?=
 =?us-ascii?Q?hexbmjvSeF0Rkmyu9HDqXqUekpdiS1WDg/xTKeZgpd0EeojM358vvKoEW0Lp?=
 =?us-ascii?Q?cODvV6TvxA28W5cC3wNFvk7ioTa3n45vCWEACK1sj9BMS73yOlGtV5QyLqVk?=
 =?us-ascii?Q?aINapNaq7aFIUJz7aH2WqYHk1D+6TaxNgcpCB9WKRi1H169ZCZhrVnKLnZcz?=
 =?us-ascii?Q?IYMvN7/NhzrocIGyiHEzcKuese2EWRtsZbC6nNEtvfMBgel+u7z7tb9/OcKq?=
 =?us-ascii?Q?rkr9JV9x90fvBKuwHCZj/hKZ/9oNBnl1fYbKTdnW5H4/Uc5l37OTAhgD4xmx?=
 =?us-ascii?Q?5aOO0ycDq4wNgNuVbihq0GpAY92x2IDIb86WKa9LblpBUNayMGp0k76s7p5k?=
 =?us-ascii?Q?3hmyXkYWg26gc9Jbu0EXQwje1vvqYrpaSP/9hMiWL3V9UPaGYloQmoebl4mq?=
 =?us-ascii?Q?4O5tc7tajYcVWCQKn3+d/1tYFsHAVHSWbJc3KmhAWJ3hag0zZ68ZeLiMNKDy?=
 =?us-ascii?Q?n/qjm202E6LbHj4LBRTqNgJ5RQg877J8rtWdWe0u4xBSFugVeR0/4rIbyv8i?=
 =?us-ascii?Q?TEE0vuSapDNzKB7S6zLjV246l5KDDehUFbNYx6ZrAakvZzm9NY4LZk9nR+4w?=
 =?us-ascii?Q?6tH4L533nvyNIsMbVPo5M2+Qm1V6HKx5ffRdCsi05h+TFoDdIDGEljQ2M4A7?=
 =?us-ascii?Q?VvY0AUZzrtjF0Yy2cifsYSismLKj7HyuOtLPEtZTX9Pf1C+EtQ+VNvA/Guyr?=
 =?us-ascii?Q?Z9TNz9we6qgWXOi0UUgy1Z6e/rEKySIjf2iH0aU/3RlHHMLogZkYjb3lmhHx?=
 =?us-ascii?Q?rT40l2Q+7Q/N20mNJ+EgGAiDkDQEa7OKd+6Jda2nftLugHyMaOQFfB9Gr2s5?=
 =?us-ascii?Q?jAFWjcIr6mMvQ0n8LkE=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?LsU5E0z3IBCxIg1q0Bi/ISsEHNNAoKag8iHKhOfZ0YUhmt5QCoWuLKlCUWfv?=
 =?us-ascii?Q?rjUfZg0dz8UlqN56u1myOhx4F9L9gkFbgy5OpzQoHhnd/KY8cJnSfqfCGwDf?=
 =?us-ascii?Q?/xfrXPPTIHUcFV45TCx7cg6RbaYS8RL/oVN891/v433tjVHosuCAg5efCT9H?=
 =?us-ascii?Q?xVQ1P70QqRZFVUyAMjoc5jdd+qfIXVqyC+ByTsKKIVk0p5V/XgZEoiR8GJ2f?=
 =?us-ascii?Q?8VJNHdlZBTzVdoEFbqo8rZeJq6ZrnkMocwDE3jHvm47GMWRfkXD1EXuv1Ewp?=
 =?us-ascii?Q?0V/CE+m6APcMm7YOvklCsXVUi6T+FJ3KAOOzklz5XxmjCEARwkJNx65ujSw5?=
 =?us-ascii?Q?WAYX4A+5P2xDtDFCB4Q9FS0ZYdbtDoxoMogeY51bToPiKB/joOvqaxeDsMiw?=
 =?us-ascii?Q?XWk17a0WNU2XdE/oh/eCwXiXuVUPiVe1Gvxr7Y7JsVpgS8AqAztQxpy26pyh?=
 =?us-ascii?Q?invyC8i5VXQ5GV7XmIm493y0hllkH0xDa8lzgant05Pt8uHE8aQjJz9oCOO9?=
 =?us-ascii?Q?uv+5AM7W91FjV2K6T6XpEOPqoASJMMYZVAbK4jgC8VJTZ0OaQlKTg5ongUNC?=
 =?us-ascii?Q?CaB/nwHdTayY3bF3fwnd8XyCZjMIvZjbZukW1QvUlhxhHrZHW4Q8HX3ni6O2?=
 =?us-ascii?Q?xIvdr7Oxai9nHU4YNDfdw/7wmfVuKSs93aUZTaR1vi0rU+NrlzdLvFBlrlS3?=
 =?us-ascii?Q?5tbLqHMhkd+7qQYb1OiKgqrPB4ZIfizT4VWTDV4/p9gP1qOrM8YPZ4jjov5f?=
 =?us-ascii?Q?dkuj2A/+F/u1mG1i48ZS2i26cFXuZl4s0JI5Cdebi9ZVnSXCwR4nK+rFyepQ?=
 =?us-ascii?Q?Mu+z11jMgybmQCFqMSphdCAqd/Cnr4jMR1Wv0fJJyVab+5sfEqBGcQyEIaQ/?=
 =?us-ascii?Q?bgtrGvM/54NO6xMdhS47KNZdwPuLM/JCbXGs5+/ypuP9aNZoYBHU1ohZd7Al?=
 =?us-ascii?Q?WV3Bu99ikqWwxtje+ohrNo8R1Ot/FBXm7prNyZwL3Y95zFtqbHv7zIIS2xgg?=
 =?us-ascii?Q?YA6e3MfT1zrX3QYnxGhZZvZt1K7SOM64E1EgwtlVw0chskk5xu9woUKvfs66?=
 =?us-ascii?Q?JeZXKBV+8ELGp/KmVwQQZJYch+4Sz4E440RGnWIUVlOaS+A04QGVL9Dtwamw?=
 =?us-ascii?Q?6BDro1l8Ip7BbrM5SukgNEeOBJZRSGXUud0D4eHaJZQzkSxsSiB9U6D6kLLI?=
 =?us-ascii?Q?1vLflbbWIsQGDFO4S0k0io1Ll1hK/bMJiW2SDwwfCK//bKMQegqYI9oHJ5LN?=
 =?us-ascii?Q?fWOtwC9kDmZnTnAy3cmzpklOvNupzLKKUy1pwdehia2HLQZLR5hLhz2c1702?=
 =?us-ascii?Q?vqN5FC9BHvum6L8sCH0pf6T4sTGAzdJ3yRdL2RQ8DeF0odbD8yZ+1+Nr+dXQ?=
 =?us-ascii?Q?RXcL8fLE6NDp6WBcMgQcCS8fuWc0kTn42B3zbNwOk93UBmhO0Gz0uv0uwxS8?=
 =?us-ascii?Q?tzlbkzAXQ2zuqQZFLAioomMR/W+WOCY+rKu+3OPImgQCfIvVHtw0HLyo1JbX?=
 =?us-ascii?Q?YAAVyw0qUkEOeFbOXpjbwhjhmcAriyJHefYXH6ASh1/7zAlPVHlwlFyIrEDC?=
 =?us-ascii?Q?fV5DSn+P4wgSKfp1XedG9GTJmpFoOSzNjH4z+YCjS5Pedax00e+C/PX7y0Zg?=
 =?us-ascii?Q?AapYsWZDUJoTxEtqAQ5B+OaZRofnkHKWg3EBPISTFsKpKp0fhm6HxkBDKgIr?=
 =?us-ascii?Q?NTwsidgCrsnjXi5J3U7sqCuKi+SgNo212IpRtDGqXyAVPTb3jsjs/xyZXgLf?=
 =?us-ascii?Q?B8jb8MXsqg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 98b2e068-9d06-4e3e-50c7-08de6964f63a
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Feb 2026 11:59:08.3017 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ftgMSfqPJxjebhU8sKr3zEqIe4P5L9jBC0dOtDM6LwiOKDrJAaIcgwnC/VZssYmFeT43PpkZsXxymCrcweiBMw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5069
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: A4C05124063
X-Rspamd-Action: no action

The user's request for a maximum BPC - via the max-bpc connector
property - determines the pipe BPP selected by the encoder, which is in
turn used either as the uncompressed output BPP or as the input BPP for
the DSC engine. This user-requested BPC->BPP can be outside of the
source/sink's supported valid min/max pipe BPP range and atm such an
out-of-bound request will be rejected by the encoder's state
computation.

As opposed to the above, the semantic for the max-bpc connector property
- which the user may reasonably expect - is not to fail the modeset in
case of an out-of-bound max BPC request, rather to adjust the request
clamping it to the valid BPP range.

Based on the above, calculate the baseline (i.e. the non-DP specific
platform/EDID) _maximum_ pipe BPP, storing it in
intel_crtc_state::max_pipe_bpp, separately from the baseline _target_
pipe BPP (which is the lower BPP of the baseline maximum and requested
BPP, stored in intel_crtc_state::pipe_bpp). This allows the encoder
state computation to use the baseline maximum pipe BPP as a hard limit
for the selected pipe BPP, while also letting it use the baseline target
pipe BPP only as a preference, clamping this target BPP to the valid
DP pipe BPP range.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 12 ++++++++++
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 24 +++++++++++++++++--
 3 files changed, 35 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index ab4b59916d2e7..dae7a7d11cb84 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4374,12 +4374,24 @@ compute_sink_pipe_bpp(const struct drm_connector_state *conn_state,
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct drm_connector *connector = conn_state->connector;
 	const struct drm_display_info *info = &connector->display_info;
+	int edid_bpc = info->bpc ? : 8;
 	int target_pipe_bpp;
+	int max_edid_bpp;
+
+	max_edid_bpp = bpc_to_bpp(edid_bpc);
+	if (max_edid_bpp < 0)
+		return max_edid_bpp;
 
 	target_pipe_bpp = bpc_to_bpp(conn_state->max_bpc);
 	if (target_pipe_bpp < 0)
 		return target_pipe_bpp;
 
+	/*
+	 * The maximum pipe BPP is the minimum of the max platform BPP and
+	 * the max EDID BPP.
+	 */
+	crtc_state->max_pipe_bpp = min(crtc_state->pipe_bpp, max_edid_bpp);
+
 	if (target_pipe_bpp < crtc_state->pipe_bpp) {
 		drm_dbg_kms(display->drm,
 			    "[CONNECTOR:%d:%s] Limiting target display pipe bpp to %d "
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index e6298279dc892..e8e4af03a6a6c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1163,6 +1163,7 @@ struct intel_crtc_state {
 	} dsi_pll;
 
 	int max_link_bpp_x16;	/* in 1/16 bpp units */
+	int max_pipe_bpp;	/* in 1 bpp units */
 	int pipe_bpp;		/* in 1 bpp units */
 	int min_hblank;
 	struct intel_link_m_n dp_m_n;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 48845899298e4..4018b0122e8e0 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1769,7 +1769,7 @@ static int intel_dp_max_bpp(struct intel_dp *intel_dp,
 	struct intel_connector *connector = intel_dp->attached_connector;
 	int bpp, bpc;
 
-	bpc = crtc_state->pipe_bpp / 3;
+	bpc = crtc_state->max_pipe_bpp / 3;
 
 	if (intel_dp->dfp.max_bpc)
 		bpc = min_t(int, bpc, intel_dp->dfp.max_bpc);
@@ -2726,7 +2726,7 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
 		 * previously. This hack should be removed once we have the
 		 * proper retry logic in place.
 		 */
-		limits->pipe.max_bpp = min(crtc_state->pipe_bpp, 24);
+		limits->pipe.max_bpp = min(crtc_state->max_pipe_bpp, 24);
 	} else {
 		limits->pipe.max_bpp = intel_dp_max_bpp(intel_dp, crtc_state,
 							respect_downstream_limits);
@@ -2757,6 +2757,26 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
 	if (dsc && !intel_dp_dsc_compute_pipe_bpp_limits(connector, limits))
 		return false;
 
+	/*
+	 * crtc_state->pipe_bpp is the non-DP specific baseline (platform/EDID)
+	 * maximum pipe BPP limited by the max-BPC connector property request.
+	 * Since by now pipe.max_bpp is <= the above baseline BPP, the only
+	 * remaining reason for adjusting pipe.max_bpp is the max-BPC connector
+	 * property request. Adjust pipe.max_bpp to this request within the
+	 * current valid pipe.min_bpp .. pipe.max_bpp range.
+	 */
+	limits->pipe.max_bpp = clamp(crtc_state->pipe_bpp, limits->pipe.min_bpp,
+				     limits->pipe.max_bpp);
+	if (dsc)
+		limits->pipe.max_bpp = align_max_sink_dsc_input_bpp(connector,
+								    limits->pipe.max_bpp);
+
+	if (limits->pipe.max_bpp != crtc_state->pipe_bpp)
+		drm_dbg_kms(display->drm,
+			    "[CONNECTOR:%d:%s] Adjusting requested max pipe bpp %d -> %d\n",
+			    connector->base.base.id, connector->base.name,
+			    crtc_state->pipe_bpp, limits->pipe.max_bpp);
+
 	if (is_mst || intel_dp->use_max_params) {
 		/*
 		 * For MST we always configure max link bw - the spec doesn't
-- 
2.49.1

