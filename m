Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aMTqBqPBkmkSxQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Feb 2026 08:05:07 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 677E51412EA
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Feb 2026 08:05:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDB1B10E183;
	Mon, 16 Feb 2026 07:05:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="it2dP0Np";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20E2710E175;
 Mon, 16 Feb 2026 07:05:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771225502; x=1802761502;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=GzKmpRKp8ijfxLoaH9upw/onZ26calk1qsZOT2Q8cAE=;
 b=it2dP0NpSHPadKkgwjmTLkKumRjLsZDUhcF+kuZGchcp6L2yslyNh56u
 Fi9lvv/fC+T4twT1hlHVC1dpKngVPgwU5nDfgkIMZkeqlvx4pqcWMDl5p
 1ydOtGKEOnE6GiEzTjc9/KepeEeXTsi7iADXAokPnSeizj5Xd9wC0FItt
 Qo1hIcjJjVpiY0VikBBQZoEzD+l5R71286Z340f35L8cose+ilNH4zvS2
 qIrXT/RoX2KramEpMy/05BHW0eTDPd3Q8w3qanzEUg9FFLQk29xzaT189
 uo+PoLucErQ5qXUiVAtYqJ83X7AHiN4qYdMkQBqutpZ06LsHSqu+9GXyp Q==;
