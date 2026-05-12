Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cJVaLHMrA2o11QEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 15:30:27 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44D9252133E
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 15:30:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C49CE10EAE7;
	Tue, 12 May 2026 13:30:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f1hTXIU+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 393CE10EADE;
 Tue, 12 May 2026 13:30:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778592623; x=1810128623;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=rVd9nq+eQ5O53XKJJ33JCe3TTkilM/rjRDVbmaAJhJc=;
 b=f1hTXIU+Dyiv46jyHeV5monTrJ2Byig1+/OSbLvtqqqrVC8ez6ZhDRAf
 +v9t/+KwYZ5slAaaGru7O6qDgi0EfrbYzg2+pITLiqLMSG52zAl1YNq+U
 xkz+cx8bOSHo8+n1wjEZ8ZoOwY4YWFQt7vF3LY8bYVHvfpdLLp8RWTG+l
 Ky9nhRw/AprB7s1DM9d2GvGEk7L5x84T/kSjENej+Box/EAHUAH08pR4u
 kU7YgI+0xORJVxrjNBjQGJWjD8ovZf1Z/ZD4PwMvTM03lcltXBRsIDsFV
 l0KsMc6kH+P+WxZ8U0Rl7ZXPd/NIdFlX6kw73lqB85snypyf7VxnzCgIM Q==;
X-CSE-ConnectionGUID: xKFDAky/SLqifFwUbwXVfw==
X-CSE-MsgGUID: 4gVqZPivSiiKiQBoBEKBnQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11783"; a="79484394"
X-IronPort-AV: E=Sophos;i="6.23,231,1770624000"; d="scan'208";a="79484394"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 06:30:23 -0700
X-CSE-ConnectionGUID: NDrxNGy3TWS5OLfrA9SfAg==
X-CSE-MsgGUID: W7N4Ma1CTxmAqz1VMmMtog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,231,1770624000"; d="scan'208";a="233301900"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 06:30:22 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 12 May 2026 06:30:22 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 12 May 2026 06:30:22 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.12) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 12 May 2026 06:30:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SJRtG6ZVNnKuCA9rZG3XU/txpBDJeEQppl3MQl3wkYLS0T89ekF8pMdB1VV7IKrLIUQXwFKjpqOoQCiIHt22y8un3PuynqrHSSjWBnMcTfA0woHsEk86HOS337foIHfvKhdjYuNcSCCrSbN5PTvU4vNPz7SfBvX+GxpMlOy+qVjHrf2OsGqAwxi5pp3HOlUVXHHSvHvzJw4x6wkPP20XiaFh8YHJYkLr7FjRpRy3xhnS6kqj7XjS12S3ct8SyUBpO9bj72/sGH0UqeWCxx9NYtcqFU1qcoLI0NfKtig1I/TOcHCzscnh7Z8ibNBtuNv/CoJAtzM9Z4FH9mpSxceN9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6ZMOSJWkp2HqW56KE0g4Yq0XlGl1XOB2Yaoh3xjuEyg=;
 b=UDAwc/B8gGHc3VsfhtJfzg5rO+Hhr+NUog+08uR6ZuG5216kQ5bGEUftojVn11jeF2FaGHw3J0sHir2J1JqA8rKJK+yWqLnB9yRTUmA45/5QHTzcFySt+BHfa5xsj1YJVxiVL0sZu1yvPPaD+EzxPEbX6ih6femEY5h9mVcg/72kVNwfrVU9OsKlY+ZYxQI3MdwfCH1hDk50gDsPKyuYApllI8I2B2k1rAsDptzH7czHuOtAaqHUA/1ie3sEsdHfN4J5dKZnfPpITgTNv0IewBEwqDWevfRTKkEnFJ6yKb2y61Qhxi/x997lainMkhWw4ov7futyuTJoKISP5RiTfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by IA1PR11MB7386.namprd11.prod.outlook.com (2603:10b6:208:422::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.11; Tue, 12 May
 2026 13:30:19 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a%5]) with mapi id 15.20.9913.009; Tue, 12 May 2026
 13:30:19 +0000
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Jani
 Nikula" <jani.nikula@intel.com>
Subject: Re: [PATCH v2 4/4] drm/i915/bw: Extract get_display_bw_params()
In-Reply-To: <20260511224923.GB2131374@mdroper-desk1.amr.corp.intel.com>
References: <20260511-separate-platform-from-diplay-ip-specific-bw-params-v2-0-e762cb8662da@intel.com>
 <20260511-separate-platform-from-diplay-ip-specific-bw-params-v2-4-e762cb8662da@intel.com>
 <20260511224923.GB2131374@mdroper-desk1.amr.corp.intel.com>
