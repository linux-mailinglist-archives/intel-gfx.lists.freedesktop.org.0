Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GNzSONdruGn5dgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 21:45:11 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F9BC2A0554
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 21:45:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D68F10E4DB;
	Mon, 16 Mar 2026 20:45:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=amd.com header.i=@amd.com header.b="JSSS5tbU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from BN8PR05CU002.outbound.protection.outlook.com
 (mail-eastus2azon11011042.outbound.protection.outlook.com [52.101.57.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4B7910E4C3;
 Mon, 16 Mar 2026 20:45:07 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=t0hfQ6EAVqXdK6uzPbEfcnD8sVpvLnczB+zDZ8JjvzfzpzjZEMrsdtnI2tpssL8Zr1vOtU9zGBTHK8ZSbSQFHnrb30uAFPuhQpJ4+PjeMUGqiSkRtFAnqt6UcTnucffEri07JHU9wAovvTdLjNWEi+f+78KH/ZmoWS4bSuGHi4LzlnUMe1vSu7isKN88UrZgWE6V+ulzy65WMXiQoygDv4szqPX0US184CSbHWE96AMD74QtU3J+OO0FYJAbSGrN+Nn0/Sh3rGrVC7fWbhtvyMnR11QHJl7ecMqEJR+DPoLuKxOlUE21MnemfH/+DQ2xEMlytfx1klN4Ud0nSY1uLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dmgIXwuiaZvNVumNieOlnXG68T2fMMcWtQ6HEwgPv2o=;
 b=KpuPAzxq26qQvZUxiE7Hi3WgTiAq8D77vOoiYMnvALyyXKWkKFfo0Jdbyt+JSPO6S9AMUYko8sgpR8ZcOw+Zj8pCfTEY+dPWalx4g1havF1GIct6rNqbyP8b+++8Ji8k1rbapfvK4Xbr65lRvn5SoRCPaVcoEVm+U/KknvNcwkxMvOe7bPKWyLgOOCivAl86+sDRqZLydto2P/ovK2ZtFv17aab6Il1ajXxdaTz8uC5xHvCD+VqF/Tq8Cgz5a2nSXeDRtiTyc/ihQ7iVBs4gE60OirMJ/l2FXJQnVauUAO3KF/iiZWRtCAAE2z19bL6eYF3gpkhv4dYEwVulWs+fUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dmgIXwuiaZvNVumNieOlnXG68T2fMMcWtQ6HEwgPv2o=;
 b=JSSS5tbU0jx7zN20oZyCGW1i6xa+a68sFUDlCF6RUfRpE33i9Nih52nVF0HwGrjXLwygg8NGJ45Ej83BVXfLQjNj7BYLJtJnNqHRcAUlj/OZJRlYNVutct/6xbnd4WMOtjEwVdx30IVf5ArlZ/+uFoAoQIbc8JfLkp9scttTBB4=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BL1PR12MB5126.namprd12.prod.outlook.com (2603:10b6:208:312::8)
 by SA5PPF530AE3851.namprd12.prod.outlook.com
 (2603:10b6:80f:fc04::8c9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.8; Mon, 16 Mar
 2026 20:45:04 +0000
Received: from BL1PR12MB5126.namprd12.prod.outlook.com
 ([fe80::c3e7:1bc5:2b91:1cfe]) by BL1PR12MB5126.namprd12.prod.outlook.com
 ([fe80::c3e7:1bc5:2b91:1cfe%4]) with mapi id 15.20.9723.016; Mon, 16 Mar 2026
 20:45:04 +0000
Message-ID: <3cc8bd83-8a19-488b-b5bf-b71f75c18e74@amd.com>
Date: Mon, 16 Mar 2026 16:45:00 -0400
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/10] drm/colorop: Add DRM_COLOROP_CSC_FF
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: louis.chauvet@bootlin.com, mwen@igalia.com, contact@emersion.fr,
 alex.hung@amd.com, daniels@collabora.com, uma.shankar@intel.com,
 maarten.lankhorst@intel.com, pekka.paalanen@collabora.com,
 pranay.samala@intel.com, swati2.sharma@intel.com
References: <20260306165307.3233194-1-chaitanya.kumar.borah@intel.com>
 <20260306165307.3233194-2-chaitanya.kumar.borah@intel.com>
Content-Language: en-US
From: Harry Wentland <harry.wentland@amd.com>
In-Reply-To: <20260306165307.3233194-2-chaitanya.kumar.borah@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: YT4PR01CA0046.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:fe::14) To BL1PR12MB5126.namprd12.prod.outlook.com
 (2603:10b6:208:312::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL1PR12MB5126:EE_|SA5PPF530AE3851:EE_
X-MS-Office365-Filtering-Correlation-Id: d48816fa-d05a-4a90-515a-08de839ce68c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|7416014|366016|56012099003|18002099003|22082099003|7053199007;
X-Microsoft-Antispam-Message-Info: AJTdCtc1dk6N57w2PaG5aCDSxKbeNXIGhW2ICIzbx79Nq1OqXv6lrnGIsI8Tyby46hRJtTLNRgw34INP+/lHpV9Kq/WOAdpsVq5hb9vz5QMMnpnglyNeCMkPbn97LVtoMAcL8nKcwLVX+Av7mV+YFXpd1nkpqtuxRIac+/ep3FN7JnQftgKFo4wfSJHYtilWvvHnTVWt+K0w/1i7qdDrgH5I/cdHHHd5cWXOlP6k6IEC/jKuFUVXZC3wb2vTj7OWZDmDMW+3RjLmP4F7ZN4iQiPy0Bzefw9VgNnEyyaSbCUnhrZUyGysGanneQe04v1JVXwU0SG0yjNcfL9J8mNtwOHJvfuquF5G8zXjX5LP9byhbo7aMsN3rKMPQbcuKKs5AJoHgAPYsXs2ttxd5WM68+ZonWw5QvFdKMzo8JSkOT7wmMmx2OoplXh3YMNazbkeVxusYi+MugVXqIMtzgGwv2nwD006eDcXpSjC2XgLgcqql3N6yyfkE+BfhvffaWZol92m6WRvvkJ8QMQ5Lxr35No3+RIH83cGkiq3A5W4hThm5WrIAqbOvx0w8xGY8XwvyBMDVjYonBNm8dsXlPf4s2Q/vAGnZkaYtlJPLlKb4y8MUciU9cPC0/sLF98XYP9EgGxtiAdQSFNVhBZirgHV3g785AkI0KPlF4klo0Yf/o4eZdYxeXSq+67rIE4W7A1YXRMneftkMajdKrW1frJIHVHKsjMcWuIGIs7kjPOYn+w=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR12MB5126.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016)(56012099003)(18002099003)(22082099003)(7053199007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MWEvcmo5Z2lCdTJaYi94enFmK2d2VlZac25RdUdUSm5nd2xXUWpwRzl5aUIw?=
 =?utf-8?B?MDYxK3NlNk9XUW9IeWl0YkNSWEtTd256U3Q3OUNkbUtNN3pkcnB5NlBzQ0ti?=
 =?utf-8?B?anJNYTdpVmp6ZEZwS0ZrWWZEaWZYU1VBczQ0cXYrdGM3NHdMdVBWMHdvRmdS?=
 =?utf-8?B?eUZPeXVwc3VsQU1HU3NlcU40Um1welVVOVZyZmVtMzBxdmlHS3VvaGdVTnlF?=
 =?utf-8?B?TnBHRVQxeHRydlhlSmkxZ2EyNENNOXZQQXVhakVBSjhsaVpWS1o0N0d5ajJQ?=
 =?utf-8?B?MndmeEpVWmU5NjV0UlZiL2ZqL0ZqWkdSZ1JVcUZLKy9oOWVuVlJ2L2dsanJh?=
 =?utf-8?B?OVVBdHFMeTRvYXBQd1RzV0V6TElpVDQxcDBYWG1IWEoyYVR6VGc0Z3BCTDBU?=
 =?utf-8?B?aXJ5Rm42eTBXL0VHMncrVnN1cFV0cW9YLzJZV080dE02YVB1ZU1lc2VLa3By?=
 =?utf-8?B?RW9kZUJOaVpKWThGZnhPTHN6c1kyNk15SjUzR0JZVzVqRnNVa1VueVpEbk1k?=
 =?utf-8?B?S0NDVXB1MW9KY0Z0WTBTYm5XVVlaZzVZYWJuQ0F5ai9FaHB0cVhwbFVNNS90?=
 =?utf-8?B?WDJRd3dTOXh6cUFQeHZXTEJRMzVLcTZGNVRGVGxkNUlKZi84YkZCZVhXYVE5?=
 =?utf-8?B?djdyZGJhUGdVRlVUV1ZZNDl6dDE0emJzNDEwSDBNR3orQmJvZmowdzBDamFq?=
 =?utf-8?B?NUJ3L09BRTBLUXdjYzFSSjc5T0c1SFZaM0xNZTYzNmFYS0Z0T3lkK3hQaXdO?=
 =?utf-8?B?Vm9CNW9mUDM5ZEJQWFYrWmVySnBhaENoRkxFSlNRbFRSdjhScHptRHR2N05T?=
 =?utf-8?B?MmozUHlhS081bjhrS0tyZWxxR3ROZkxqS2Q4Y2JuQ3JWaVVUT3l4dHBVcUUw?=
 =?utf-8?B?ODF6MVNETFVTOWlod2FXR2JZOXY4WVpwN0haWDJJb3lZak82VnlrUGFvTkN4?=
 =?utf-8?B?dWtCbFJBYnFuVmtxQkR5WFhBWEFpN25KVWZ5VkIvYXk1bVVCbGVzbmtJWHRU?=
 =?utf-8?B?TUtPT0syck9hREt5TkhBcmNTUXREYzI3bHlUeGhEOWJ1TFBLVVVucTNLNUUz?=
 =?utf-8?B?T3huaEVTdDc1TzVXcndJU25BOXBvVHEwMThydUl1VVNrUFF0c25aMWpnRHNx?=
 =?utf-8?B?SHNzUlFoTUFsLzZjQW5FYjhKdDFOdEROaXEyUjZwaVBZVXJSSXFDZzlOVHJX?=
 =?utf-8?B?QVdjRGZDR3J0SFcydXQ4WDN6NDMzSC9MQk9HU08rUkluSERRZ3NzYXlyVFdK?=
 =?utf-8?B?QmJJS09BbEZWUjJIWVNJTFJMbE9WQjY4SWtwcURONCs3WkxkcHlTWGVianhL?=
 =?utf-8?B?UmEzclpYVktnaGo5REpZWE9aVFdhWlAyc3BkK1hTQzVYUG5GdG8rbnVSdnZ1?=
 =?utf-8?B?a3J5VmZmNTJUa2d0SUdQQUdsVStTZ3dIMDRJRVN5M2IyN09wOEdOMnBzQTRE?=
 =?utf-8?B?ellkOTNvRkdtSm1XNW9oYzdXa1JGdFYwQnEvRGdXUVl2Mk9VUjkwYjV6Ty9S?=
 =?utf-8?B?UUIybnlDMTV1RXROQVQ2ZTk5Q215VUp3NzA5N3RpQkdKcjVwOGh0VWRXOGZl?=
 =?utf-8?B?a1lwOEs4cFdod0lUeSt2VmdzQTNLQXQ0Q3l6bTNjSkZqeko5OUNiekR5UGVG?=
 =?utf-8?B?RkdCb0NSaUhqckUxNzlQVEZKTzVsd1QwMGVWbVREOWFPV29NbG4xVVdPLzU3?=
 =?utf-8?B?QmozRmhFNUR2S0xvaExGV3FIaWFxK3dTNkpKaU1VUFZaVjN1T0laUnJkbjU5?=
 =?utf-8?B?K013VzQ0SG56WThrUjFWMzl4bVVsMVlleSt4RGVSbXdndU5XaElnNTdxZkwx?=
 =?utf-8?B?SXNRYi9CWFBIcFl0dXExQnJPUGFhdE9qVDNKNDFmbmk4U205eG45RFpocTdO?=
 =?utf-8?B?N1RZczEzUjBWTFUzK2ZqQThWcFd3eHQvWVlwNnlVY3grVUxjbE43UVppcWlF?=
 =?utf-8?B?VVBMWEdOeDg1N0NUVmlxc21KWTdCR2p1MDdDekJtenFGS3lmUEtNNlFKSkc0?=
 =?utf-8?B?MENZVXprUmZ5ZjhMQ2pIWEk3K3duK1RjZm5kSEJXZkQ2OGVJWGVJSGQzeWhK?=
 =?utf-8?B?dlJ4Z1JxWmR0ZURmalVid3dCZTVpNW9ZMWk5cFdMb1JLRnFtRXVFeUlOMGF6?=
 =?utf-8?B?a0VvWHhnNm5MN0dha05uYzA4Nm9CUmI4S0RlYmorN2M5UkNxSzlNT2RKS0Vw?=
 =?utf-8?B?ZXJkYkJ3VnNkanYvRUtabHRMQW14YllHMGgzNkljbFN0MTFMZ2F4U3ExclM3?=
 =?utf-8?B?Z3QxN2xOMmFVVTVKRDBJTXg4c2lNK2VzWUswY1U5c1M2Ty9ybTJoOEFlWU9D?=
 =?utf-8?B?aGRKYTNlUHBuWlJjdG1TbjhTeEdMdERaOWlmaEFwc0UwK3B3R0Qydz09?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d48816fa-d05a-4a90-515a-08de839ce68c
X-MS-Exchange-CrossTenant-AuthSource: BL1PR12MB5126.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Mar 2026 20:45:04.0404 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IC+tJ7cH+Ozrp6i4FZsJ30fRzzrmVeLffI7OfbIfY4i00aKWJIJHEZoOmHFbqC28nmUzGRDQn0Nv5jk19TacVQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA5PPF530AE3851
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
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:dkim,amd.com:mid,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[harry.wentland@amd.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Queue-Id: 4F9BC2A0554
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 2026-03-06 11:52, Chaitanya Kumar Borah wrote:
> Introduce DRM_COLOROP_CSC_FF, a new colorop type representing a
> fixed-function Color Space Conversion (CSC) block.
> 
> Unlike CTM-based colorops, this block does not expose programmable
> coefficients. Instead, userspace selects one of the predefined
> hardware modes via a new CSC_FF_TYPE enum property. Supported modes
> include common YUV->RGB and RGB709->RGB2020 conversions.
> 
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/drm_atomic.c      |   4 ++
>  drivers/gpu/drm/drm_atomic_uapi.c |   4 ++
>  drivers/gpu/drm/drm_colorop.c     | 105 ++++++++++++++++++++++++++++++
>  include/drm/drm_colorop.h         |  72 ++++++++++++++++++++
>  include/uapi/drm/drm_mode.h       |  13 ++++
>  5 files changed, 198 insertions(+)
> 
> diff --git a/drivers/gpu/drm/drm_atomic.c b/drivers/gpu/drm/drm_atomic.c
> index 04925166df98..7296b844e3fd 100644
> --- a/drivers/gpu/drm/drm_atomic.c
> +++ b/drivers/gpu/drm/drm_atomic.c
> @@ -844,6 +844,10 @@ static void drm_atomic_colorop_print_state(struct drm_printer *p,
>  			   drm_get_colorop_lut3d_interpolation_name(colorop->lut3d_interpolation));
>  		drm_printf(p, "\tdata blob id=%d\n", state->data ? state->data->base.id : 0);
>  		break;
> +	case DRM_COLOROP_CSC_FF:
> +		drm_printf(p, "\tcsc_ff_type=%s\n",
> +			   drm_get_colorop_csc_ff_type_name(state->csc_ff_type));
> +		break;
>  	default:
>  		break;
>  	}
> diff --git a/drivers/gpu/drm/drm_atomic_uapi.c b/drivers/gpu/drm/drm_atomic_uapi.c
> index 87de41fb4459..9af73325aa93 100644
> --- a/drivers/gpu/drm/drm_atomic_uapi.c
> +++ b/drivers/gpu/drm/drm_atomic_uapi.c
> @@ -757,6 +757,8 @@ static int drm_atomic_colorop_set_property(struct drm_colorop *colorop,
>  	} else if (property == colorop->data_property) {
>  		return drm_atomic_color_set_data_property(colorop, state,
>  							  property, val);
> +	} else if (property == colorop->csc_ff_type_property) {
> +		state->csc_ff_type = val;
>  	} else {
>  		drm_dbg_atomic(colorop->dev,
>  			       "[COLOROP:%d:%d] unknown property [PROP:%d:%s]\n",
> @@ -789,6 +791,8 @@ drm_atomic_colorop_get_property(struct drm_colorop *colorop,
>  		*val = colorop->lut3d_interpolation;
>  	else if (property == colorop->data_property)
>  		*val = (state->data) ? state->data->base.id : 0;
> +	else if (property == colorop->csc_ff_type_property)
> +		*val = state->csc_ff_type;
>  	else
>  		return -EINVAL;
>  
> diff --git a/drivers/gpu/drm/drm_colorop.c b/drivers/gpu/drm/drm_colorop.c
> index f421c623b3f0..49422c625f4d 100644
> --- a/drivers/gpu/drm/drm_colorop.c
> +++ b/drivers/gpu/drm/drm_colorop.c
> @@ -68,6 +68,7 @@ static const struct drm_prop_enum_list drm_colorop_type_enum_list[] = {
>  	{ DRM_COLOROP_CTM_3X4, "3x4 Matrix"},
>  	{ DRM_COLOROP_MULTIPLIER, "Multiplier"},
>  	{ DRM_COLOROP_3D_LUT, "3D LUT"},
> +	{ DRM_COLOROP_CSC_FF, "CSC Fixed-Function"},
>  };
>  
>  static const char * const colorop_curve_1d_type_names[] = {
> @@ -90,6 +91,13 @@ static const struct drm_prop_enum_list drm_colorop_lut3d_interpolation_list[] =
>  	{ DRM_COLOROP_LUT3D_INTERPOLATION_TETRAHEDRAL, "Tetrahedral" },
>  };
>  
> +static const char * const colorop_csc_ff_type_names[] = {
> +	[DRM_COLOROP_CSC_FF_YUV601_RGB601]   = "YUV601 to RGB601",
> +	[DRM_COLOROP_CSC_FF_YUV709_RGB709]   = "YUV709 to RGB709",
> +	[DRM_COLOROP_CSC_FF_YUV2020_RGB2020] = "YUV2020 to RGB2020",

If these are intended to be used for YCbCr to RGB conversions
will they convert from limited to full range? Or full range
to full range? Or something else?

Harry

> +	[DRM_COLOROP_CSC_FF_RGB709_RGB2020]  = "RGB709 to RGB2020",
> +};
> +
>  /* Init Helpers */
>  
>  static int drm_plane_colorop_init(struct drm_device *dev, struct drm_colorop *colorop,
> @@ -459,6 +467,80 @@ int drm_plane_colorop_3dlut_init(struct drm_device *dev, struct drm_colorop *col
>  }
>  EXPORT_SYMBOL(drm_plane_colorop_3dlut_init);
>  
> +/**
> + * drm_plane_colorop_csc_ff_init - Initialize a DRM_COLOROP_CSC_FF
> + *
> + * @dev: DRM device
> + * @colorop: The drm_colorop object to initialize
> + * @plane: The associated drm_plane
> + * @funcs: control functions for the new colorop
> + * @supported_csc_ff: A bitfield of supported drm_plane_colorop_csc_ff_type enum values,
> + *                    created using BIT(csc_ff_type) and combined with the OR '|'
> + *                    operator.
> + * @flags: bitmask of misc, see DRM_COLOROP_FLAG_* defines.
> + * @return zero on success, -E value on failure
> + */
> +int drm_plane_colorop_csc_ff_init(struct drm_device *dev, struct drm_colorop *colorop,
> +				  struct drm_plane *plane, const struct drm_colorop_funcs *funcs,
> +				  u64 supported_csc_ff, uint32_t flags)
> +{
> +	struct drm_prop_enum_list enum_list[DRM_COLOROP_CSC_FF_COUNT];
> +	int i, len;
> +
> +	struct drm_property *prop;
> +	int ret;
> +
> +	if (!supported_csc_ff) {
> +		drm_err(dev,
> +			"No supported CSC op for new CSC FF colorop on [PLANE:%d:%s]\n",
> +			plane->base.id, plane->name);
> +		return -EINVAL;
> +	}
> +
> +	if ((supported_csc_ff & -BIT(DRM_COLOROP_CSC_FF_COUNT)) != 0) {
> +		drm_err(dev, "Unknown CSC provided on [PLANE:%d:%s]\n",
> +			plane->base.id, plane->name);
> +		return -EINVAL;
> +	}
> +
> +	ret = drm_plane_colorop_init(dev, colorop, plane, funcs, DRM_COLOROP_CSC_FF, flags);
> +	if (ret)
> +		return ret;
> +
> +	len = 0;
> +	for (i = 0; i < DRM_COLOROP_CSC_FF_COUNT; i++) {
> +		if ((supported_csc_ff & BIT(i)) == 0)
> +			continue;
> +
> +		enum_list[len].type = i;
> +		enum_list[len].name = colorop_csc_ff_type_names[i];
> +		len++;
> +	}
> +
> +	if (WARN_ON(len <= 0))
> +		return -EINVAL;
> +
> +	prop = drm_property_create_enum(dev, DRM_MODE_PROP_ATOMIC, "CSC_FF_TYPE",
> +					enum_list, len);
> +
> +	if (!prop)
> +		return -ENOMEM;
> +
> +	colorop->csc_ff_type_property = prop;
> +	/*
> +	 * Default to the first supported CSC mode as provided by the driver.
> +	 * Intuitively this should be something that keeps the colorop in pixel bypass
> +	 * mode but that is already handled via the standard colorop bypass
> +	 * property.
> +	 */
> +	drm_object_attach_property(&colorop->base, colorop->csc_ff_type_property,
> +				   enum_list[0].type);
> +	drm_colorop_reset(colorop);
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL(drm_plane_colorop_csc_ff_init);
> +
>  static void __drm_atomic_helper_colorop_duplicate_state(struct drm_colorop *colorop,
>  							struct drm_colorop_state *state)
>  {
> @@ -513,6 +595,13 @@ static void __drm_colorop_state_reset(struct drm_colorop_state *colorop_state,
>  						      &val);
>  		colorop_state->curve_1d_type = val;
>  	}
> +
> +	if (colorop->csc_ff_type_property) {
> +		drm_object_property_get_default_value(&colorop->base,
> +						      colorop->csc_ff_type_property,
> +						      &val);
> +		colorop_state->csc_ff_type = val;
> +	}
>  }
>  
>  /**
> @@ -551,6 +640,7 @@ static const char * const colorop_type_name[] = {
>  	[DRM_COLOROP_CTM_3X4] = "3x4 Matrix",
>  	[DRM_COLOROP_MULTIPLIER] = "Multiplier",
>  	[DRM_COLOROP_3D_LUT] = "3D LUT",
> +	[DRM_COLOROP_CSC_FF] = "CSC Fixed-Function",
>  };
>  
>  static const char * const colorop_lu3d_interpolation_name[] = {
> @@ -607,6 +697,21 @@ const char *drm_get_colorop_lut3d_interpolation_name(enum drm_colorop_lut3d_inte
>  	return colorop_lu3d_interpolation_name[type];
>  }
>  
> +/**
> + * drm_get_colorop_csc_ff_type_name: return a string for interpolation type
> + * @type: csc ff type to compute name of
> + *
> + * In contrast to the other drm_get_*_name functions this one here returns a
> + * const pointer and hence is threadsafe.
> + */
> +const char *drm_get_colorop_csc_ff_type_name(enum drm_colorop_csc_ff_type type)
> +{
> +	if (WARN_ON(type >= ARRAY_SIZE(colorop_csc_ff_type_names)))
> +		return "unknown";
> +
> +	return colorop_csc_ff_type_names[type];
> +}
> +
>  /**
>   * drm_colorop_set_next_property - sets the next pointer
>   * @colorop: drm colorop
> diff --git a/include/drm/drm_colorop.h b/include/drm/drm_colorop.h
> index bd082854ca74..2cd8e0779c2a 100644
> --- a/include/drm/drm_colorop.h
> +++ b/include/drm/drm_colorop.h
> @@ -134,6 +134,60 @@ enum drm_colorop_curve_1d_type {
>  	DRM_COLOROP_1D_CURVE_COUNT
>  };
>  
> +/**
> + * enum drm_colorop_csc_ff_type - type of CSC Fixed-Function
> + *
> + * Describes a CSC operation to be applied by the DRM_COLOROP_CSC_FF colorop.
> + */
> +enum drm_colorop_csc_ff_type {
> +	/**
> +	 * @DRM_COLOROP_CSC_FF_YUV601_RGB601
> +	 *
> +	 * enum string "YUV601 to RGB601"
> +	 *
> +	 * Selects the fixed-function CSC preset that converts YUV
> +	 * (BT.601) colorimetry to RGB (BT.601).
> +	 */
> +	DRM_COLOROP_CSC_FF_YUV601_RGB601,
> +
> +	/**
> +	 * @DRM_COLOROP_CSC_FF_YUV709_RGB709:
> +	 *
> +	 * enum string "YUV709 to RGB709"
> +	 *
> +	 * Selects the fixed-function CSC preset that converts YUV
> +	 * (BT.709) colorimetry to RGB (BT.709).
> +	 */
> +	DRM_COLOROP_CSC_FF_YUV709_RGB709,
> +
> +	/**
> +	 * @DRM_COLOROP_CSC_FF_YUV2020_RGB2020:
> +	 *
> +	 * enum string "YUV2020 to RGB2020"
> +	 *
> +	 * Selects the fixed-function CSC preset that converts YUV
> +	 * (BT.2020) colorimetry to RGB (BT.2020).
> +	 */
> +	DRM_COLOROP_CSC_FF_YUV2020_RGB2020,
> +
> +	/**
> +	 * @DRM_COLOROP_CSC_FF_RGB709_RGB2020:
> +	 *
> +	 * enum string "RGB709 to RGB2020"
> +	 *
> +	 * Selects the fixed-function CSC preset that converts RGB
> +	 * (BT.709) colorimetry to RGB (BT.2020).
> +	 */
> +	DRM_COLOROP_CSC_FF_RGB709_RGB2020,
> +
> +	/**
> +	 * @DRM_COLOROP_CSC_FF_COUNT:
> +	 *
> +	 * enum value denoting the size of the enum
> +	 */
> +	DRM_COLOROP_CSC_FF_COUNT
> +};
> +
>  /**
>   * struct drm_colorop_state - mutable colorop state
>   */
> @@ -183,6 +237,13 @@ struct drm_colorop_state {
>  	 */
>  	struct drm_property_blob *data;
>  
> +	/**
> +	 * @csc_ff_type:
> +	 *
> +	 * Type of Fixed function CSC.
> +	 */
> +	enum drm_colorop_csc_ff_type csc_ff_type;
> +
>  	/** @state: backpointer to global drm_atomic_state */
>  	struct drm_atomic_state *state;
>  };
> @@ -368,6 +429,13 @@ struct drm_colorop {
>  	 */
>  	struct drm_property *data_property;
>  
> +	/**
> +	 * @csc_ff_type_property:
> +	 *
> +	 * Sub-type for DRM_COLOROP_CSC_FF type.
> +	 */
> +	struct drm_property *csc_ff_type_property;
> +
>  	/**
>  	 * @next_property:
>  	 *
> @@ -424,6 +492,9 @@ int drm_plane_colorop_3dlut_init(struct drm_device *dev, struct drm_colorop *col
>  				 uint32_t lut_size,
>  				 enum drm_colorop_lut3d_interpolation_type interpolation,
>  				 uint32_t flags);
> +int drm_plane_colorop_csc_ff_init(struct drm_device *dev, struct drm_colorop *colorop,
> +				  struct drm_plane *plane, const struct drm_colorop_funcs *funcs,
> +				  u64 supported_csc_ff, uint32_t flags);
>  
>  struct drm_colorop_state *
>  drm_atomic_helper_colorop_duplicate_state(struct drm_colorop *colorop);
> @@ -480,6 +551,7 @@ drm_get_colorop_lut1d_interpolation_name(enum drm_colorop_lut1d_interpolation_ty
>  
>  const char *
>  drm_get_colorop_lut3d_interpolation_name(enum drm_colorop_lut3d_interpolation_type type);
> +const char *drm_get_colorop_csc_ff_type_name(enum drm_colorop_csc_ff_type type);
>  
>  void drm_colorop_set_next_property(struct drm_colorop *colorop, struct drm_colorop *next);
>  
> diff --git a/include/uapi/drm/drm_mode.h b/include/uapi/drm/drm_mode.h
> index 3693d82b5279..f7808e7ea984 100644
> --- a/include/uapi/drm/drm_mode.h
> +++ b/include/uapi/drm/drm_mode.h
> @@ -968,6 +968,19 @@ enum drm_colorop_type {
>  	 *         color = lut3d[index]
>  	 */
>  	DRM_COLOROP_3D_LUT,
> +
> +	/**
> +	 * @DRM_COLOROP_CSC_FF:
> +	 *
> +	 * enum string "CSC Fixed-Function"
> +	 *
> +	 * A fixed-function Color Space Conversion block where the coefficients
> +	 * are not programmable but selected from predefined hardware modes via
> +	 * the CSC_FF_TYPE enum property. The driver advertises the supported
> +	 * CSC modes through this property.
> +	 */
> +	DRM_COLOROP_CSC_FF,
> +
>  };
>  
>  /**

