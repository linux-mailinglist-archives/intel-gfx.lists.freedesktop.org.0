Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id GjX/HlQnH2rXiAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 20:56:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8DEA6313F4
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 20:56:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="RVW/tpYr";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B142B10F4E9;
	Tue,  2 Jun 2026 18:56:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B60E10F4E9
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jun 2026 18:56:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780426578; x=1811962578;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Z9YyIt05wkP3OGvTYf53uh4TqqyoYTuvBLJguyLd+hM=;
 b=RVW/tpYr8B2FMnDqcbtgM3ebZZU10Nku0s05LUb/F9C8GFUl2YuuvkF3
 uHFMnLk+NBw9LnYAv88bs9ghvqlBuqJxhJSvCoxlMHMrY0a4JIyrqJ4LH
 lxRjei8kMNfcsQ8DxU5XrQY7ech5VOFwSaeTZW1TmKkHHXfbl0K0D8kQZ
 efI6/da4HWw/FswzDOjKt9Ox+GQBUhxIeYFWcl2Uv5sbv8tOknWSGR+AH
 sbOBUWEWV0KApQ462RRQ9r5TLncNeq26IGjIalwvh0cqHAHn7abKG7oAi
 0cMlDVzdNMf5zjj7xfXbim6RpajYBSp6pvVqpNIgxiYBgji6PSnUgVp6J Q==;
X-CSE-ConnectionGUID: J0IKIJNtS7+K6R/4uNYZLQ==
X-CSE-MsgGUID: vTWn2HSlT3Oc42sLrWoV+w==
X-IronPort-AV: E=McAfee;i="6800,10657,11805"; a="84849149"
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="84849149"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 11:56:17 -0700
X-CSE-ConnectionGUID: 2O4P72z3RDibJzQJDgUASA==
X-CSE-MsgGUID: hiQ01vnPTPK5EB7jB0WYfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="239823292"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 11:56:16 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 2 Jun 2026 11:56:16 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 2 Jun 2026 11:56:16 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.43) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 2 Jun 2026 11:56:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yuxtyApAguF5PGfz/jJz1w2fIXd24dBeuxh+yp+W/nhKLaFKIMErZbwECg60bdlw9Kb9JR9SLilJ2dLxZ63zmYbJ1NORlX6Uoi7OKupYbPyr2JGmOaErn+gfcfF4g2SVsvqpIPBIDwrCBKmn0LRJ4Jc/wUIH93QJtTXvZdY5o3zJo3xUcp81GtszNL09sn8xspGaH6CxZ4Rkw/pJFPhviMtRQJKErWH567oeb5Izkvzmwn6HQU7uuIqluEcaBTkR4UXkp8IfQM6Gvr5mHa8DRx7TtyBtR672Gk+er0R2UlrRvzFXF4qGH2LeJEPQJ6JN0PB0PybzIgif4X08N0MNDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JAbs/se+dCX9DKGTOMifm5cG7QzN09gWYvR+L28zNGo=;
 b=WaxyqpE51URxOGRbucBdBuXY8GnA/xLsxLVFduqQ35d9xemhgmrcOGtVs6zA5u7jLm3tBuvDbvyafxnirdMeJ5K+FKgAB+0oU5/nUsNbFnrffXMSh9+d8t5lAM+mEOevx4m5Aiy7pxSC20U1w5pKRSZxwAZlztGDRWmgORgw+WCJso1FeyRDgjyy9os8DihSpk82YmCC5SD42Qb2ZGRhjdnm3Lcb7xpLrKXHjJivJq/997Ri/22ngFjjF8XFXxqAX4h3fo5U4T31dX7+3i1ualM+B8BQQK5qjAD8XLKCC5anOLiM+WRXxdA/f7DTvRgv4FdfXsoKKqklZUwMi4Wiwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6141.namprd11.prod.outlook.com (2603:10b6:8:b3::13) by
 SA2PR11MB5145.namprd11.prod.outlook.com (2603:10b6:806:113::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.71.16; Tue, 2 Jun 2026 18:56:13 +0000
Received: from DM4PR11MB6141.namprd11.prod.outlook.com
 ([fe80::1cfb:82cd:3519:418a]) by DM4PR11MB6141.namprd11.prod.outlook.com
 ([fe80::1cfb:82cd:3519:418a%7]) with mapi id 15.21.0071.011; Tue, 2 Jun 2026
 18:56:13 +0000
Message-ID: <b9348c9e-9571-4a3d-a1e3-b19057f62576@intel.com>
Date: Wed, 3 Jun 2026 00:26:06 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] drm/i915/dp: Handle VSC SDP revision 7 in unpack
Content-Language: en-GB
To: Juasheem Sultan <jdsultan@google.com>, <intel-gfx@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@linux.intel.com>, Manasi Navare
 <navaremanasi@google.com>, Sean Paul <seanpaul@google.com>
References: <20260430231206.772649-1-jdsultan@google.com>
 <20260601212613.3682640-1-jdsultan@google.com>
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260601212613.3682640-1-jdsultan@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0309.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:21a::12) To DM4PR11MB6141.namprd11.prod.outlook.com
 (2603:10b6:8:b3::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6141:EE_|SA2PR11MB5145:EE_
X-MS-Office365-Filtering-Correlation-Id: 17a90f00-633f-4ea4-1e93-08dec0d89e0a
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|22082099003|18002099003|56012099006|11063799006|4143699003;
X-Microsoft-Antispam-Message-Info: 94hWgxMyg7wOruv4fNLXE7lo+Et2YzEDclzpgf9K4r2RYNNbx4WMWCFXh0N4w148jdbEMXStgUWBD64GLqPlbPadjguPDPzi2ZI8K6tKFhbaEwAUJcdFcCQhsPrCuGb5SnruM7geSzc/siSASwIpTm1N4m1jMwoK86GnOOikbJq4MkNPw0AQgJE89Roo2GsQUpIQLW+Zggx5Y9LiVcBLvWhs4Z7oZPY1y7AdBqu5NgMvqbEUmAXq5HWgeHt30nq4c8l2s2QzWDo3RVkDZUt9a7lsq+ujvm+rapECjuZ+jbKmbO8TbywaeoioiUcoyQ8Grbo0pffnfqZ+y0rf/svZoS9QUuWqfinoeiBtNDitVsiY6rzPHG4D2A3XPARhQmF7SrvZuG2ZC/337k64rVcGQN5hDrg7qM9hxY/4F+yC+y5NJd5zoHSF16f1rF+MjtMomhJ8RbbK6pFc+d1SJWF7dKBP2t1y+mSf9BxuWGIKHm0zfamsyJI8Qz+S45iX2sl8WLxjfizYui12gotApsBRmBwoe8flERKUNzQ3+B1CSdmDfTckyw7+j/yEyqvQH87aTrjQ/I7JbJRUk+zsDvu/yBq3L9gR1gQtwkAnnFfAuuKKCyM30eolXOokL0f3HNmVK9Ig/tOuCqDIFVQyLSOM1ZDKNG4qrRKuotjRBi/rZPczrFlCLVH6Fvhnnu/HA+Vt
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6141.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(22082099003)(18002099003)(56012099006)(11063799006)(4143699003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UGVOV25nZDlWTTZDZ3dmUDg2MlFjaytzNi9PanE3VnlwZzFwVG5Cb2hzV1RD?=
 =?utf-8?B?UXZ0enFYTVRzczZIM1hHRVlZWVg2Uk5TNEVqK3BuRzdDTk0xNDlLSVREamx4?=
 =?utf-8?B?ZE43UGZFUnFnWS9iTDdGS2J0ZjB5Q29LeTFjL0tuc1J0UTlIcVVhaThnb2di?=
 =?utf-8?B?Y3ZodEpiTmRrbFlKMDVFYWhOS01OWmtxWEpocE1mVDJXRWs1cmt4RzRQT0Ni?=
 =?utf-8?B?VzNzSWN0VU1HYkd4SlNNc2lxTjZpbUVUL2x0VUU5VnNxWDFYVUVqRHlBQStr?=
 =?utf-8?B?dkZMaHhTakszaVdqdDByZnRGeWtFSENCQ1JHN1JWblIyMncxY25WWDhkNzNX?=
 =?utf-8?B?RmNSenk3VWExcUhwTnF5TTBBV2E1Qk9UdXhaNUlPRFIyRW0rcGQ5TVR5LzlD?=
 =?utf-8?B?Rm82bDZFNHRENkh5bG5uZlBzN0xJSkcrZXc0MSs4cUpCaExiZzY4djV3NUlm?=
 =?utf-8?B?QWZUNU43K2lhd3hNQi9xOEFnV1c2K3VWb3FNamFYWE1mWGROcmlnUUtNejh5?=
 =?utf-8?B?VzA0MzEvdlNqK3lpNlhFMUF3UUpsMTRGZ01lRHIyK3pXRUs1U1h6QUNUQWlL?=
 =?utf-8?B?SVdXTWpWakRvQkJmOHUxVlo0VUxBTVdFTy9MYmxVWGtaMWtna2c0Q05OY1JS?=
 =?utf-8?B?TkNqUWo5cHEvZUNqNzV3U1FkK1V3dkxPem9ITkNNMnNIYjB1UkovQVBmQ1oz?=
 =?utf-8?B?QWlTU090MDJsUEwvdktiUlVCdkdPcHY1WWhzV0FmYUJwV1o0bFovSGdreFZo?=
 =?utf-8?B?cmhlVUlrUDlLd1NQR0ZnRFZkY3NEVTVPNjJ1THcrTXBkWXJFc2tveldQWEMy?=
 =?utf-8?B?RVZmODBtejBvQ0tLUzVHWUJON1lmM3dTNXBSQ2ZIalUwRlYyaklMblprNzVR?=
 =?utf-8?B?M0krMUcvYjc2Zi9yYWxaODJEbXpDTDFHWk9oVllxZy9Wb1hRRS91aElZbEh6?=
 =?utf-8?B?dk82dHYvenpVRkNIaW0ycy9JYVk4ZTBwRlFhMW5yVFRMTzVIckI5YXB2c3J6?=
 =?utf-8?B?M082TFREVEZad01tRXRYQmswNHNBczg3OFNQRWxBZDBSaGlYSDlReHVEcHZM?=
 =?utf-8?B?WkpLZDlvTWlsU0RmZVpac08vM0R4MnNTV1FBemRTQlprNmFseWZtMnJwZGxi?=
 =?utf-8?B?bVRvNUVONzVlcTB2Sm1EOVR6SThBaUlyVy8rYzhyVFNDV3gxTGZsV2p4Zys3?=
 =?utf-8?B?YUphTVdsVUJEUnJTWjBLZ05jNkYrZ2s0QnNqWU9PdDcyckJ1TnozWGgzaDhh?=
 =?utf-8?B?SStpWVg0WEFNRkhucE56TXN0d3J1eGxEOTJReFJYcUVCWjBzaTM0YlVRaVhp?=
 =?utf-8?B?U1YzRGpPa2tQVEpweEdSYVpDcjBGYjBuZzRyd0hUTFZhVVZXVDgvZUhMK25y?=
 =?utf-8?B?TnFsTjZPNUtVK3MvWnJkcjlTU3lnR1dQMWowaFlYOGhDdEZHdkhIaXFsZEUy?=
 =?utf-8?B?QStaRmJidmYzK1VnTm9ZT1hlVEhCMWNVZ1JBa3RrVUx1alBsWEdzOTRqMWsy?=
 =?utf-8?B?Mk5DMytRT1FiWkFBU2k3bklLeDRZRUFUMnM0UVBvV2hnMGNWZXBZOTVuWUhj?=
 =?utf-8?B?bzVLblBjbzAya01tcnUvcGdjZzVodFVHQ3AyMlZHWHo5SlplRVlNcTBLempZ?=
 =?utf-8?B?RkR5ZWJVMmFybVM5Q2NHRFRmdHk5MWhwekU1enhqZzNTaW50RC9LYWZDbjlO?=
 =?utf-8?B?eld2K1ZEYzM3YlBtdzMzTUdzLzROUXpFbjIySndremRTTWVYUkxZb1hNODVk?=
 =?utf-8?B?SDBBSGtlbytmVUxpRzZZV0tiYUhiMUdqU3o2TThuaG1xSGROZzBaUnpRS3Z0?=
 =?utf-8?B?eWV6OHQwNW13eWgvUUE2Mm5HckFrMWRIam95bU5jc0dja3BpZmZVczRLQVU5?=
 =?utf-8?B?K3NWamZtTHdhZHZsOTFrZWV1VmF5b1orUlhXdzFxek10QXZyU3U4OVVLN2Fv?=
 =?utf-8?B?VUFzY0t0bDQ2TTdHNzFYMDU4cTgzK3hKUnQ1RTB1cGRrSlJYYVZsTlZ0OVdM?=
 =?utf-8?B?ZEFFVmNHeVEwa0pzRGVoM0cvTFZUVkNmczNQUkpEcTFxbWU3TzRHcGZTcEdi?=
 =?utf-8?B?MDZka25EWVRpRGhqalgyRXB1UDZIcndJQkVLME05U1dxUWtWaE5LRVM5Z1V3?=
 =?utf-8?B?M05ETzRYUGRtRTZxQzBiaUVJWE1oT0d5cGhLQU1JSHdOTlp1V3dRcXpHUGxx?=
 =?utf-8?B?WWd4NDhKU2pSOWtYNXFqWGZLMTJEeHQ0TVJHM1UvNXB2L3p2ZEtZSk9VaHN3?=
 =?utf-8?B?SG9LQ1VKT09tcFA1MVl6eCtBNUh6RlNuNkh3allvK0xrWVZPazJoa25jbVcv?=
 =?utf-8?B?eUJRZHNxOXZFNzNXRGIwVWo0SzBROTl1MVBvQ1RidkVMMUE4cGRBSklqdDU3?=
 =?utf-8?Q?CU5RSxHNib1RQ1DA=3D?=
X-Exchange-RoutingPolicyChecked: rwOZcEyd1f7YObAK3SFpRtVMWQ5R3ZGWecYbbQQYG9TYNtbma2inn4pBCpboF9cfslYFGBYEQv3IXp8TmuqrlexsaJjXmcgE1mVKh4Y3dDHT0nP79SYGZw12WxzXL7TnmnkO2oVGaJv8fNU2je3tCpzmF/YVLuHp3e7vb8FHlJW50b6BYnafhiUxjapSSMTSSBVlzQbEO2pGLnVVw0X5RfT6TMqTny7vTmH4lq8ynOio1rXwzenDP/+yq07Q09J4Li6/6qCy+imHfIz1p1pJSIF2T3Faej8dpZ7jUaOVhuI+4wVmbRT3Q2ufxr4xKiGg1ne+oI2bpx4uyNCDh/aQiQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 17a90f00-633f-4ea4-1e93-08dec0d89e0a
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6141.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jun 2026 18:56:13.3291 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CU9meB6cfVLsEWYQNrE6p7RBHv+M9Uv46OXMf0rvtQQUmvJRsHFVJk46bYpluy616qfB5uOXxU52vz7Je03eoxmFLDZcxDDcDOxo/eLOkzo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5145
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:jdsultan@google.com,m:jani.nikula@linux.intel.com,m:navaremanasi@google.com,m:seanpaul@google.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:from_mime,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D8DEA6313F4

Hello,

On 6/2/2026 2:55 AM, Juasheem Sultan wrote:
> VSC SDP revision 7 (Panel Replay + Pixel Encoding/Colorimetry Format)
> unpacking is missing in intel_dp_vsc_sdp_unpack(). This causes pipe
> state mismatches during state readout because the VSC SDP state is not
> properly recovered when Panel Replay is active with colorimetry.
> 
> Add the missing case for revision 7 to intel_dp_vsc_sdp_unpack()
> so that the state is correctly recovered.
> 
> Signed-off-by: Juasheem Sultan <jdsultan@google.com>
> 
> v1 -> v2:
> 
> Rebase onto latest upstream

Can you please send (cross-post) this to intel-xe mailing list too?

Also, I don't know if it is mandatory but we generally have 
"Signed-off-by:" at the end in the trailer block. Version information 
comes as a part of the commit message itself.

==
Chaitanya

> ---
>   drivers/gpu/drm/i915/display/intel_dp.c | 6 +++++-
>   1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 6ef2a0043cda..b8746dab051c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5343,11 +5343,15 @@ static int intel_dp_vsc_sdp_unpack(struct drm_dp_vsc_sdp *vsc,
>   		 *   VSC SDP supporting 3D stereo + Panel Replay.
>   		 */
>   		return 0;
> -	} else if (sdp->sdp_header.HB2 == 0x5 && sdp->sdp_header.HB3 == 0x13) {
> +	} else if ((sdp->sdp_header.HB2 == 0x5 || sdp->sdp_header.HB2 == 0x7) &&
> +			sdp->sdp_header.HB3 == 0x13) {
>   		/*
>   		 * - HB2 = 0x5, HB3 = 0x13
>   		 *   VSC SDP supporting 3D stereo + PSR2 + Pixel Encoding/Colorimetry
>   		 *   Format.
> +		 * - HB2 = 0x7, HB3 = 0x13
> +		 *   VSC SDP supporting 3D stereo + Panel Replay + Pixel Encoding/Colorimetry
> +		 *   Format.
>   		 */
>   		vsc->pixelformat = (sdp->db[16] >> 4) & 0xf;
>   		vsc->colorimetry = sdp->db[16] & 0xf;