Date: Tue, 12 May 2026 10:30:16 -0300
Message-ID: <87bjek3gd3.fsf@intel.com>
Content-Type: text/plain
X-ClientProxiedBy: BY5PR20CA0017.namprd20.prod.outlook.com
 (2603:10b6:a03:1f4::30) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|IA1PR11MB7386:EE_
X-MS-Office365-Filtering-Correlation-Id: fb569c95-c03c-4a35-5cfc-08deb02a9c53
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|56012099003|22082099003|18002099003|3023799003|11063799003;
X-Microsoft-Antispam-Message-Info: QpR0eRBRBU3sSIgPMAa0gGd5tS77eZpWBZpW1BvKDiuPFBR1U1aG0lTSP1oJQrqKfpJku31+dw/apnvkic3zg2aYUBrfEjipZPhAhf8lJ+6IA47EpODD3piXuaElQkEIqbrYjbm3hrSC6+kqDfbsFON5/WJ9dHSS+7avsFcTmnkRYC3M9aE0Py+zQ/qc/LkcXUU4UYvkZ/3ASlhTLqeVBJhD4ZXVRXVP7lTvA2PU8khm895B/pECfRoog1puJCZFS7bF8tyvn5MU+4Q3VSDdsDcSd7bCIxfS0sUPxTgSpvLIPMKQgsJGWJii0eIqz1HaVGLY3OH16o4f8MLx+eBGnSPapIkqMgidf65csX7tMDjiKA9PrnzdOQjvXKzsVcBq8X7MmU7BhvXaybOTdtDSYJW01Msq+QGlriaaf9yDzMxAALZnrpoe4hsDXYJzW7kyFsYLkPk7TYNuI/gq+dPHlsDsuSZ2fvtWzekToDUXp7ubwcMojjI9c4xI63UIS7MD/U7hkARJvyAG0WDIBX2FFk5oUKH4C1XL328ZN7LKT+eoOzdIL/t/LPpNEFnGbb8KXIy9kga1P7fMTcliMkuZe11Lz/XaGFjaJh+mlHaN/pQfqLFxCHPxvc6aaIWCXoYS4a3tTqkFMnGT0bQsbV0DFQDYbQTwv7I4dWb/ncfFRLanomka6/ZTUWtQ7eMLw1J7
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(56012099003)(22082099003)(18002099003)(3023799003)(11063799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?HmLzmmFAQKXDJogskyMMXtub6sqTcBKqflXVRYOiVZYggaEYgfu+WC9EEY/v?=
 =?us-ascii?Q?+wZfhpp+oCnjpuQd0YbPAqpKcuRwG0ZICi8PzT2AIl3QuHBjnphNWzAoxLVi?=
 =?us-ascii?Q?oCMkVaawr1oaDTXEIxiS6OvirUgLU5q3h2gMFeiKhaDeGhadjlYvSRuu627W?=
 =?us-ascii?Q?SDSq8mxcnYxHxA9mZJtaqgpL/gOCnz1Rji0AYPvPwSrnifhY9zj6pzI6bUO5?=
 =?us-ascii?Q?LJy/dtf0BGIw2D2ICmF/LUskPpof66bDnybZFFLdzPPx6QWxNNKoOenfCwO7?=
 =?us-ascii?Q?x10P/gWAzpMvsrPLAsclldxZGMXWVIdDDlnosD/X89P+ZztrenzisXQlTamj?=
 =?us-ascii?Q?14m4DhXNPtSi9ZBVSBVmD1Rb272XE0G6bJYhIwZieqDh8tPQBVWNsrfX8wLO?=
 =?us-ascii?Q?+vxO+1d5QqP/nIgYGtkolfdm/STlsGoe9FIwRrDsY8HkyEGMmTbbqUFNpFLn?=
 =?us-ascii?Q?eGAeSanIFGnGHtVJYyIOD9bGZSL7VZUGJyyVvMUzLlUzum/iWZXd67jtRG9R?=
 =?us-ascii?Q?Qw9pLJnrT4QQ9ugqW/qT9FVqLsbsusXHKEz79WX4Zh03hN1yjYaWRYpk5LwN?=
 =?us-ascii?Q?Yd7noN9uutqfeCgNYerTi8xnOuEWgCfpQf2H0QLribFhDOoUFKzsHujD8Kvj?=
 =?us-ascii?Q?JOmy2952IUw9TIQTYSIXP/ToGlsrqTD6ge7vxaFwXFd71UiX7oRsmdis5CS+?=
 =?us-ascii?Q?nXCjMGgrLKNPIigeH/0vdMhOY89WtTdV6EvZaNJj4nWeWu3uyzcN50qebGMA?=
 =?us-ascii?Q?k8maTIXw4vQzSmUtg4INEuLrTs3BkpiJxnYXk7HNafAfGrNzz9m28ttD2IFr?=
 =?us-ascii?Q?m8ZJr3MHHi6Sswm3DkgQFyQQMGFFEbC4UR59tVGWGFeYYs6TE4j95ss3ykJX?=
 =?us-ascii?Q?+sBhjkwmGQUGYGRDYCjD9UYJBIeIog2VMqoj+7XzRbTrbMI53H1T2CsVpuBR?=
 =?us-ascii?Q?ENUCZFiDtCYIrGKOfvpo/gOd2vyAxxBiP/xmfQwaFNxNWAvMwLrvEVXSUQUt?=
 =?us-ascii?Q?gI4AJKSTJVy7FEu4Hp2buQcyVcTyJLkouLwjOLCaYdS1Nx211+OJE3FnrVCd?=
 =?us-ascii?Q?wwyajTWjPd28mxAsg4h6czzFVSBSxNJdsWnmqv9QCB0y5SVJof1Hl759g9/w?=
 =?us-ascii?Q?TBhU1PGMw5z33xZ8kx0WegfUVbfzcEeDgKRNpz6gvZ+5fkPddvOrRaaP/c7/?=
 =?us-ascii?Q?iPxp0WjGhA2A4dn59RSHiSBoNf5JC2JUG2dqW3TBIC4UFry+f89HxbiyuUHa?=
 =?us-ascii?Q?yDAq9sD2noT03mcH8sIi5NDTNCXbhvArOskayMVCxzbEhA3vydaYbSH9ugIG?=
 =?us-ascii?Q?eddA8i7V6DKzGHliXf/CmF5ZfuR4anmMTHtx/cBRpV17fHIticCxKX+cqEDI?=
 =?us-ascii?Q?6OOABfYqWVvaVbvPDyvR/eq/2+yCiZ+aj1mJILgtkzqlA5LxOPNNAZCpFitB?=
 =?us-ascii?Q?S6ip9DaxM9WyQIZYFYof5D9G81QzNj3MoRN8jzLq/M0BoYxpReizrto7va6n?=
 =?us-ascii?Q?OU6pZ5lsV12g51ZRY3Zb4tdii9Pxb9JSOSyyrQrLbXSPvtDtEiy+zu9+MlVH?=
 =?us-ascii?Q?zkbg+0fPO/lPLMsU0Z0I0XOoeBXpHx4g6BwPoJpIMjDTsBhxAaOkBhsFCPyU?=
 =?us-ascii?Q?lYaMJgqsxS0EOt3ZGlSssabQ4Dk7pQx9Of12ZY/JnzD0oD5mda6LQrfA0Mnp?=
 =?us-ascii?Q?PZPYfEBdeUM+aZk6RCE8p5Yv7fTy7m/SHLoH7oUhmlUxSmwWtoMyjakpR1rL?=
 =?us-ascii?Q?x9mfQFvVjw=3D=3D?=
X-Exchange-RoutingPolicyChecked: gdBbAGAvEpWK/dPVoIm2TgfSjFtLc/iabjWq1ZVycfxk8rqlEAmCn4ywVClDXgMnxZNfCc+YiSS52cFZUks4mFlZloIk/j51+zgw9k7/vArJ+R+GZQnrdK8bxbZclyRJ1zgFI+5DHWdJ/g6dlhik0doTBvyejaQDDxg36xFwdf1mlfm46gnhmURyZaFh1Shzh6NJ8o8mTsdlW5BYYNz2/xEzclIT7KPIJkCkUDYWsQpiIy4rKfDwFwH2gjaGj1FoW7L2sgcy0s0MEWOfIG/8htZ/oLyfKZziFukh1+oQ7n9olqUh2y4jmGi3R57tbdm4INCDPdsk4rTeDSqrGYh0yg==
X-MS-Exchange-CrossTenant-Network-Message-Id: fb569c95-c03c-4a35-5cfc-08deb02a9c53
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 May 2026 13:30:19.4140 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hTu3f97fM9Hkw3EdH/Hy4+aFd4XQJLpQnSv+w0cDAvsSyK/KcowcaOCObPOM1ZGRR+X8IdeEMFYTbblBl8XOWw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7386
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
X-Rspamd-Queue-Id: 44D9252133E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid,intel.com:dkim];
	FROM_NEQ_ENVFROM(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

Matt Roper <matthew.d.roper@intel.com> writes:

> On Mon, May 11, 2026 at 01:30:59PM -0300, Gustavo Sousa wrote:
>> Just like it is done for the platform-specific bandwidth parameters, use
>> a separate function named get_display_bw_params() to return the display
>> IP-specific parameters.  This simplifies intel_bw_init_hw() by having
>> just one call for each of the *_get_bw_info() functions.
>> 
>> v2:
>>   - Prefer to call get_display_bw_params() only once in
>>     intel_bw_init_hw() instead of having multiple calls in each of the
>>     affected *_get_bw_info() functions. (Jani)
>> 
>> Cc: Jani Nikula <jani.nikula@intel.com>
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_bw.c | 36 +++++++++++++++++++++------------
>>  1 file changed, 23 insertions(+), 13 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
>> index c01356d38e64..acd1b6901b46 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bw.c
>> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
>> @@ -493,6 +493,26 @@ static const struct intel_display_bw_params xelpdp_bw_params = {
>>  	.displayrtids = 256,
>>  };
>>  
>> +static const struct intel_display_bw_params *get_display_bw_params(struct intel_display *display)
>> +{
>> +	if (DISPLAY_VER(display) >= 14) {
>> +		return &xelpdp_bw_params;
>> +	} else if (DISPLAY_VER(display) >= 12) {
>> +		/*
>> +		 * RKL's SoC was based on ICL and the display, even though being
>> +		 * gen12, had changes to the memory interface to match gen11's,
>> +		 * consequently inheriting gen11's display-specific bandwidth
>> +		 * parameters.
>> +		 */
>> +		if (display->platform.rocketlake)
>> +			return &gen11_bw_params;
>> +		else
>> +			return &gen12_bw_params;
>> +	} else {
>> +		return &gen11_bw_params;
>
> It doesn't really matter, but this is technically going to assign gen11
> parameters for all the pre-gen11 platforms that call through here on
> i915.  If we never use the values it probably doesn't hurt anything, but
> it might be best to make this a condition on gen11 rather than an 'else'
> just to avoid any confusion.

Sounds good.  I'll add a check for display version == 11 and then take
the same approach as for get_soc_bw_params(), by returning NULL with a
warning.

--
Gustavo Sousa

>
>
> Matt
>
>> +	}
>> +}
>> +
>>  static int icl_get_bw_info(struct intel_display *display,
>>  			   const struct dram_info *dram_info,
>>  			   const struct intel_soc_bw_params *soc_bw_params,
>> @@ -843,6 +863,7 @@ void intel_bw_init_hw(struct intel_display *display)
>>  {
>>  	const struct dram_info *dram_info = intel_dram_info(display);
>>  	const struct intel_soc_bw_params *soc_bw_params = get_soc_bw_params(display);
>> +	const struct intel_display_bw_params *display_bw_params = get_display_bw_params(display);
>>  
>>  	if (!HAS_DISPLAY(display))
>>  		return;
>> @@ -858,23 +879,12 @@ void intel_bw_init_hw(struct intel_display *display)
>>  
>>  	if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx) {
>>  		xe2_hpd_get_bw_info(display, dram_info, soc_bw_params);
>> -	} else if (DISPLAY_VER(display) >= 14) {
>> -		tgl_get_bw_info(display, dram_info, soc_bw_params, &xelpdp_bw_params);
>>  	} else if (display->platform.dg2) {
>>  		dg2_get_bw_info(display);
>>  	} else if (DISPLAY_VER(display) >= 12) {
>> -		/*
>> -		 * RKL's SoC was based on ICL and the display, even though being
>> -		 * gen12, had changes to the memory interface to match gen11's,
>> -		 * consequently inheriting gen11's display-specific bandwidth
>> -		 * parameters.
>> -		 */
>> -		if (display->platform.rocketlake)
>> -			tgl_get_bw_info(display, dram_info, soc_bw_params, &gen11_bw_params);
>> -		else
>> -			tgl_get_bw_info(display, dram_info, soc_bw_params, &gen12_bw_params);
>> +		tgl_get_bw_info(display, dram_info, soc_bw_params, display_bw_params);
>>  	} else if (DISPLAY_VER(display) == 11) {
>> -		icl_get_bw_info(display, dram_info, soc_bw_params, &gen11_bw_params);
>> +		icl_get_bw_info(display, dram_info, soc_bw_params, display_bw_params);
>>  	}
>>  }
>>  
>> 
>> -- 
>> 2.53.0
>> 
>
> -- 
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation
