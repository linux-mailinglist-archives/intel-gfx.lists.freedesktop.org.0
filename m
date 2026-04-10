Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UAWsNZwL2WnnlQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 16:39:24 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 340AA3D8BDD
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 16:39:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 764DD10E271;
	Fri, 10 Apr 2026 14:39:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lAAHrlMH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56BD710E271
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Apr 2026 14:39:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775831960; x=1807367960;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=/U9/n/bdtHN8ZNx8ysNUZa0qyGQmpCV9sU5SDuE4gfs=;
 b=lAAHrlMHi2RVRQYgW13qQdJVM0lpXhjDCsglg1V+77KBzCbgMxcGkwwO
 Kjy/ace8qTx2ZVBRoSjFz05CNU60De1kajsifXHb8lF+AFQlFe2YtiZGi
 Ty7Yg+VUVqsaKphvl8XKWP6yJnAMsY0kLRJ6QNJM0rtn9ZX795VAxvb54
 xDxZzR2npE+ChwL4rSvMOZOc02pR+eBIBadyyzh4Iqh5Pk6VZo4iSekKa
 gwiEL9YS1TpC3mvQ6aDnNcYKi6k7srX3VeMuWJCW7MqJTXYHbUBJ5ijce
 aO2Qqr/35Vzs7Q69cEWYRnjoE3oBmuqVQzboeJjEu5a1Fbo6J6rhyikPb w==;
X-CSE-ConnectionGUID: 8wYV7Za6TcSUHiZGhvO1YA==
X-CSE-MsgGUID: jWN5NbzYR+2cKkryAdKGXw==
X-IronPort-AV: E=McAfee;i="6800,10657,11755"; a="76759775"
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="76759775"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 07:39:19 -0700
X-CSE-ConnectionGUID: V2za+t6WTXqXgCrm9w6P5Q==
X-CSE-MsgGUID: rRCs3/+URhOzAXbaXnpImw==
X-ExtLoop1: 1
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 07:39:18 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 10 Apr 2026 07:39:17 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 10 Apr 2026 07:39:17 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.35) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 10 Apr 2026 07:39:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MEzrkR4oDvV6dp+qwpLAVIktXN9IpxqBVkVM4CTgcyNbxWAsbsU4orsN7SqPk32nfmVXklW9OiGfO9Boca6IvW1an2xbTyGL6EI7qx8LiuvA+nZ0OY96YBKYANdTpEdCKSPh3rHkoCTpfAMKHK+rODSVe4bHI6D+hGchFYcPu2quShbN1N9k3/3Iqn8oQRJRrzXO8vqB3JD3TOSyZ7FvcQyrtJyOcnp90Ny4yt2TseTDsaBcsf1/23Rh2SQa9DxlF8bU+0r64cxjKbpk11exeAIQTLGY6ej+pTjUyqGrrUSYjqrm52k3m90HWh8G78TtbZuwtXEGIOKnC2lyNSwjNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xEOl3M7lMZYwtpmi/Xx/kMXESG03brQdtlQem54NinU=;
 b=AjchmbUtLTQw3TiY7GZzezny0u7P2GBWcjenoiuZ8Gob6WlmYpKWrmJp2BWKGarKW7FQz+Zs3T5POZNWLGonwjWItz/5Rl+oIWo6Mb+tMrot9Ib/Fui0IC6QZ9gwAR7RbWaXVJeVa1IZNE0IUrHxSKSVRO3xDFaPBHphnRVuRW0LZn8RoQawaVCaFgDbaYkzLnKtSSMGII88/4NAXCCYyWoRhy3HGkGNq6clJe9PYRw3GiM602KBWhD9d6P+EVQy7IFWA40EyVA3S3lvSkVVRUY+v21wBW85c3jRzJqxZ1jNRoRacNBFs7CLpJmPYMSppc5VJCE6qVVhsNTXXdrjgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by CH0PR11MB8088.namprd11.prod.outlook.com (2603:10b6:610:184::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.45; Fri, 10 Apr
 2026 14:39:14 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a%3]) with mapi id 15.20.9769.041; Fri, 10 Apr 2026
 14:39:14 +0000
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 1/4] drm/i915/bw: Extract platform-specific parameters
In-Reply-To: <20260409231256.GB6301@mdroper-desk1.amr.corp.intel.com>
References: <20260408-separate-platform-from-diplay-ip-specific-bw-params-v1-0-23c53afa7db0@intel.com>
 <20260408-separate-platform-from-diplay-ip-specific-bw-params-v1-1-23c53afa7db0@intel.com>
 <5a2fefe3f3d7ee92d3cc1bca1ffe88370d54c822@intel.com>
 <20260409231256.GB6301@mdroper-desk1.amr.corp.intel.com>
