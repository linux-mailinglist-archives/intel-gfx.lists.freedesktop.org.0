Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ny2/D675TGqOswEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 15:05:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9533171BAC6
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 15:05:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=intel.com header.s=Intel header.b=cXr7LfOT;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21C4E10ECE7;
	Tue,  7 Jul 2026 13:05:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0679C10ECE6;
 Tue,  7 Jul 2026 13:05:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783429546; x=1814965546;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=1SNv1GEqP8rg2j9tV7jCSWNezPDnAHCCFYDdJR8tpbI=;
 b=cXr7LfOTVlZwoX9YlWetL/50P/9fBIhh9eLR/ftTxirX0XFC4e1I/Fg+
 k5ylSCqS/7hDJ9jr6UWZKgN4Ya07dTpKNe8YX2zBelyUDmbWCoNocjxXT
 m49wXLf9SyPOYcT+p3CXtf8HkLfisYal/9Q4D4s7HBmA5rE7KPon0XoFe
 i4HbrX8ONGYBALI71C5utqo54BPdiIbe/WyjPkQb1alAY5lZgAwEBh5qT
 XJCbWxotr8SjIZjrn2cvrxJsEH2sGrt14txccseDS/NCna90ONVD/6mcz
 l7vOA9a77YK2I/GuCc1MMJeB7ZzF+VPz13DMvgnMcbOF4zzlSPqwQAQ0s w==;
X-CSE-ConnectionGUID: 7UCt0w5VSsq6QWXwir16pg==
X-CSE-MsgGUID: lxBxQ2IiTpaiSOFwkgaNAA==
X-IronPort-AV: E=McAfee;i="6800,10657,11840"; a="83182728"
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="83182728"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2026 06:05:46 -0700
X-CSE-ConnectionGUID: ZtLqhIS7Sf6HR1WM+FxZUQ==
X-CSE-MsgGUID: AGa+FkbKSteoAwj5Vri75A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="278361766"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2026 06:05:46 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 7 Jul 2026 06:05:45 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Tue, 7 Jul 2026 06:05:45 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.34) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 7 Jul 2026 06:05:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=M++BCutv8rG5afRQOAj91mb9H8JuEV8kj6Eb+1wDgK5yyIb40IBQZXYWJrd5ZzMdvKraKf3t+P7N6bDmonU97WZyzemj+mYEDB1prqbqv3pvldps4sq7Oq2Yjx7+KRORPC6VZ2CMXFCDGD0T6qC2d3WfcilLsjiAbGa/3JWhGMLUmEKFnXibgwlb2Y2vhd3RXs5ooyJNEn0IzkF8bNWmhLvMGTdB/Ru2PeqNigN19vPMySUjptuBDMFfhdfRsqEPltEYkB4RbASissvUSRnlDbOceS7ZTR3wcL/lcwA0iH8dExrtVZIXE1ROHMGJsTrTMzcJ50o/mIjB0D2ocx+TDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IoUxQ6xhM9ubdPUlT7PoCJ8lNnY6VU61Pw7TZ94yfSk=;
 b=EOgAwkvZ4wgY1sXYQKh4LlXgIPRViY91tUyzRiSd7hxSb/MzgVK7R7MRf3Mi+92I2n1CKkzvaAUfwkC2tGdPKuQ0aGzxFHvSiXPzdebYt7jDTexrLWw4zo1SlhM0xWUGiN79O7zJ/itxcXJKDHtGKGobmyc4Bq6+8+eGyXo/HsDDpvL7Oln9G46jJQwySZ8tsX7ZIwOSQG/VzRj4tTVJoikxLGlhB66ez2ZJMc0ZThyKX7mLNZkpU1WnP7Ycn10jzWWmPq4teC3d5OvYbSW7fcvSrcXalEKj8xkr+ibhtpW/jNDUPjKoZk4+YT3TvgSoZ+3FqWlqJPcXpjZMclnLJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by IA0PR11MB7330.namprd11.prod.outlook.com (2603:10b6:208:436::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.10; Tue, 7 Jul
 2026 13:05:36 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0181.008; Tue, 7 Jul 2026
 13:05:36 +0000
Date: Tue, 7 Jul 2026 16:04:59 +0300
From: Imre Deak <imre.deak@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, Matthew Brost
 <matthew.brost@intel.com>, Thomas =?iso-8859-1?Q?Hellstr=F6m?=
 <thomas.hellstrom@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 28/34] drm/xe/kunit: Add display test config
