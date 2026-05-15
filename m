Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2OqdCOhdB2pa0QIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2026 19:54:48 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7632C555AFB
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2026 19:54:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3E9510E1EA;
	Fri, 15 May 2026 17:54:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AD4dhwjK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9050F10E1EA;
 Fri, 15 May 2026 17:54:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778867685; x=1810403685;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=3aj/8MvJ7E3jZyDx6eEMnasDvQxQA4dQcbQCdEsWY+E=;
 b=AD4dhwjK0YfB40DO2/9tRDeaBnZRFaP5obX4d+1YWJJcr7+229N9PjYE
 +7OPjEnYglT2Ze7kaZBt9UZbL2+3Nl1lj2D8ATOgSZ62YJDhY8U1yB6Xg
 KTyC3554CbTF43x3vEie0BskvF77gytZvyEQkqm+t3WSZz+FwV35XrTbt
 /i2aSV8ZSLp3EuXUkDxKFpVAQGZHJ/gCCIRd/RQUKGC1xKiquXJtWOqOh
 AmbhQ4cZKSzXTgANeTaYiKodOPES+FR1genljUIKz83l5jWDoZMVlGTsK
 9EFtBgxIrrOYNZ1fyyp4UGeBQS+18j2bZfAOJkHnmPzw5KDTC41/IW2K9 A==;
X-CSE-ConnectionGUID: DFbrnLMpQnGuSo1ZtadQKw==
X-CSE-MsgGUID: rWdUUbeJT52k0lpxOBe8mw==
X-IronPort-AV: E=McAfee;i="6800,10657,11787"; a="67357192"
X-IronPort-AV: E=Sophos;i="6.23,236,1770624000"; d="scan'208";a="67357192"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2026 10:54:43 -0700
X-CSE-ConnectionGUID: VskpBm3sSB2JNofMHDa2yw==
X-CSE-MsgGUID: IaWhr6C4QMC8xpn2dLKarw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,236,1770624000"; d="scan'208";a="262278081"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2026 10:54:41 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 15 May 2026 10:54:41 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 15 May 2026 10:54:41 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.59)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 15 May 2026 10:54:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LvlLFyGSCkkxcptK5CQpGIta4uRrwIPmLsqqSPzr17x2VzzukyygJ5wYta7d4dJrQGknW+J0J5jwfjmLM02Lc5vprxn2zsQmb7SfC4Gl54duCE8l4N3s2PmRNVQ3FfWNnauODOXvZL92plVu5NQKLxpPPYV17s1W6F2mzMd+mpwXLTeoIczkadqb9ubAv9p3g/ihs+r1/X1IUQ/zA4nWK7lyxJxrmrtUzbrPu9isZBCMHyx1Qs7PvsJyU6ktESs0IGeyQ7khHP8frdWSDdcFHSgoVyKHutEXA1PanbgDBIGQk31ltNEWy3R0Svs7GivwwFq5/TahqFesBj2/+1k7Yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7iK/TBdFlFaT6wEjf6BZIXQgrKpBusghCzuANeMNVtk=;
 b=T7fgwxuUNnA4NgF0LZZpJNpuGC4u40X9UtF0Exg8hu0vuEFduo5NqxCiv6uUqSQQmb3HfS+7P4VG0EQe1yypiWgkgJocTkBzIBsJ3KOEcmwXH0wm16meRupfDApSaK7VTvB6XsrGlhn38BlJyODSX+r/v3tOWGD/knpcTaCDL1r5Nf5gGfFMpBAZdKhiYN5ca4MVoWnaJ1e+ayxZ0igc2XNhTwZApbHrG6u3UhMi7MTo4e0Jj6VZrJ1sV8lpDBvHBmCZG3x+VLEU4Ml2wtiwmsUnOaKIYlsKwThhxw9SmhwWK1xSW3MRl7TDlSbB1w5BnGRo9Dpfo5iAeyn2768UOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH0PR11MB9524.namprd11.prod.outlook.com (2603:10b6:510:3b1::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.14; Fri, 15 May
 2026 17:54:32 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a%5]) with mapi id 15.20.9913.009; Fri, 15 May 2026
 17:54:32 +0000
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
CC: Matt Roper <matthew.d.roper@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
Subject: Re: [PATCH v3 2/5] drm/i915/bw: Extract platform-specific parameters
In-Reply-To: <3427613dfaf60b4fd322d58221dd78043e30caff@intel.com>
References: <20260514-separate-platform-from-diplay-ip-specific-bw-params-v3-0-68727d6fe3ec@intel.com>
 <20260514-separate-platform-from-diplay-ip-specific-bw-params-v3-2-68727d6fe3ec@intel.com>
 <87cxywptnb.fsf@intel.com>
 <3427613dfaf60b4fd322d58221dd78043e30caff@intel.com>
Date: Fri, 15 May 2026 14:54:28 -0300
Message-ID: <877bp436ej.fsf@intel.com>
Content-Type: text/plain
X-ClientProxiedBy: BY1P220CA0015.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:5c3::10) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH0PR11MB9524:EE_
X-MS-Office365-Filtering-Correlation-Id: 56f074cd-6f42-4c1c-3f08-08deb2ab0477
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|18002099003|56012099003|22082099003|3023799003|11063799003|4143699003;
X-Microsoft-Antispam-Message-Info: bZny95znVCwOguyfee4/9unaBllnQMcU5EM4q313bfm+AoPrSr5Be9r8xv0ccrQfVWaU+CkdR9wb8b6/spjChx+H+LGLXGGvgG54FQXfYyUl4MyI0b96oFVsE4PsxzEhJednfRcfkEgUrU2pi1LyD0yRUNCNxf49uEZc8HQdKn8lYzx5SU8TTmceYZD8aYOud2PZkzV6Bcp56KqU1Bq6f4u3oNb0Dll8Iu7ZR7i3inhaqbQ4UeGK/Cv6JNCCQHpdu6nXguYm0fC3az5vEOV4lGg+Y7W4Im9GzyOkk/nsFATX0VXChrK6pzP2ZnVUWIXWxXcuNDuPniZh+Ti8s/CbGsa3+1ytJe21H4/9CFOeOiAsEZlJ7iD/JSgB1Qqz2Jk1MwucZ+dlBnN38lBVTeIAuo+Ez7AmbeCn72Rjh7JYttdhgFyvutiorQIierO+sNcfxZ1dryAtIYS+9MICiCv4jFa1pAn59PutAkZ5ppg4lQltqatV60cmoXgZpg65haLM1yi+XObLt5QMH2A0uwfIJel0ZjbDMsFOF0UWhov5doENssujvQisqwl1BlD470GqXClIQkSRt58U2OWuWPnBv61OWFf8+rEt5/fXj7773ylrQ03IUx6XJMwau1+ibQ4+PBt844ul73YRs++jOMufhsDxRGMD5gj0SuV6P5Y0OG1KkAAVXswGp6gpS4GQSU/G
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(56012099003)(22082099003)(3023799003)(11063799003)(4143699003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?lVC5ZRSgbvO5Vj+HY4H0yAD5/yv3iCMR+6KQq1t69Ajd+pTWcmdQQEZ+zIbm?=
 =?us-ascii?Q?q1DOJMCZF56qbT0mvoWO6wFBJ1W/rVhLg1NssCuEPx9bD1e2zEZcC0vKXIkL?=
 =?us-ascii?Q?AU/D9n1jbawJyJxvWP8H5un+B8XTwoK2sQy5HZAFhpq9Ogn+QwR7939/IjH3?=
 =?us-ascii?Q?uJ3ABzZjkNd0Ns9STIzN37VUlcONJImbiVZgqtP+7rMBEmRULAd6YwyRiIZ/?=
 =?us-ascii?Q?wj+KR7LW6v01Uh4xP/Tr+xa78uHrvbUOupmGBiMqHzPEmFITrSPPaXimxd6t?=
 =?us-ascii?Q?MVn3QVpMG5kVEqCkbPEQDD0aMjjKZCfchIBtjpIxmA1/6ecROc4gMIlhYN90?=
 =?us-ascii?Q?SashAyWOGdXvumMALape+B4c28WhtOe8F11XsRkHQCvUABjbmDpGLHg1ATJq?=
 =?us-ascii?Q?ojjY7k2mF6K9NR06zNnlapKzrOKLYEWAsSOnbT8Z/SJD6S/hEqvhD/M0wnp/?=
 =?us-ascii?Q?9rbPQZ7HPZ+nTJ4jXJ6e262HVWQODoq4hY5Owl/jzk2hMSnMCGzgRjVJ3KGU?=
 =?us-ascii?Q?UjeaewWCpYwYMHW7h0sZIg87rBFNWiY82ufhBGrYd7eiqZSZPo+QbPKyXsml?=
 =?us-ascii?Q?H/K4GVqFtX9KrUbj3rsU9x7lyPU4RkansER65dWBlumadVwh8ANuSXQxVeft?=
 =?us-ascii?Q?O93FvXAz1OwUzBXOBWKAHf9PAEPyiqSYGvEHQIn13GTUFWUteLptCf4kQ9wn?=
 =?us-ascii?Q?tF6XSa7haeV015FNQ3JAEOAhwyTcux3aX3/SlX0BGQkR0ByDanzVwcwiaVXF?=
 =?us-ascii?Q?8eb82ild3AxeOf9/ou4wKL/2+oP690ePZitf1KgOILEJ4OF2z1pisVLWjYPu?=
 =?us-ascii?Q?EDG0uZzWUcK/Fh+LecSzi4aFbiUtvLFYlc6kcBiJis8h8fLzlCOUDTc0X56B?=
 =?us-ascii?Q?21dxGjKvFEkb5YHtW5Ys9LoI7CDIzGNi7UJ1OSAJm0PoCBX2rgpnkLnp2sgV?=
 =?us-ascii?Q?Rv0PBrVsJil28a6xYUU44ylr+irnegukvQGdbwVfebnFVmGcYU98sW1y4imM?=
 =?us-ascii?Q?7HP578Oq1EqBVncwwyIBN05XHJjbHbZ2YjNsuj5YOdMKDY7Q7af917oVTan/?=
 =?us-ascii?Q?4Nm4Obglllg+KGczRKFjZMb05hiLUO7RAV2WxT+6vrOQTLOzHn1kJGVrCz9d?=
 =?us-ascii?Q?QOeeiPHGEA7cme7xUeTBKXAGSGP3vYP5Llmw9T7kyz3ZI+8Dq7bEYWW4kMoK?=
 =?us-ascii?Q?xCVswH0X7T+qpLQ08+XijV/ZK55MdsQjYjZPOhu/M8t9nCBIoYhTG8weiJcN?=
 =?us-ascii?Q?iwzBqz7Tc3ZwH6CX67r/LfR2C55rJu8+4sjHO4jvtnH9pcLgJ1ADktaVEdDC?=
 =?us-ascii?Q?el/U/HkMztIGB16rGrBKBmWJI30YzlQdp3U3DphXuhJZTw2BUGH6XacA9K44?=
 =?us-ascii?Q?GnAXXZZNxpBZfifuGI0lMAdQYV3K7gGHWTK+nKzLgz770VyS4+Zyojh1raaT?=
 =?us-ascii?Q?3wdcopDC4PG6Z9FvAnszP4F+od3ZoA3WP8JocJCJsC1QYWNL3fBG/FL4scGs?=
 =?us-ascii?Q?FI6Cw9oUb0dl00bQQ3PamZABKOJsravCap/6P27sn1gRuVN8blx3cJV1V1MY?=
 =?us-ascii?Q?ZHe1VzDrecxOlhhQLPKHfWWAq+Af8X8UtouWTLw2RYp+wEmm6TLq5wphWMy3?=
 =?us-ascii?Q?p7qn+ncVFn5k8x5RN26cL8MO6xyel3CZSL8PHHlXKqJvCJjEFygzHqjQxzT0?=
 =?us-ascii?Q?rDGf6GtHfxD9RrAPD72MyVW/n4Jdm7lQZHLPK43lVHh5t9KhFMwNdHYmWQr6?=
 =?us-ascii?Q?xxDkruQ3CA=3D=3D?=
X-Exchange-RoutingPolicyChecked: EQSYgwpm6QjI4lmxLPrT8y2y1lwpkIODtx+15HIV45xTbytybJ5QLz9aL7eLUou5SiS+ls3dRP5SVbSxE0XtyLW35pMVTTiVu9jjMybVHUVAc+EXOYRS5K1g+jxLNiyIFBgBmYMYxJ39caZEnloC/ZeUJTLdinWHkLV74hLY+IBFZQH0lX+KXLMWqIBiznpTy0d3Jlnm/8EOLXGFNdRkiPiDaz2C5Li0q8fvDp/TK0s0rFazmhelIFEIMmtBuamamNqLSFh70Oph4Gz8EUqt8QMghHUgxKqUbyZmOWrw/BuaMmbenYFGzkEO/TaM9oW2zOKRzuVLC6i2b2KCWojODw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 56f074cd-6f42-4c1c-3f08-08deb2ab0477
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2026 17:54:32.0105 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UYt1irvZsAncvCCtMVBzccqB/QBnP7kLpzBPo7+lEMNn2KQiBVAG+OCohG2qps1FzSMSt7CdPwDlDUfVXfk6Gw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB9524
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
X-Rspamd-Queue-Id: 7632C555AFB
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid,intel.com:dkim];
	FROM_NEQ_ENVFROM(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

Jani Nikula <jani.nikula@intel.com> writes:

> On Fri, 15 May 2026, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> Gustavo Sousa <gustavo.sousa@intel.com> writes:
>>
>>> We got confirmation from the hardware team that the bandwidth parameters
>>> deprogbwlimit and derating are platform-specific and not tied to the
>>> display IP.  As such, let's make sure that we use platform checks for
>>> those.
>>>
>>> The rest of the members of struct intel_sa_info are tied to the display
>>> IP and we will deal with them as a follow-up.
>>>
>>> v2:
>>>   - Use good old if-ladder instead of weird-looking pattern "assign ret,
>>>     check platform, then return ret". (Jani, Matt)
>>>   - Have a single call site for get_platform_bw_params() and pass the
>>>     result as parameter to the *_get_bw_info() functions. (Jani)
>>>   - Avoid using "plat" as abbreviation for "platform". (Jani)
>>>   - s/_plat_bw_params/_bw_params/, since all of the instances are
>>>     prefixed with platform names. (Jani)
>>>   - s/struct intel_platform_bw_params/struct intel_soc_bw_params/.
>>>     (Matt)
>>>   - Do not return a default value; prefer to return NULL and
>>>     intentionally cause a NULL pointer dereference if a platform is
>>>     missing. (Gustavo)
>>>
>>> v3:
>>>   - Call get_soc_bw_params() only after the check on
>>>     HAS_DISPLAY(display). (Jani)
>>>   - Combine if-ladder branches for adl_s_bw_params into a single one.
>>>     (Matt)
>>>   - Flatten if-ladder by checking for WCL before PTL (as opposed to
>>>     checking for WCL inside the brace for PTL). (Matt)
>>>   - Bail out of intel_bw_init_hw() if display version is below 11.
>>>     (Gustavo)
>>>
>>> Cc: Jani Nikula <jani.nikula@intel.com>
>>> Cc: Matt Roper <matthew.d.roper@intel.com>
>>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>>> ---
>>>  drivers/gpu/drm/i915/display/intel_bw.c | 162 ++++++++++++++++++++++----------
>>>  1 file changed, 114 insertions(+), 48 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
>>> index 7eef693b51ad..351ecf741b54 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_bw.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
>>> @@ -372,81 +372,144 @@ static int icl_sagv_max_dclk(const struct intel_qgv_info *qi)
>>>  	return dclk;
>>>  }
>>>  
>>> +struct intel_soc_bw_params {
>>> +	u8 deprogbwlimit;
>>> +	u8 derating;
>>> +};
>>> +
>>> +static const struct intel_soc_bw_params icl_bw_params = {
>>> +	.deprogbwlimit = 25,
>>> +	.derating = 10,
>>> +};
>>> +
>>> +static const struct intel_soc_bw_params tgl_bw_params = {
>>> +	.deprogbwlimit = 34,
>>> +	.derating = 10,
>>> +};
>>> +
>>> +static const struct intel_soc_bw_params rkl_bw_params = {
>>> +	.deprogbwlimit = 20,
>>> +	.derating = 10,
>>> +};
>>> +
>>> +static const struct intel_soc_bw_params adl_s_bw_params = {
>>> +	.deprogbwlimit = 38,
>>> +	.derating = 10,
>>> +};
>>> +
>>> +static const struct intel_soc_bw_params adl_p_bw_params = {
>>> +	.deprogbwlimit = 38,
>>> +	.derating = 20,
>>> +};
>>> +
>>> +static const struct intel_soc_bw_params bmg_bw_params = {
>>> +	.deprogbwlimit = 53,
>>> +	.derating = 30,
>>> +};
>>> +
>>> +static const struct intel_soc_bw_params bmg_ecc_bw_params = {
>>> +	.deprogbwlimit = 53,
>>> +	.derating = 45,
>>> +};
>>> +
>>> +static const struct intel_soc_bw_params ptl_bw_params = {
>>> +	.deprogbwlimit = 65,
>>> +	.derating = 10,
>>> +};
>>> +
>>> +static const struct intel_soc_bw_params wcl_bw_params = {
>>> +	.deprogbwlimit = 22,
>>> +	.derating = 10,
>>> +};
>>> +
>>> +static const struct intel_soc_bw_params *get_soc_bw_params(struct intel_display *display)
>>> +{
>>> +	if (display->platform.dgfx) {
>>> +		if (display->platform.dg1) {
>>> +			return &tgl_bw_params;
>>> +		} else if (display->platform.battlemage) {
>>> +			const struct dram_info *dram_info = intel_dram_info(display);
>>> +
>>> +			if (dram_info->type == INTEL_DRAM_GDDR_ECC)
>>> +				return &bmg_ecc_bw_params;
>>> +			else
>>> +				return &bmg_bw_params;
>>> +		}
>>> +	} else {
>>> +		if (display->platform.icelake ||
>>> +		    display->platform.jasperlake ||
>>> +		    display->platform.elkhartlake)
>>> +			return &icl_bw_params;
>>> +		else if (display->platform.tigerlake)
>>> +			return &tgl_bw_params;
>>> +		else if (display->platform.rocketlake)
>>> +			return &rkl_bw_params;
>>> +		else if (display->platform.alderlake_s ||
>>> +			 display->platform.meteorlake ||
>>> +			 display->platform.lunarlake)
>>> +			return &adl_s_bw_params;
>>> +		else if (display->platform.alderlake_p)
>>> +			return &adl_p_bw_params;
>>> +		else if (display->platform.pantherlake_wildcatlake)
>>> +			return &wcl_bw_params;
>>> +		else if (display->platform.pantherlake ||
>>> +			 display->platform.novalake)
>>> +			return &ptl_bw_params;
>>> +	}
>>> +
>>> +	drm_WARN(display->drm, 1, "Platform-specific bandwidth parameters not found!\n");
>>
>> CI shows the warning because DG2 does not use bandwidth
>> parameters and get_soc_bw_params() rightfully does not cover DG2.
>>
>> We could just get rid of the warnings in get_soc_bw_params() and
>> get_display_bw_params() all together.  The idea of the warning was to
>> serve as an aid to the developer, but I guess tracing the null pointer
>> dereference back to those functions shouldn't be too hard?
>>
>> Another idea is to make sure that only the functions that use those
>> parameters make the call to get_{soc,display}_bw_params().
>>
>> Jani, I know you preferred the other way around, but maybe this is a
>> compelling reason for moving the call to the direct users?
>
> I still prefer figuring the pointer out early, and passing it around to
> the places that need it. Actually, ditto for dram_info above. I

Ack.

> refactored this stuff once to call intel_dram_info() once, and pass the
> pointer around.
>
> I think the alternatives are:
>
> - Remove the drm_WARN() altogether.

Okay.  I think I'll just take the easy way out by dropping them in the
next iteration.

--
Gustavo Sousa

>
> - Return NULL directly for platforms where the parameters don't make
>   sense, e.g. DG2.
>
> BR,
> Jani.
>
>>
>> --
>> Gustavo Sousa
>>
>>> +
>>> +	return NULL;
>>> +}
>>> +
>>>  struct intel_sa_info {
>>>  	u16 displayrtids;
>>> -	u8 deburst, deprogbwlimit, derating;
>>> +	u8 deburst;
>>>  };
>>>  
>>>  static const struct intel_sa_info icl_sa_info = {
>>>  	.deburst = 8,
>>> -	.deprogbwlimit = 25, /* GB/s */
>>>  	.displayrtids = 128,
>>> -	.derating = 10,
>>>  };
>>>  
>>>  static const struct intel_sa_info tgl_sa_info = {
>>>  	.deburst = 16,
>>> -	.deprogbwlimit = 34, /* GB/s */
>>>  	.displayrtids = 256,
>>> -	.derating = 10,
>>>  };
>>>  
>>>  static const struct intel_sa_info rkl_sa_info = {
>>>  	.deburst = 8,
>>> -	.deprogbwlimit = 20, /* GB/s */
>>>  	.displayrtids = 128,
>>> -	.derating = 10,
>>>  };
>>>  
>>>  static const struct intel_sa_info adls_sa_info = {
>>>  	.deburst = 16,
>>> -	.deprogbwlimit = 38, /* GB/s */
>>>  	.displayrtids = 256,
>>> -	.derating = 10,
>>>  };
>>>  
>>>  static const struct intel_sa_info adlp_sa_info = {
>>>  	.deburst = 16,
>>> -	.deprogbwlimit = 38, /* GB/s */
>>>  	.displayrtids = 256,
>>> -	.derating = 20,
>>>  };
>>>  
>>>  static const struct intel_sa_info mtl_sa_info = {
>>>  	.deburst = 32,
>>> -	.deprogbwlimit = 38, /* GB/s */
>>>  	.displayrtids = 256,
>>> -	.derating = 10,
>>> -};
>>> -
>>> -static const struct intel_sa_info xe2_hpd_sa_info = {
>>> -	.derating = 30,
>>> -	.deprogbwlimit = 53,
>>> -	/* Other values not used by simplified algorithm */
>>> -};
>>> -
>>> -static const struct intel_sa_info xe2_hpd_ecc_sa_info = {
>>> -	.derating = 45,
>>> -	.deprogbwlimit = 53,
>>> -	/* Other values not used by simplified algorithm */
>>>  };
>>>  
>>>  static const struct intel_sa_info xe3lpd_sa_info = {
>>>  	.deburst = 32,
>>> -	.deprogbwlimit = 65, /* GB/s */
>>>  	.displayrtids = 256,
>>> -	.derating = 10,
>>>  };
>>>  
>>>  static const struct intel_sa_info xe3lpd_3002_sa_info = {
>>>  	.deburst = 32,
>>> -	.deprogbwlimit = 22, /* GB/s */
>>>  	.displayrtids = 256,
>>> -	.derating = 10,
>>>  };
>>>  
>>>  static int icl_get_bw_info(struct intel_display *display,
>>>  			   const struct dram_info *dram_info,
>>> +			   const struct intel_soc_bw_params *soc_bw_params,
>>>  			   const struct intel_sa_info *sa)
>>>  {
>>>  	struct intel_qgv_info qi = {};
>>> @@ -466,7 +529,7 @@ static int icl_get_bw_info(struct intel_display *display,
>>>  	}
>>>  
>>>  	dclk_max = icl_sagv_max_dclk(&qi);
>>> -	maxdebw = min(sa->deprogbwlimit * 1000, dclk_max * 16 * 6 / 10);
>>> +	maxdebw = min(soc_bw_params->deprogbwlimit * 1000, dclk_max * 16 * 6 / 10);
>>>  	ipqdepth = min(ipqdepthpch, sa->displayrtids / num_channels);
>>>  	qi.deinterleave = DIV_ROUND_UP(num_channels, is_y_tile ? 4 : 2);
>>>  
>>> @@ -496,7 +559,7 @@ static int icl_get_bw_info(struct intel_display *display,
>>>  			bw = DIV_ROUND_UP(sp->dclk * clpchgroup * 32 * num_channels, ct);
>>>  
>>>  			bi->deratedbw[j] = min(maxdebw,
>>> -					       bw * (100 - sa->derating) / 100);
>>> +					       bw * (100 - soc_bw_params->derating) / 100);
>>>  
>>>  			drm_dbg_kms(display->drm,
>>>  				    "BW%d / QGV %d: num_planes=%d deratedbw=%u\n",
>>> @@ -518,6 +581,7 @@ static int icl_get_bw_info(struct intel_display *display,
>>>  
>>>  static int tgl_get_bw_info(struct intel_display *display,
>>>  			   const struct dram_info *dram_info,
>>> +			   const struct intel_soc_bw_params *soc_bw_params,
>>>  			   const struct intel_sa_info *sa)
>>>  {
>>>  	struct intel_qgv_info qi = {};
>>> @@ -554,7 +618,7 @@ static int tgl_get_bw_info(struct intel_display *display,
>>>  	dclk_max = icl_sagv_max_dclk(&qi);
>>>  
>>>  	peakbw = num_channels * DIV_ROUND_UP(qi.channel_width, 8) * dclk_max;
>>> -	maxdebw = min(sa->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 100);
>>> +	maxdebw = min(soc_bw_params->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 100);
>>>  
>>>  	ipqdepth = min(ipqdepthpch, sa->displayrtids / num_channels);
>>>  	/*
>>> @@ -599,7 +663,7 @@ static int tgl_get_bw_info(struct intel_display *display,
>>>  			bw = DIV_ROUND_UP(sp->dclk * clpchgroup * 32 * num_channels, ct);
>>>  
>>>  			bi->deratedbw[j] = min(maxdebw,
>>> -					       bw * (100 - sa->derating) / 100);
>>> +					       bw * (100 - soc_bw_params->derating) / 100);
>>>  			bi->peakbw[j] = DIV_ROUND_CLOSEST(sp->dclk *
>>>  							  num_channels *
>>>  							  qi.channel_width, 8);
>>> @@ -661,7 +725,7 @@ static void dg2_get_bw_info(struct intel_display *display)
>>>  
>>>  static int xe2_hpd_get_bw_info(struct intel_display *display,
>>>  			       const struct dram_info *dram_info,
>>> -			       const struct intel_sa_info *sa)
>>> +			       const struct intel_soc_bw_params *soc_bw_params)
>>>  {
>>>  	struct intel_qgv_info qi = {};
>>>  	int num_channels = dram_info->num_channels;
>>> @@ -676,14 +740,14 @@ static int xe2_hpd_get_bw_info(struct intel_display *display,
>>>  	}
>>>  
>>>  	peakbw = num_channels * qi.channel_width / 8 * icl_sagv_max_dclk(&qi);
>>> -	maxdebw = min(sa->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 10);
>>> +	maxdebw = min(soc_bw_params->deprogbwlimit * 1000, peakbw * DEPROGBWPCLIMIT / 10);
>>>  
>>>  	for (i = 0; i < qi.num_points; i++) {
>>>  		const struct intel_qgv_point *point = &qi.points[i];
>>>  		int bw = num_channels * (qi.channel_width / 8) * point->dclk;
>>>  
>>>  		display->bw.max[0].deratedbw[i] =
>>> -			min(maxdebw, (100 - sa->derating) * bw / 100);
>>> +			min(maxdebw, (100 - soc_bw_params->derating) * bw / 100);
>>>  		display->bw.max[0].peakbw[i] = bw;
>>>  
>>>  		drm_dbg_kms(display->drm, "QGV %d: deratedbw=%u peakbw: %u\n",
>>> @@ -792,11 +856,16 @@ static unsigned int icl_qgv_bw(struct intel_display *display,
>>>  void intel_bw_init_hw(struct intel_display *display)
>>>  {
>>>  	const struct dram_info *dram_info;
>>> +	const struct intel_soc_bw_params *soc_bw_params;
>>>  
>>>  	if (!HAS_DISPLAY(display))
>>>  		return;
>>>  
>>> +	if (DISPLAY_VER(display) < 11)
>>> +		return;
>>> +
>>>  	dram_info = intel_dram_info(display);
>>> +	soc_bw_params = get_soc_bw_params(display);
>>>  
>>>  	/*
>>>  	 * Starting with Xe3p_LPD, the hardware tells us whether memory has ECC
>>> @@ -809,28 +878,25 @@ void intel_bw_init_hw(struct intel_display *display)
>>>  
>>>  	if (DISPLAY_VER(display) >= 30) {
>>>  		if (DISPLAY_VERx100(display) == 3002)
>>> -			tgl_get_bw_info(display, dram_info, &xe3lpd_3002_sa_info);
>>> +			tgl_get_bw_info(display, dram_info, soc_bw_params, &xe3lpd_3002_sa_info);
>>>  		else
>>> -			tgl_get_bw_info(display, dram_info, &xe3lpd_sa_info);
>>> +			tgl_get_bw_info(display, dram_info, soc_bw_params, &xe3lpd_sa_info);
>>>  	} else if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx) {
>>> -		if (dram_info->type == INTEL_DRAM_GDDR_ECC)
>>> -			xe2_hpd_get_bw_info(display, dram_info, &xe2_hpd_ecc_sa_info);
>>> -		else
>>> -			xe2_hpd_get_bw_info(display, dram_info, &xe2_hpd_sa_info);
>>> +		xe2_hpd_get_bw_info(display, dram_info, soc_bw_params);
>>>  	} else if (DISPLAY_VER(display) >= 14) {
>>> -		tgl_get_bw_info(display, dram_info, &mtl_sa_info);
>>> +		tgl_get_bw_info(display, dram_info, soc_bw_params, &mtl_sa_info);
>>>  	} else if (display->platform.dg2) {
>>>  		dg2_get_bw_info(display);
>>>  	} else if (display->platform.alderlake_p) {
>>> -		tgl_get_bw_info(display, dram_info, &adlp_sa_info);
>>> +		tgl_get_bw_info(display, dram_info, soc_bw_params, &adlp_sa_info);
>>>  	} else if (display->platform.alderlake_s) {
>>> -		tgl_get_bw_info(display, dram_info, &adls_sa_info);
>>> +		tgl_get_bw_info(display, dram_info, soc_bw_params, &adls_sa_info);
>>>  	} else if (display->platform.rocketlake) {
>>> -		tgl_get_bw_info(display, dram_info, &rkl_sa_info);
>>> +		tgl_get_bw_info(display, dram_info, soc_bw_params, &rkl_sa_info);
>>>  	} else if (DISPLAY_VER(display) == 12) {
>>> -		tgl_get_bw_info(display, dram_info, &tgl_sa_info);
>>> +		tgl_get_bw_info(display, dram_info, soc_bw_params, &tgl_sa_info);
>>>  	} else if (DISPLAY_VER(display) == 11) {
>>> -		icl_get_bw_info(display, dram_info, &icl_sa_info);
>>> +		icl_get_bw_info(display, dram_info, soc_bw_params, &icl_sa_info);
>>>  	}
>>>  }
>>>  
>>>
>>> -- 
>>> 2.53.0
>
> -- 
> Jani Nikula, Intel