Date: Fri, 10 Apr 2026 11:39:10 -0300
Message-ID: <87ik9yx4kx.fsf@intel.com>
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR05CA0169.namprd05.prod.outlook.com
 (2603:10b6:a03:339::24) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|CH0PR11MB8088:EE_
X-MS-Office365-Filtering-Correlation-Id: 8786260e-f80e-4b20-cd5a-08de970eefad
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|22082099003|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: emP9qNl60zf8t//lhWoSZ+5bcKSOeZQPnfvwmnmrwsjEJNzNSp4D9Unq00Org958SMRW5IsCr8ZRkU8Y2mbvvbqd+UzD5toTz6pnnTtThX6HoD04BoH8aRC8OPhG9+R/mxo/FF9lUzzy8C/OFCfOxHjJWTqIn8ec3IJfdmmKLlhBi6uLX47iABPEwOP9GBxSCNXffs95/JucjhalE1FCxrPs8oB5Xns1LWU2qQ+bjmqcbcaN1WqhqkctwwXm3hzuowFW5VJ2snP21DSEPM+6sb59cRb34RyXraa6FVZ603AhOiWjwtDhF+Fc8KD5TxPZlcVWCJJfDHbcnzJScIbHTZzLafJElAqOrj3TvLXQ51A/2NRboLobrp1F7AsXia8SWvURXE3BG+KGuuuh3vGkHLRkr4o+F2kY/If6lO2ObtUoXDJdttFJ4t8pIiLl0QBFbSLuaZfUgi6dy1acwXERd200uUz89fwaSLTbopPoSf04UuCZJGfy470ZWyat2Afzr5kqkcyWnK49xePpm/mP5jW+uGxAaB4VNUBILSBqw0CKyQXYCVHqpJIz5jCFFqenwfwgff8/rbB734VcIX2BP9qPJBlm3iMqLU7yBDdr5PjgIqmTkiBBG7Md+vW9CyQQ2zHa9U1abQUbuwU4FoRWEnf52BpfiUz0hWWthwCg4Kf/OCD1VHDgysERDo7TY5b5hKmwEc9LPCPwhAYPsMpnwDBuEigQ2+yl5nrNwLQc36s=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?wafTmmB0+/UTu/1M1kzFkLTVwY0zicRjWSYZcIxtSfRNmcS4QB4EPpy1LvG0?=
 =?us-ascii?Q?rfojL/R9lyLAMyjqvzSN6vfv2e8obYZB4EDjje/0zMiPRENzmE81+T/NoH7W?=
 =?us-ascii?Q?0i7v5kmxhBwJ9/s98D1Fl3+peBWUVNJdAOfCu4JT8qBGCpExxh/YQ/dhzEr8?=
 =?us-ascii?Q?5TX8SzYh8VdHuC1evb3qYTbyR6jLWK/yEukVk6cTFhXhvq5tlGmKHnWBnRik?=
 =?us-ascii?Q?qdxJb28daBqA5ZBuFOQT+ys27Xhpf8iye+SxQDk2ouaZWABSj9d2TdPX+qUB?=
 =?us-ascii?Q?bw7vvy1UXuPoU7mQydJW1hwH3PW/Z50lwtTZyOAIAg8rO1qbPnrGpxP1YpMC?=
 =?us-ascii?Q?aZ9NDg/p+xa727oLl88a5p2n2gLDvLo9GexVCSjGoGF0wXDlECWE9WO0lxw6?=
 =?us-ascii?Q?msZGigwM9dIFCC4FpRobG0Jq8uz73H81JK0TI7B8cnfHq9WOr5FLO0dhY5YR?=
 =?us-ascii?Q?Rym8FHUrndjbPvi5m4H8hH+y6kvxHq/XgBlcanoyjLMjCQG2AoWMrZ3HRZBL?=
 =?us-ascii?Q?s/2CPPUKFZFaLhp0GN6RTm6kPizkSWQNP59ArrTvFWPwEBdlOxy8PzEiNCgE?=
 =?us-ascii?Q?p7tL/1rU3pKHzov0b3gJwLpwfKlTbxRWLmk2vE0846PjmbET6KA+gnpUeHV6?=
 =?us-ascii?Q?6IZLnFzi08UYbnYF8rWktfNyqoHCG/tRP59zqQbvto1yvtXSqMLXcfkosSoo?=
 =?us-ascii?Q?dX8QM/Y1hex5Cuo4nbjTP9zKPiluPZwSY9jpgJYf/btoCuEWVsmwfXsDWYz1?=
 =?us-ascii?Q?Fa9RsSje7ENgxjfK2CU3xVzXuQI3d+VxRHqOezwUdsUFb6SuZEax10Hk+H9h?=
 =?us-ascii?Q?88hQclQ/G+RMLnoD1op1Ml93NbK/ZtUSr54URV+dWOjF/W7hvoUXrhYRaZ8r?=
 =?us-ascii?Q?vHFIFK2JXxsoWF0TNq/Kbt1Z6Sl9oC+6IlZrzX5xCMHoHoN61V14KHaMcvrn?=
 =?us-ascii?Q?zOtNIvovSUOQ0Kyuh8/un2ew3rUdxCbXhsDeq++LUUiFw68CsCmskKbLi9bW?=
 =?us-ascii?Q?ERlGqnvFHfdQcYDIru3qwooLSr+CUpBqxvjgdrGaT7zIrwYHfOQ2TrPzzAnC?=
 =?us-ascii?Q?rsgRRij7S9nnGdTBTul2d8IIW5Z2qBcslmlacAtbQ5tcclcdznxnfVGShPuX?=
 =?us-ascii?Q?8IycNZm/ILm+Q/J9fRjHMLyl4ys94r266TyRnpkjCp+jSnQaNdYB+7BkWW5E?=
 =?us-ascii?Q?hei3i/Dz+z4v+cHwuLI5Lk43+n1MoZ11PVQ014+UXW80To6/0yuXJTfe5Oxb?=
 =?us-ascii?Q?jQe0z42XucY4epV8V+ze1UipPx7SeZWg73kP2jPrzXp9hhZW7te/nzAFKA8j?=
 =?us-ascii?Q?Z/24qmmW7X0FKZz/QGwg6geVbk4bZ4K8xOp1lsWa0wyvjqTo5NTDsNakEtbe?=
 =?us-ascii?Q?Pxl1pQ6UZOXYG58ZbfIpJwPd6NCTLmAc9DEzMXB/J8qAyE+xf/h1AF93llqn?=
 =?us-ascii?Q?Bl7eFHIWqTCCv0+WMC3MmcDAGs4J2vynGwePBc+e2ewsFyXMWOXJFex6A915?=
 =?us-ascii?Q?GGHUUB/yz9LkgFgFqjTJUkrVIRJp+6wcq8K4q0HMwOQaBbqRBLLRn2VfGklt?=
 =?us-ascii?Q?Ks9KL6IhYZhXWRFvWjLZ7yx5t3b/un1Zq/yGOkIVwb/ZyK1pyE4JnUAGinAU?=
 =?us-ascii?Q?Dytgwi/aa+6lyRAxg4C4+weO4Wosy5p30jSWojtaXNI965P9EKOA4n0SyNQc?=
 =?us-ascii?Q?ELGkm8cZRTtP6KaeAzq0TKnqh3QYpLuVHmOjBLNFS1whEZJ4aHP+jwNjFPPM?=
 =?us-ascii?Q?0ankBNTH8w=3D=3D?=