Message-ID: <akz5e_Zhf-1dKUNG@ideak-desk.lan>
References: <20260701153204.4124150-1-imre.deak@intel.com>
 <20260701153204.4124150-29-imre.deak@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260701153204.4124150-29-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVZP280CA0054.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:271::6) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|IA0PR11MB7330:EE_
X-MS-Office365-Filtering-Correlation-Id: ba29f7af-afea-47b9-053b-08dedc286fa3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|23010399003|366016|22082099003|56012099006|11063799006|18002099003|4143699003;
X-Microsoft-Antispam-Message-Info: rlVZDgoh2iwkto5QXO8vN5RWg+0tG3r1wDmePm9Ld/lRqt7g452My/2SkASC1CYR3NsEVbhCqjrF3Nw7JZ8ZDiHcO75BsykYio6SxcRfdCVbd0juhJYIm3h7JBpMkqMbRApuB+32bf+JTbBPxbGFA8+Y6jI7xNdz/Jv5JwneaOs8iVXtrryntESiOcJiixBBlo2dCowThoCiqupGaGzIIwM4KNy+K4mfbPa5SjZX8nUEYDAn8SaGqXREoXzq67p+q/hPNAX3V/7RgMY68JfWXiZzeXrH/U3idePAA4sDUuqewvOd1hQihgqa7JwUKu2HOMnSgzSQUcovGRnlUpZJhwhkHItb+KMHvrr2qDidp0lZQqJsmr8QXl4nyuFxgAqH2d+Rj8/nZIpf2i6/XDSbFllvakICAceuUNes/pz9v074cVBvv3NBRECcbYgXXRpVpQ3sZHUDlYgPFk1nBU4aSHCD2QsHV3A8o298KwwTiG+7QjVPhbr+Kf0Q2NMgq9EG9PgmeRNou9TnU5yTJo6bAu7itWAgpp37mubjvZ4j+jrgwUEqbPTxxBgYhHu/KlLCtdC50QPmLa0IB4CzMHot1hc60HIaZOx4J3NIN85B/8ZK/PRH8D9w3zZZCccz6NJxi1mOqVRGTu9T0PdzJ/44YFGfdUpA4jkx+o460IVXoR4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(23010399003)(366016)(22082099003)(56012099006)(11063799006)(18002099003)(4143699003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?jJUCsgUWtywtjqeUYd/RMq/vxzFjH1oTW70xfShPB1rAesX+RknSIBypIbW9?=
 =?us-ascii?Q?UbCfntn5lGqidK1mdijerQw74gvoUaVwkxraRBbe5R6C6fcG3DMYlpY3GpKZ?=
 =?us-ascii?Q?LuzAzA2qjoh9dtDZf4E+M8kdA6bq184I8rh8UgAgIr/Wj3OJNopXcVV7DtHR?=
 =?us-ascii?Q?/Md+TKL3XlSWSttUd1gPPdchN7z/EfD9NJpqug1Zw0fuO6vP94+zeGKZ4/VT?=
 =?us-ascii?Q?R0HwfQCnR0zlOsxO/de5jsxrvBeZNgRJAVIuXL+bDvLYulmDZNVj3H3Wj5wz?=
 =?us-ascii?Q?iqED/aSnvcpUcb2f3SauueinBy/f+7glBYVdzsgIEaxCnLW/cPXNDObi0Gfi?=
 =?us-ascii?Q?9WDZ5yHOj3jLJ2g8fvGF5rtMhjL30rRKRIWMU4Ev/A8LJRxxTwebOQeoh51l?=
 =?us-ascii?Q?05onpR3St51KL8T1NiUC17JWD4yqTvuW0LO3FmFbb74AjOU5IgXwV2aWA1EZ?=
 =?us-ascii?Q?Q2B1RCQP0Nej5CGqWuUzhDEcic3EW7llI/xCqxyeeBDjt4vwBDeQImuMrf5g?=
 =?us-ascii?Q?izhLHIni7AyVCqNbI3RmriyOfazMPocOykAT53uTTB37LzWY8Ev89HtHa9Li?=
 =?us-ascii?Q?RA2H/N2pkaUflDrPa3YN9SBPW/IrtHPfDRpJUVJZeg1Ca9fHsow5NkO9hhqk?=
 =?us-ascii?Q?uRq3QmN9FFOoC30WKk6o5Fuds7WxS+MQBQyMEvxw7krsi3+jCUfCNAEXqMqx?=
 =?us-ascii?Q?tUF8Tftm5XCLpBPHBXYMbdfk1qYZx0VstvH+xdMqC1qpZFgHIcNuO2nuCIp+?=
 =?us-ascii?Q?b3/1cR2g2cyxnG5S7yx3fkIoFDM/SRszicq1o+6zFs1BIdpVBqvNiHzYbOG1?=
 =?us-ascii?Q?PGew0dSU5RAHZC6Ie79EmYdw5r3/bJnT79kQnfX3RdCRKgBCzgcgSt91FtuX?=
 =?us-ascii?Q?M4fJi/FGyo8ushOGO70YvSZraaBPYyu0lCktZzlmFjr2BCMClbKEcYlnFvOg?=
 =?us-ascii?Q?3l0rkDDj3i4bFLiCGXflYS/6FEfUyLocUogNecyFGbtMc8mcNt2Recsb/tb9?=
 =?us-ascii?Q?hjTsT6quiAJrzxG5ynva3erWW6cKOZXBldQwJHZV53iEYnH+8YlyL0En+Gxo?=
 =?us-ascii?Q?rs/nIz3nGyy8XiZtdwCAqchGq1jTqTNI99wQxSoBdxmNqrrWgPBDMQMQ0L0k?=
 =?us-ascii?Q?IRXOPbMqiiTd08BbpWKl5mBquYUhGPf2eWKgZNTuv8RjZs6YmXTHAEsE+V7T?=
 =?us-ascii?Q?x+scClvzIWzmuAACU5Gv9obGlNu5zbhh1RvxDL865fexNSqkxBimjOUJOYh0?=
 =?us-ascii?Q?0qg/FT0eaOAY5izJDX3ffcvczGLxsroTwdn2ZxXQXZZ4QjoI+6DCKM/3lG5n?=
 =?us-ascii?Q?B5S0juRXzrTiOlkk/O64YbKVD5emcs5eM5M6AsqNDsvpbbgV6El9Y7/04pe+?=
 =?us-ascii?Q?ncLo0iEqSbwnBRfc/Mus0luBVHrs3wnrwfv399Cn7mSzujFtbxdAFuBzuS62?=
 =?us-ascii?Q?oECSG3k07BrGTgA6WBt9rWTmeeytbZ1pS5GQsVNk+wzK5q3UwGmtJDG8B7jE?=
 =?us-ascii?Q?CAriV0nD6ru5CMM+fAP8en/kr9GZ7IzJhWL6JcfWFYwH7ANiKXSAg+My5Fld?=
 =?us-ascii?Q?xViAF0OUgVRrlPfovX2y07sxQnCC7NStccquCfwiBlNAGhqWhBG87Ic+DH/F?=
 =?us-ascii?Q?sk+fcfZjqEcpA4wUfs3lb5darR++EtZ9pBIy2tFO9ca4oQG27KovGBWQ+Bth?=
 =?us-ascii?Q?hBGIfgNiqZNiga5K06NZSTjvJpr5v0CJG90vf9AicEPNxVpLLH+eDLaqYaXJ?=
 =?us-ascii?Q?Fzn2KMYlDA=3D=3D?=
X-Exchange-RoutingPolicyChecked: JL56S30H/I5k7+uIWsGdIQongWsQpu6eVN3+YUYHpJHLJ+3m/5VpJ8Nm4L/VtQ1Vvsih01CBnTfuo1NPc6AHC+PQg2W/sy4LYeVsttrSeYy86J8CSWHBVSgUOIXWgHu/SwJq1agSvjqIa/+KJjvhglzGJVfIedNH3FU+OoC6uvdb0IryXLnJGrUpWoN8giqMsjbn36OBLzNn/wCaQELVsA74z1wTQrlcWh3a43nZgoqmDn10zHVUkZcIMUwtwxkVfxgeizDiWCFUJYUhhqYCcfwHdPMKDFtIPbB67kwR8WfoVSlEDkWOi4PypUNGhT+PMHnAxSWi0RbQ88CZg2fqgA==
X-MS-Exchange-CrossTenant-Network-Message-Id: ba29f7af-afea-47b9-053b-08dedc286fa3
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jul 2026 13:05:36.4088 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UNf2ewAEapg66OWpc0ru7gJSWIk1YQe1kIsrct0Z16vXZlSVoyr7JokPFNspV3nMcDHkZJ4r81QPsrJL+OV+5g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7330
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:replyto,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,ideak-desk.lan:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9533171BAC6

Hi Rodrigo, Matthew and Thomas,

are you ok merging this and the next patch in the series via the
drm-intel-next tree?

Thanks,
Imre

On Wed, Jul 01, 2026 at 06:31:57PM +0300, Imre Deak wrote:
> Add a separate xe KUnit config for display tests.
> 
> The existing xe .kunitconfig builds xe statically, which is suitable for
> non-display xe tests. The display code can only be enabled for xe when
> xe is built as a module, so add a separate display config with DRM_XE=m
> and DRM_XE_DISPLAY=y.
> 
> This can be folded back into the main xe KUnit config once the display
> code becomes a separate module.
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/xe/.gitignore           |  1 +
>  drivers/gpu/drm/xe/.kunitconfig-display | 11 +++++++++++
>  2 files changed, 12 insertions(+)
>  create mode 100644 drivers/gpu/drm/xe/.kunitconfig-display
> 
> diff --git a/drivers/gpu/drm/xe/.gitignore b/drivers/gpu/drm/xe/.gitignore
> index 8778bf132674d..6dad8a5a21355 100644
> --- a/drivers/gpu/drm/xe/.gitignore
> +++ b/drivers/gpu/drm/xe/.gitignore
> @@ -2,3 +2,4 @@
>  *.hdrtest
>  /generated
>  /xe_gen_wa_oob
> +!.kunitconfig-display
> diff --git a/drivers/gpu/drm/xe/.kunitconfig-display b/drivers/gpu/drm/xe/.kunitconfig-display
> new file mode 100644
> index 0000000000000..17020aa4ded3a
> --- /dev/null
> +++ b/drivers/gpu/drm/xe/.kunitconfig-display
> @@ -0,0 +1,11 @@
> +CONFIG_EXPERT=y
> +CONFIG_MODULES=y
> +CONFIG_KUNIT=y
> +CONFIG_PCI=y
> +CONFIG_DEBUG_FS=y
> +CONFIG_BLK_DEV_INITRD=y
> +CONFIG_MAGIC_SYSRQ=y
> +CONFIG_DRM=m
> +CONFIG_DRM_XE=m
> +CONFIG_DRM_XE_DISPLAY=y
> +CONFIG_DRM_XE_KUNIT_TEST=m
> -- 
> 2.49.1
> 