X-CSE-ConnectionGUID: CFBe/dU8RjyrnDoy+fwa8Q==
X-CSE-MsgGUID: pS/8IaCLSMWtq2sDpCJTDA==
X-IronPort-AV: E=McAfee;i="6800,10657,11702"; a="83743321"
X-IronPort-AV: E=Sophos;i="6.21,293,1763452800"; d="scan'208";a="83743321"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2026 23:05:01 -0800
X-CSE-ConnectionGUID: We6v0wnQSlmyv9n2jF/zmg==
X-CSE-MsgGUID: X1bBtru4Sbi/OxKjZzpP/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,293,1763452800"; d="scan'208";a="212838134"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2026 23:05:00 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Sun, 15 Feb 2026 23:05:00 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Sun, 15 Feb 2026 23:05:00 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.47) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Sun, 15 Feb 2026 23:05:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aoPoOqUGOjLjC8Ssb0tzWhPH1sfCzp76vvXh3urIo/9vd8sH0mPx1MYTejazb54Uqb/m+M5GMEock67mH0HkQUxJyvYZ/nhD2XykERE68NXXqTZ1Br98OsifWcmHeV6xrO024rYiNaz5WejchEnqWho3Xb+5+LATXqOZ0DjeBGD/Wxfs4lQppLYlNOZX7zSii4q0nlx3LnaFO87MIuYZJI8e1bdDx/LRbSDol1iJvTkOm8PBhreKHo8+WNJdfmvqTb3A2pN/nF1j/cNfJ5oKTLvLS0zW/ap1LCFzMzwObkbtIlfEpio1hqyfnhknqhg8bW/U07+HZJiJDh2hci3tzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p4sfkw3m4IwP0xJLrd4jYrxAfD5gU5eyjLxjq/lpfXE=;
 b=upg2Jl10mp8aeEtUxPVHooUr7AW0aIiE8XfQmp7W+6W0G0bREVwXsiEKIrBtf8g5G/Sp3atbTlq/aAynk4lw7Gn7fWL/Z36C5jBS7OnyCdo1oZTfr3lLz6f38ApPkck54kZLkvavVl8eStw+cucZJSfTfn5GJk1jCykgb8RZ4Sy+oNQgGf63eZrJ3crYrf2hfhIuATc4QioAYMG0Tby+hl/PoOHrew/8cLSClqp1OiH/j8veceUeW6OBa3ljMJgZa7Ws/OJKmB2bIX0OrjihW1g0KnZzBCzKjz2hc2EMTUh7MqKaV9fyEqwvWkg6GDK6r5bhhjkNAgEkWv1hgdlzMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by BL1PR11MB5240.namprd11.prod.outlook.com (2603:10b6:208:30a::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.16; Mon, 16 Feb
 2026 07:04:58 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9611.013; Mon, 16 Feb 2026
 07:04:58 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: [PATCH 1/4] drm/i915/dp: Add missing slice count check during mode
 validation
Date: Mon, 16 Feb 2026 09:04:18 +0200
Message-ID: <20260216070421.714884-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260216070421.714884-1-imre.deak@intel.com>
References: <20260216070421.714884-1-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 30559204-8cff-4530-3569-08de6d29b1fc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?KMXoBLVWD8FZu7EFdppw86o/3kWSvhub0FtU+FKs6wOxSl0n3/NwbFJWyHX/?=
 =?us-ascii?Q?ikvDCT7owNfAG/GB+ajPzpZ9xCtHPDPemsZw3PYzbiWs7z+YJRFlymRajvt3?=
 =?us-ascii?Q?LGrLDjt2UeXbZ4y5iWkKhbTkWKHnv7FnqKShALA+EnEeiiVDsW+UhR5dvArd?=
 =?us-ascii?Q?sS0lvDYZKXSmZS4y0Jc9azPwX0SYZsLxmJTlQi7O6AHOTF/bSGzyB74S91Rt?=
 =?us-ascii?Q?/wwi5Ys0m+qtOkPBMWqGRR2imt8CYR2catjb6M4dymCM/LxAdwQ/Y62pchSJ?=
 =?us-ascii?Q?6G8U7YicWv3nBxiNxnvfMGM3JXhauDznHLSOFbQvD7HN4TVAmVuFdKxKyI4S?=
 =?us-ascii?Q?rdJXlznj9MNZiD8pMN9WzuFGGEF0Mi0+3OXjWWS3r2Rxrz2qRv0oIVEtH+/S?=
 =?us-ascii?Q?PtBsSM4fs1pspPtYjwqBdH7LPIFcQNnGLfxDSMXHRnDmfR9jCr9z4894U84Q?=
 =?us-ascii?Q?bpu1Q0+IAkIdGsSV+3NtUNTWwpqia8gEQjLjK5ElD5cdxl1+N54LQ6muPxqA?=
 =?us-ascii?Q?OrK1z8+qJzllICrVPu03rHI8w7B6fqEQplJOMbruuV4UOo5mznScM4G/Vm4U?=
 =?us-ascii?Q?1WM2X2exTwOtIdORLprvERZwX5FaecJIxB4DY8dLPxQYeyFDwcOQ7GIeKrzR?=
 =?us-ascii?Q?905aJ8+ZCuVeM4vOr2Tyu2nsC/fh4Rzr21otAx3thtqhePRXSTcsOukWV4og?=
 =?us-ascii?Q?h84vdyVRjAOdYggvNe3I8zOHqm2PZ/pKJTqDMg1M/qK6lpZ67sdvyHyfqj0q?=
 =?us-ascii?Q?SGT9dVHLmbYwyKSo+mUtgF5+FXf22pMsw1WcuM7n+4skrtmCa359DlYbU00t?=
 =?us-ascii?Q?yk/W7FrT1jCwG03KFwjq7LwEtujHRFxSftwSHW6qfmjybf97bSqbNO7bvi/Z?=
 =?us-ascii?Q?2yqleYHe7dIqFBudXpCQ70WBAi3aMBD1aCvMkv89S7FBgRRFVAKHyN35TIoL?=
 =?us-ascii?Q?4ibaj9rah8RyLNlfoOhsuUZzPi/mo1W15CJLS45349M3t3RrRJM0v+avkVgV?=
 =?us-ascii?Q?Ouz63Xyi95g+mrzRRedhWohpwWBTfca2lpl50ItRbGNel1uJwhgSnvF7h8Mn?=
 =?us-ascii?Q?S1kKoTimSaJoznebuF9pGoZLjQST/xgQ2l/w32oej3ZjE2GAYWxcjFjajjV2?=
 =?us-ascii?Q?hIdQJHMrGi6GU8fq1dbHib+lAcAKyJ0Gdm/U3kFJtyNEUNOm6pUSsPRuohUM?=
 =?us-ascii?Q?7VieMfmOxBAypHv2/p7WmILDowBZEeNzROfWRN2K2Ek5wXHCnne8Lqpjv+mZ?=
 =?us-ascii?Q?CqOboBvMT1Wr3azAvGKF45Shcq69qH+c/3an59ady7Vw6DDjFOEDb1uc/Gzk?=
 =?us-ascii?Q?BuHjpAuqWOB3k77nRViFI+nZViIAFkRAm3PgGzqxCiodBtunK5Fnab+UMSXm?=
 =?us-ascii?Q?62fycUbNC/1Qq1GWk2UbXeV/MUMRQbORL7r+4ncPiT702aEHb25MXQg3CoG2?=
 =?us-ascii?Q?qnqbWu1Unb8o9/XKoF0Qa+JcRHVvPr10abAc+w9AUXjzuQ0kwGhgEymc9+mA?=
 =?us-ascii?Q?nOFGfGeyGhymNfOSzwTTHwLAdnQGFooiTTI8/EHOij+q0ZEi0cCVzmlUQA98?=
 =?us-ascii?Q?SOY09kdxj6rFwZb3SL8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?e83pHkBE83O2TO9M5jRxjG7SZgX96GsisX5lzQgEp+keOpfaBY2Gz0STm7MX?=
 =?us-ascii?Q?rxDjEo1YBx7BCcL92hGVaVBfs/4aWz+SSTsVopS7mDib1j7WwPKYI/BWESaA?=
 =?us-ascii?Q?u1pup1u+iTx2RlEebOdbzkQ4TMV+Uwten1qY9WLwaNnugbdF9nEeiu2xiGNL?=
 =?us-ascii?Q?sgY89+lg9k7FB8VuKLpqf5J0zngbX63WENhKqMydqZSSNzpYj+r1cBIWVJ4V?=
 =?us-ascii?Q?29Fu9vcM8HUbKpJ2/0w2JOZT1oXtyzEexDsR+rXjF9sCPkY3eFtzxUOMmOo5?=
 =?us-ascii?Q?VVuYNjWRbKGIgK9f6LKwFSx1woMapE5Llu7hQCH8EncTgageHCVVvrD7Re60?=
 =?us-ascii?Q?bxJSkzWtCLTiLAFR437xg+SzeOf+nlJ6pRm88O1LOkKjK+Gwntoq99OtTJ7G?=
 =?us-ascii?Q?dJjYA3jYdohghRbRXQ2FiIFQsTh4yO5F+hfV45UYgUPTE9eC6tI6zsja6jby?=
 =?us-ascii?Q?to9aftWyz/V55LzbqUyiGAdmsQda2JtvLkNJuYDK3tKNzhTQxEL4S6WjkQw1?=
 =?us-ascii?Q?UqTupQrHuSoeNEsnSu3iawaZD71ZCiidpqv+TeBld7fqUpGxyELd/Ryc0JcU?=
 =?us-ascii?Q?zgUWou7+Cy/LLZK9UJCfONBcNquiBR5BoHv/vIbHaKXYOFyc8wxr1ZzCZXGn?=
 =?us-ascii?Q?OcUR+B84IEFGVRhZ+yAUohnloNr3sKdQ00+4MgGNhlX/u4a9NTkLbY9btPNs?=
 =?us-ascii?Q?iXUAGGl3DLAMxo1bnjqoyQRqZSBTrY7lXh9gzPdl38k78Z1UcIJ/mUXbXGFZ?=
 =?us-ascii?Q?ZdY/S1SOH4JtkzNmh/VowkwIf0cw7x7e9u5WQmZGrk2SVOe2oS9DAbXMJoFg?=
 =?us-ascii?Q?YkjcJwYNrjZZPlbsgc7ZtyvN7NQad8FAzZMKPsCW6IFlkwf6JGlZAyuINvKK?=
 =?us-ascii?Q?baMwazWlt4RXwFiZz3QHhOiLSQOa5Eku5w5nv6rQrpfHUxxmQOPESSP/enSn?=
 =?us-ascii?Q?OPZxYNMqwPaM4ep1jjP9EPUeHbhn7oWYQLS7afUfHmTzD+ra8ujHPEHEZgOJ?=
 =?us-ascii?Q?1GUFwdw2Ll9KlOrE17QdlaxuP//OpzZqjaDfQfQO+3F6m2KHFbkDF0BadPhW?=
 =?us-ascii?Q?teCTVPc59O46ynR6BK3wVn4ScvtGvzPRIhOoCkYJrOTsPWEEMsZItE+O3pNm?=
 =?us-ascii?Q?bsZEEwF6q6w+chs0tsQ3sLLrDyEIFwC/cVV145Aw9ahNEh4nk7BjV1TFKGJX?=
 =?us-ascii?Q?SfC7Nyy8YrQSJGcAKsgJnFXGgPl3RUsdlj6hhuuGedIRDDB/1LjZ5QXtogDU?=
 =?us-ascii?Q?NGNZj7FshxYYwDtDJX5rqull6WFHaxC+sy652LFKvO78LiWXo1dsgzfSZnsJ?=
 =?us-ascii?Q?QqFk9tTQjVsDMvZU7ZPHgBjG4DXdt+z9nh3U4SqtGgJ+rnfRXSgar2UziiEI?=
 =?us-ascii?Q?7N7TMydBTErmtlApV6qeGD1XUBUquHhC8WE58HnfzMBFGSR/2GSQXe0ZbqeA?=
 =?us-ascii?Q?rNKUhaEb/BU3o0NKso/R5hWju/NoEBQ/g9ZA5bHSVO8/kv2ibGJPhczrl6vT?=
 =?us-ascii?Q?LWrN3KcHWYmzRy9ruoWQHwe85lvvgzQ90TYeLfRcBHL3ZCg580qw8UlQNoK4?=
 =?us-ascii?Q?kIqTs1NAzCxxMMfQ+jCflZwKRhEgcqMKQJDHNuyX3ZMeVgFE0vWwa29pktoj?=
 =?us-ascii?Q?UBZhQ3JYAxfn9bFGeKBvE6vCpT8lI3yn21UYEO7RX7OxHi5sPUttkw9qS6RC?=
 =?us-ascii?Q?vYrI8ur1V43Gzt4cu4816Xt7nX71Kd7WqF2ZipgeOSTyjEoa57vY5m1rQ7qn?=
 =?us-ascii?Q?iWPWOB0/XA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 30559204-8cff-4530-3569-08de6d29b1fc
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Feb 2026 07:04:58.3301 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5snMnvj6wWCQ/rrNiyyFyVhonUwU4RSKaso2sWe+FSPyZ2TWI3AaygI7XTpZYM9WdhPfm4Tto8DynqzLLqkS3A==
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
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 677E51412EA
X-Rspamd-Action: no action

Add the missing check for a valid slice count during
mode validation when DSC is enabled.

Cc: Vinod Govindapillai <vinod.govindapillai@intel.com>
Fixes: 745395b51c26 ("drm/i915/dp: Add intel_dp_mode_valid_with_dsc()")
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index b5fe7d8ba5864..d1caa20370123 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2595,6 +2595,9 @@ bool intel_dp_mode_valid_with_dsc(struct intel_connector *connector,
 	if (min_bpp_x16 <= 0 || min_bpp_x16 > max_bpp_x16)
 		return false;
 
+	if (dsc_slice_count == 0)
+		return false;
+
 	return is_bw_sufficient_for_dsc_config(intel_dp,
 					       link_clock, lane_count,
 					       mode_clock, mode_hdisplay,
-- 
2.49.1