X-Exchange-RoutingPolicyChecked: ekqBxSQkQZ3E6Zc7Xjz0ON+WHpIO0mNvTI/AiBYWrLsUAE+6pU2bXl+Mkxy3u84QtgizLEofnfpEVapx71Ymln3vpdTU/FX0L9JT03HsuBiksNf9stQu6Q9wvUUjfss8Vvj4eASTMT+NCn7dxWGLDhxpQjQUNA9O8G64iDO0ceGaBvF17/SMDLPGguEMeddQOuvwjREK2p8ufMVnmBjkGCqaEuFaWO4ek1ON+bS/o3yOHbe+VKCQ76ONDq4XiLcmwbziVWinapXSr/6RC9xZPNd4G1/mmWbv+VQ28GNUJqkazBpmMqvAxTp7ibhcDEO/himDyTFINt4ChaZJlQQ7eQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 8786260e-f80e-4b20-cd5a-08de970eefad
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2026 14:39:14.1043 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Lwmg7crMdFhkIsOb34bPfi9fUn0EDNKae9yRwwsHB4y+ue/3+SJusc2K/IXoguQfKWofLfdEaEkIOwSlfYkbhQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8088
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
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:matthew.d.roper@intel.com,m:jani.nikula@linux.intel.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid];
	FROM_NEQ_ENVFROM(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 340AA3D8BDD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Matt Roper <matthew.d.roper@intel.com> writes:

> On Wed, Apr 08, 2026 at 10:16:42PM +0300, Jani Nikula wrote:
>> On Wed, 08 Apr 2026, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> > We got confirmation from the hardware team that the bandwidth parameters
>> > deprogbwlimit and derating are platform-specific and not tied to the
>> > display IP.  As such, let's make sure that we use platform checks for
>> > those.
>> >
>> > The rest of the members of struct intel_sa_info are tied to the display
>> > IP and we will deal with them as a follow-up.
>> >
>> > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_bw.c | 174 ++++++++++++++++++++++++--------
>> >  1 file changed, 133 insertions(+), 41 deletions(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
>> > index 474438fc1ebc..ed840b592eff 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_bw.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_bw.c
>> > @@ -375,77 +375,170 @@ static int icl_sagv_max_dclk(const struct intel_qgv_info *qi)
>> >  	return dclk;
>> >  }
>> >  
>> > +struct intel_platform_bw_params {
>> > +	u8 deprogbwlimit;
>> > +	u8 derating;
>> > +};
>> > +
>> > +static const struct intel_platform_bw_params icl_plat_bw_params = {
>> > +	.deprogbwlimit = 25,
>> > +	.derating = 10,
>> > +};
>> > +
>> > +static const struct intel_platform_bw_params tgl_plat_bw_params = {
>> > +	.deprogbwlimit = 34,
>> > +	.derating = 10,
>> > +};
>> > +
>> > +static const struct intel_platform_bw_params rkl_plat_bw_params = {
>> > +	.deprogbwlimit = 20,
>> > +	.derating = 10,
>> > +};
>> > +
>> > +static const struct intel_platform_bw_params adl_s_plat_bw_params = {
>> > +	.deprogbwlimit = 38,
>> > +	.derating = 10,
>> > +};
>> > +
>> > +static const struct intel_platform_bw_params adl_p_plat_bw_params = {
>> > +	.deprogbwlimit = 38,
>> > +	.derating = 20,
>> > +};
>> > +
>> > +static const struct intel_platform_bw_params bmg_plat_bw_params = {
>> > +	.deprogbwlimit = 53,
>> > +	.derating = 30,
>> > +};
>> > +
>> > +static const struct intel_platform_bw_params bmg_ecc_plat_bw_params = {
>> > +	.deprogbwlimit = 53,
>> > +	.derating = 45,
>> > +};
>> > +
>> > +static const struct intel_platform_bw_params ptl_plat_bw_params = {
>> > +	.deprogbwlimit = 65,
>> > +	.derating = 10,
>> > +};
>> > +
>> > +static const struct intel_platform_bw_params wcl_plat_bw_params = {
>> > +	.deprogbwlimit = 22,
>> > +	.derating = 10,
>> > +};
>> 
>> In the above, "plat" feels like tautology, since they're all prefixed by
>> platform acronyms.
>
> "soc" might be more consistent with what we (and various hardware docs)
> do to refer to "stuff that's outside the graphics/media/display IP and
> doesn't relate to GMD_ID version numbers."  Technically "soc" is a bit
> of a misnomer too since a lot of our recent platforms are multi-chip and
> not truly SoC's anymore, but the intent is still understandable.

Yeah. I intetionally prefered to use "platform" as a general term to
refer to either SoC or multi-chip package.  Do you prefer that we name
the struct type intel_soc_bw_params?

What about intel_display_bw_params that is added later? Is that a good
name? I thought intel_ip_bw_params would be a bit vague, since we have
different types of IPs (display being one of them) in the platform.

>
>> 
>> > +
>> > +static const struct intel_platform_bw_params *get_platform_bw_params(struct intel_display *display)
>> > +{
>> > +	const struct intel_platform_bw_params *ret;
>> > +
>> > +	if (display->platform.dgfx)
>> > +		goto dgfx;
>> > +
>> > +	ret = &icl_plat_bw_params;
>> > +	if (display->platform.icelake ||
>> > +	    display->platform.jasperlake ||
>> > +	    display->platform.elkhartlake)
>> > +		return ret;
>> 
>> What's the point of assigning and returning ret?
>> 
>> Why not just return &icl_plat_bw_params; directly?
>> 
>
> It looks like the intent might have been to let people keep copy/pasting
> the same pattern and have the fallback at the end always default back to
> whatever the "newest" one was if a proper match wasn't found.  But I
> agree that the handling here feels awkward and a simple if/else ladder
> would be preferable.

Yeah, allowing developers to easily add new platforms without too much
churn was the intention here.  I knew this style was unconventional, but
I thought the intent justified it (and IMO the code is still readable,
although admittedly a bit weird).

If that's not acceptable, would something along the lines of below be
accepted?

    if (display->platformOB.dgfx) {
        if (...)
             return platform_a_params;
        else if (...)
             return platform_b_params;
        else if (...)
             return platform_c_params;
        
        default_params = platform_c_params;
    } else {
        if (...)
             return platform_d_params;
        else if (...)
             return platform_e_params;
        else if (...)
             return platform_f_params;
        
        default_params = platform_f_params;
    }
    
    do_warning();
    return default_params;
--
Gustavo Sousa

>
>
> Matt
>
>> > +
>> > +	ret = &tgl_plat_bw_params;
>> > +	if (display->platform.tigerlake)
>> > +		return ret;
>> > +
>> > +	ret = &rkl_plat_bw_params;
>> > +	if (display->platform.rocketlake)
>> > +		return ret;
>> > +
>> > +	ret = &adl_s_plat_bw_params;
>> > +	if (display->platform.alderlake_s)
>> > +		return ret;
>> > +
>> > +	ret = &adl_p_plat_bw_params;
>> > +	if (display->platform.alderlake_p)
>> > +		return ret;
>> > +
>> > +	ret = &adl_s_plat_bw_params;
>> > +	if (display->platform.meteorlake ||
>> > +	    display->platform.lunarlake)
>> > +		return ret;
>> > +
>> > +	ret = &ptl_plat_bw_params;
>> > +	if (display->platform.pantherlake ||
>> > +	    display->platform.novalake) {
>> > +		if (display->platform.pantherlake_wildcatlake)
>> > +			ret = &wcl_plat_bw_params;
>> > +
>> > +		return ret;
>> > +	}
>> > +
>> > +	goto missing;
>> > +
>> > +dgfx:
>> > +	ret = &tgl_plat_bw_params;
>> > +	if (display->platform.dg1)
>> > +		return ret;
>> > +
>> > +	ret = &bmg_plat_bw_params;
>> > +	if (display->platform.battlemage) {
>> > +		const struct dram_info *dram_info = intel_dram_info(display);
>> > +
>> > +		if (dram_info->type == INTEL_DRAM_GDDR_ECC)
>> > +			ret = &bmg_ecc_plat_bw_params;
>> > +
>> > +		return ret;
>> > +	}
>> > +
>> > +missing:
>> > +	/*
>> > +	 * Use parameters from the most recent platform,
>> > +	 * but raise a warning.
>> > +	 */
>> > +	drm_WARN(display->drm, 1,
>> > +		 "Platform-specific bandwidth parameters not found, using possibly incompatible default values\n");
>> > +
>> > +	return ret;
>> 
>> I don't understand at all why the function is written the way it
>> is. Seems like it should be a regular if-ladder like we have, with zero
>> gotos.
>> 
>> > +}
>> > +
>> >  struct intel_sa_info {
>> >  	u16 displayrtids;
>> > -	u8 deburst, deprogbwlimit, derating;
>> > +	u8 deburst;
>> >  };
>> >  
>> >  static const struct intel_sa_info icl_sa_info = {
>> >  	.deburst = 8,
>> > -	.deprogbwlimit = 25, /* GB/s */
>> >  	.displayrtids = 128,
>> > -	.derating = 10,
>> >  };
>> >  
>> >  static const struct intel_sa_info tgl_sa_info = {
>> >  	.deburst = 16,
>> > -	.deprogbwlimit = 34, /* GB/s */
>> >  	.displayrtids = 256,
>> > -	.derating = 10,
>> >  };
>> >  
>> >  static const struct intel_sa_info rkl_sa_info = {
>> >  	.deburst = 8,
>> > -	.deprogbwlimit = 20, /* GB/s */
>> >  	.displayrtids = 128,
>> > -	.derating = 10,
>> >  };
>> >  
>> >  static const struct intel_sa_info adls_sa_info = {
>> >  	.deburst = 16,
>> > -	.deprogbwlimit = 38, /* GB/s */
>> >  	.displayrtids = 256,
>> > -	.derating = 10,
>> >  };
>> >  
>> >  static const struct intel_sa_info adlp_sa_info = {
>> >  	.deburst = 16,
>> > -	.deprogbwlimit = 38, /* GB/s */
>> >  	.displayrtids = 256,
>> > -	.derating = 20,
>> >  };
>> >  
>> >  static const struct intel_sa_info mtl_sa_info = {
>> >  	.deburst = 32,
>> > -	.deprogbwlimit = 38, /* GB/s */
>> >  	.displayrtids = 256,
>> > -	.derating = 10,
>> > -};
>> > -
>> > -static const struct intel_sa_info xe2_hpd_sa_info = {
>> > -	.derating = 30,
>> > -	.deprogbwlimit = 53,
>> > -	/* Other values not used by simplified algorithm */
>> > -};
>> > -
>> > -static const struct intel_sa_info xe2_hpd_ecc_sa_info = {
>> > -	.derating = 45,
>> > -	.deprogbwlimit = 53,
>> > -	/* Other values not used by simplified algorithm */
>> >  };
>> >  
>> >  static const struct intel_sa_info xe3lpd_sa_info = {
>> >  	.deburst = 32,
>> > -	.deprogbwlimit = 65, /* GB/s */
>> >  	.displayrtids = 256,
>> > -	.derating = 10,
>> >  };
>> >  
>> >  static const struct intel_sa_info xe3lpd_3002_sa_info = {
>> >  	.deburst = 32,
>> > -	.deprogbwlimit = 22, /* GB/s */
>> >  	.displayrtids = 256,
>> > -	.derating = 10,
>> >  };
>> >  
>> >  static int icl_get_bw_info(struct intel_display *display,
>> > @@ -453,6 +546,7 @@ static int icl_get_bw_info(struct intel_display *display,
>> >  			   const struct intel_sa_info *sa)
>> >  {
>> >  	struct intel_qgv_info qi = {};
>> > +	const struct intel_platform_bw_params *plat_bw_params = get_platform_bw_params(display);
>> 
>> Perhaps it would be better to pass this in instead of every function
>> having the call.
>> 
>> Nitpick, "plat" is not an abbreviation I'm fond of.
>> 
>> >  	bool is_y_tile = true; /* assume y tile may be used */
>> >  	int num_channels = max_t(u8, 1, dram_info->num_channels);
>> >  	int ipqdepth, ipqdepthpch = 16;
>> > @@ -469,7 +563,7 @@ static int icl_get_bw_info(struct intel_display *display,
>> >  	}
>> >  
>> >  	dclk_max = icl_sagv_max_dclk(&qi);
>> > -	maxdebw = min(sa->deprogbwlimit * 1000, dclk_max * 16 * 6 / 10);
>> > +	maxdebw = min(plat_bw_params->deprogbwlimit * 1000, dclk_max * 16 * 6 / 10);
>> >  	ipqdepth = min(ipqdepthpch, sa->displayrtids / num_channels);
>> >  	qi.deinterleave = DIV_ROUND_UP(num_channels, is_y_tile ? 4 : 2);
>> >  
>> > @@ -499,7 +593,7 @@ static int icl_get_bw_info(struct intel_display *display,
>> >  			bw = DIV_ROUND_UP(sp->dclk * clpchgroup * 32 * num_channels, ct);
>> >  
>> >  			bi->deratedbw[j] = min(maxdebw,
>> > -					       bw * (100 - sa->derating) / 100);
>> > +					       bw * (100 - plat_bw_params->derating) / 100);
>> >  
>> >  			drm_dbg_kms(display->drm,
>> >  				    "BW%d / QGV %d: num_planes=%d deratedbw=%u\n",
>> > @@ -524,6 +618,7 @@ static int tgl_get_bw_info(struct intel_display *display,
>> >  			   const struct intel_sa_info *sa)
>> >  {
>> >  	struct intel_qgv_info qi = {};
>> > +	const struct intel_platform_bw_params *plat_bw_params = get_platform_bw_params(display);
>> >  	bool is_y_tile = true; /* assume y tile may be used */
>> >  	int num_channels = max_t(u8, 1, dram_info->num_channels);
>> >  	int ipqdepth, ipqdepthpch = 16;
>> > @@ -557,7 +652,7 @@ static int tgl_get_bw_info(struct intel_display *display,
>> >  	dclk_max = icl_sagv_max_dclk(&qi);
>> >  
>> >  	peakbw = num_channels * DIV_ROUND_UP(qi.channel_width, 8) * dclk_max;
>> > -	maxdebw = min(sa->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 100);
>> > +	maxdebw = min(plat_bw_params->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 100);
>> >  
>> >  	ipqdepth = min(ipqdepthpch, sa->displayrtids / num_channels);
>> >  	/*
>> > @@ -602,7 +697,7 @@ static int tgl_get_bw_info(struct intel_display *display,
>> >  			bw = DIV_ROUND_UP(sp->dclk * clpchgroup * 32 * num_channels, ct);
>> >  
>> >  			bi->deratedbw[j] = min(maxdebw,
>> > -					       bw * (100 - sa->derating) / 100);
>> > +					       bw * (100 - plat_bw_params->derating) / 100);
>> >  			bi->peakbw[j] = DIV_ROUND_CLOSEST(sp->dclk *
>> >  							  num_channels *
>> >  							  qi.channel_width, 8);
>> > @@ -663,10 +758,10 @@ static void dg2_get_bw_info(struct intel_display *display)
>> >  }
>> >  
>> >  static int xe2_hpd_get_bw_info(struct intel_display *display,
>> > -			       const struct dram_info *dram_info,
>> > -			       const struct intel_sa_info *sa)
>> > +			       const struct dram_info *dram_info)
>> >  {
>> >  	struct intel_qgv_info qi = {};
>> > +	const struct intel_platform_bw_params *plat_bw_params = get_platform_bw_params(display);
>> >  	int num_channels = dram_info->num_channels;
>> >  	int peakbw, maxdebw;
>> >  	int ret, i;
>> > @@ -679,14 +774,14 @@ static int xe2_hpd_get_bw_info(struct intel_display *display,
>> >  	}
>> >  
>> >  	peakbw = num_channels * qi.channel_width / 8 * icl_sagv_max_dclk(&qi);
>> > -	maxdebw = min(sa->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 10);
>> > +	maxdebw = min(plat_bw_params->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 10);
>> >  
>> >  	for (i = 0; i < qi.num_points; i++) {
>> >  		const struct intel_qgv_point *point = &qi.points[i];
>> >  		int bw = num_channels * (qi.channel_width / 8) * point->dclk;
>> >  
>> >  		display->bw.max[0].deratedbw[i] =
>> > -			min(maxdebw, (100 - sa->derating) * bw / 100);
>> > +			min(maxdebw, (100 - plat_bw_params->derating) * bw / 100);
>> >  		display->bw.max[0].peakbw[i] = bw;
>> >  
>> >  		drm_dbg_kms(display->drm, "QGV %d: deratedbw=%u peakbw: %u\n",
>> > @@ -814,10 +909,7 @@ void intel_bw_init_hw(struct intel_display *display)
>> >  		else
>> >  			tgl_get_bw_info(display, dram_info, &xe3lpd_sa_info);
>> >  	} else if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx) {
>> > -		if (dram_info->type == INTEL_DRAM_GDDR_ECC)
>> > -			xe2_hpd_get_bw_info(display, dram_info, &xe2_hpd_ecc_sa_info);
>> > -		else
>> > -			xe2_hpd_get_bw_info(display, dram_info, &xe2_hpd_sa_info);
>> > +		xe2_hpd_get_bw_info(display, dram_info);
>> >  	} else if (DISPLAY_VER(display) >= 14) {
>> >  		tgl_get_bw_info(display, dram_info, &mtl_sa_info);
>> >  	} else if (display->platform.dg2) {
>> 
>> -- 
>> Jani Nikula, Intel
>
> -- 
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation
