Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA400A34F11
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2025 21:10:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23D7910EB88;
	Thu, 13 Feb 2025 20:10:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DqHbzLxs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5A9010E451;
 Thu, 13 Feb 2025 20:10:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739477408; x=1771013408;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=C6msF2qX3X3S+m4umHYFyA04+QglCj2OzUOsVtL0d3Q=;
 b=DqHbzLxsx6y4BmBjkGjH5Cn5cSddkuGglPHb66UOeuANIjfi4YvdOSfx
 3SroonBABRah9kF2boPqb+VcdOvnK6Hzz2YXdIuY3uCtmF/3z2MEn1o0C
 e/W5ji6i7MrPRnoxwgDbaE9Fr4XgQ6bnvXLWQcOxRq1C7NUKwdBc9pveq
 AIWYxdC0cn9/OFwZCqMs4sAo8EmyXR0A037FLrV7bAffNmV/ko6Xq1bgS
 5bJaecZ3+kXjeg6jq1ZqniBOdff9GNCfv0oDNa7ITH5/PIdUC0WXBwX+h
 8c0wqFzyfu58ODEMyR+NotIDU6WySEOuMgRzThREyGH9S5nByJuCZElSF g==;
X-CSE-ConnectionGUID: F/Bok0PcQxu6Ck+BTiO0Dg==
X-CSE-MsgGUID: FZPW3cUgTFGDUAPNNS+T7Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11344"; a="43858779"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="43858779"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 12:10:07 -0800
X-CSE-ConnectionGUID: GsTYP40mS3yCU4oN/VvnfA==
X-CSE-MsgGUID: JbWosfe9TKiYZgeKG1Kmsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="113127252"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Feb 2025 12:10:07 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 13 Feb 2025 12:10:06 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 13 Feb 2025 12:10:06 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 13 Feb 2025 12:10:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=v9E9K2U85ybmPMafWEiYYZrGoUHlC7zGpNBpj8bsmgJRvsxRciWtNA+/pD5JijDb4uw1v6pExxwhH7ys4lBrjbBD7jQTcJQ9zYclFlXS/5lG2MAzT8eJnZz+cORPn3MageF6WILMVnT4qQFE6VRRTDHnojT57PWG7WqvtIbVV2WUOwP+fv+4l8jwk/48yhEzVVbcHqsIUm6eT9IbuqVVfvBCEnsRaFlRjq9iuonD4O2XxpUgZ6n49kWayyO3I0zdW9cDbAz6huapPs9yJ0ySrP9TPzJqmQ1Ds+upY9vmFbaMCLk3N7hpwuHKcFJk86/2sKiFCxaPFz3uAXY8JJy+tQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C6msF2qX3X3S+m4umHYFyA04+QglCj2OzUOsVtL0d3Q=;
 b=Lt5O9DbZrfUl5KrRaJA+Ig4vL8FyaRK0syKUD0MUBf8BoskZI/yiUtwFqM4Yv+iASt61ijHCveyUORd/tNrjq64JRh7HpP0k/HEtmBxGE/WNvSe3H733T9il950qAFClmQ5FEX0ljaXuR0jJcSgB8MpA3omx25FD6yYPabFKrH8v7Hj3fYwPMZQ70FBTeyerxzOZsSbAD+b06tGV5y0Sa7WV4ZkHTwL0l/zQLJ9RCMvvf1vsy7U89nAOqBb+C3PJgJL6SJ0B+3vPDNZ3dQigB4syzMBD4dE6m+HAdAfFscfAjDmLffOTG9DcmcEoJdx1+/dlcy7LYWX27VodMrNGGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by PH0PR11MB4965.namprd11.prod.outlook.com (2603:10b6:510:34::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.11; Thu, 13 Feb
 2025 20:09:48 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%4]) with mapi id 15.20.8445.013; Thu, 13 Feb 2025
 20:09:48 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 5/8] drm/i915: Hook in display GTT faults for ILK/SNB
Thread-Topic: [PATCH 5/8] drm/i915: Hook in display GTT faults for ILK/SNB
Thread-Index: AQHbaD7m5sqzdBNxFk6ZnSi42xVfULNF1fYA
Date: Thu, 13 Feb 2025 20:09:48 +0000
Message-ID: <b48cee082948198e0aaf017da7f3d9afe0d6e433.camel@intel.com>
References: <20250116174758.18298-1-ville.syrjala@linux.intel.com>
 <20250116174758.18298-6-ville.syrjala@linux.intel.com>
In-Reply-To: <20250116174758.18298-6-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|PH0PR11MB4965:EE_
x-ms-office365-filtering-correlation-id: c66b9195-a470-401c-6525-08dd4c6a5e1a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?YlVPNW5RNWtwcXJXUFFtdGF0OGtiU0grN2VFbmp6TWEvYkNMVysrTDVqSW1C?=
 =?utf-8?B?OTNLOGI5d2FtMnBiTDdhM0ZEY1l5NFUxbnNVa2lSanJJQlpKRWQ0SmhjZE5H?=
 =?utf-8?B?eHpPZUovYlNZbkpkbEo5cTlxR0JFd3Y3d3dGQlY1NDhVS2FRT3RKWTZWRDEy?=
 =?utf-8?B?NEozZjNBdUNWNzYxc0szSGVyeFN2cDY0NWFmcHNQNnpyeW5ydXNENHB6U3pm?=
 =?utf-8?B?bEhwS1hsSGV6d0tPNHZGdTJSVkFTZ3A4bUdlV1FsRDc3b1AyMS94WjJ5YkZ6?=
 =?utf-8?B?aVZtZjVKYlpuMUZ2LzNyVUM5Y01sVzVtVmVXd2tZK2Qwa0tOc0N2MVplQW5k?=
 =?utf-8?B?bnF5S3FvTFJXTSszWjlVWDBFM05xalZDNU5lRkFnd2N3Q3dPeFIyaFB1ZW9R?=
 =?utf-8?B?c0RzdHdyeEFUbnZ4RFE2ZldMQ0xlU0RZMFJTcGZJbURsbWsyNTJuek5RbWNi?=
 =?utf-8?B?OGpQbVA1Z25neEo0Y2x1TjdHY2pjdkM4UUxMN0tEamw0WldmN2l1WGhzcDBF?=
 =?utf-8?B?Qk5BZFRlRjkxb0RFcHlRYnR3eTZ1SVZUOElOQVgvbVYwUUQyYXFTQzZmWDho?=
 =?utf-8?B?NGtGRXF0L2R6b3U0Ky9HUEdwQ3RsZzBqMDNxYzUrVHFVN2dxUnVXenJQWFdD?=
 =?utf-8?B?SU5BT3ZRWHBLMVBEMlFyRURyemIvTHpUREc2STEzSFNtNnhQQWpNYzVZQndW?=
 =?utf-8?B?R1c0M2tqNnBJdlZKNnp6NW5zWi9iUTFXVDVSNzR5N25BNXFPYnNMZis1NzRC?=
 =?utf-8?B?N3FZc0ZkNWV3UkwwUUVzNGRSVk1aYklPd3BCOVhBbGRxQ1h1a25lbDdweFI3?=
 =?utf-8?B?UGVWRmY5TmI0RU5Cem9vYjVIQ0RmZ21kakhQNjRyNUk3VnBuQ1lkeGNDZENX?=
 =?utf-8?B?enJpR3E5Wit5REpxZHRDdE8rYWppWGVaMUlkWnJTS0NQNXhBVnZlNDRyK0hv?=
 =?utf-8?B?bGluVk5kNlhjS0tQM0FONmd1KzRxQTBqY3JCaWRyQ293RHViRjZlc3l4OVdT?=
 =?utf-8?B?Z0FsUWt5ZDNYNXVYWlRiWmhKWlprQmpQZmVwaU5zUndzRmEyUEczRjlmakZI?=
 =?utf-8?B?RFZ6cUxsdisrWkRndkl6ZUZwbnBwd2wzWGxrL1ZHdGkwUXE3QVRtb2wrRVZP?=
 =?utf-8?B?OERJSFI3bTBoQlFxMjYxQ2F3Uzc5bTI2dE1kQ1dnckl3UTQwbkZ1OFJuVEtH?=
 =?utf-8?B?Y0lZVlpkb2tIb1FWOEhXaWVaRDFmZzlkWTlPUWViWS9INUdZNVA5TDFSaDdO?=
 =?utf-8?B?RzZ1T1VXaVZaM3ExZ0RWYXZtMWdvZDNCYzVzUTVtR0lLYmFQNThpTHRJeVdZ?=
 =?utf-8?B?Z1V2R29zZ3JCQkFwYlYyeXc5RGpRWEh4aGVRNlQxOXFLa1hqR0JuRzdxRW5x?=
 =?utf-8?B?NkhXL3dCWURKNWxSZ256cjV6MzZtZWVVK1dvU1Q5Rmp2QnBtcklGVmtjdlIx?=
 =?utf-8?B?N3MySXVqUUVVSVZMZlZmU251cGNSdmFXZm5abUFyRW1salUvNHFFNGphZWl5?=
 =?utf-8?B?YWQ1VGFLNE9XSFZGMGY0eFNEbnVxK2pEd0JMeHFiWnZ6Qmd5UGpvWUNOY0pl?=
 =?utf-8?B?RXN5TDhnbkxsSmJtYWh4SWlIOHJyMlVVQ1BwSnp0VHlsSXpNZnE4UktXSER6?=
 =?utf-8?B?cUtIdnBabWRVQ0RIcnlTS0o1ZXZwWFpBUnBHc3VmVU1YSTNvYXRQMXdqZlhJ?=
 =?utf-8?B?VWZaWSt5TytVTSszNjh5WWU5TURHVWVDQmwrTkVvYmtuSVE0Nm9Sc2NTbGNX?=
 =?utf-8?B?K0FsVTEreGhneWhxNjZVSTJxV1FQVktIRmZoK0hCLy9RVW56NWRJRUQvWWZJ?=
 =?utf-8?B?M0tQaTRQN1NjQVowTjN5UFRLOE1id2E3b29xTWdneis4bXhMMTdwb3Q0enV4?=
 =?utf-8?B?MDZQOExsMWUyQzZwWklTamlBY0JtckJjelQxaUI5OTVtdnhWbjQ3WWp6d1ls?=
 =?utf-8?Q?L92/ypHhHEchTJg7KYzMk7bOg+SycoVG?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?K2gwU1diNWFVVGRCbU1JaFhwZlJ6NzlUZGdXcDJJeGVXT3JJM2pKQzhnM0ly?=
 =?utf-8?B?Vldrd1hIRUZHa0UwdHZFQjd0S1RQc0xJRVJCNjdCQXovMGwwamtxempCMVNi?=
 =?utf-8?B?Z24waG4wdVRoS0Y1dUQvVndWczA5dWRJU2N2ZHoreEh6WVZvcFNnekNVSHhu?=
 =?utf-8?B?UlRaaGdLNk01c25ZSDA4Z3FTbUthOHFJSW9UaE00c0UxR2V3cmsxeHl0aXRU?=
 =?utf-8?B?MDdMOGdqVk1qK056bkprTU56QTdUdXBlOHVWOWdyNzc5VVRnU2NMaGFjbC9n?=
 =?utf-8?B?OXhYcm1vY2FwT3krQzk5UEhIam5kTEFrZXNNbSt3UFAwTlI1NEdYYXVLKzg2?=
 =?utf-8?B?ejlxNklOMUVxbnYzdURUYjFQN3p6RHRSZjRNblVCMStTa1Zjb3htcEVpT2V2?=
 =?utf-8?B?QSt6MjVIbEF1VWV4bGw3NU8zcnA0WXJvdG1kWUt2YkxZbGlBNU9iZkU4cVhq?=
 =?utf-8?B?bTlQeE1qTkZHbk01MGFPNXBwVzBpUUo5Q09obWJjZ1VrN2xpOFNGdDNIL2Er?=
 =?utf-8?B?aXVoY29lSWo0UzN3djc5eWRvUDlTT0VuZ3VlcGFzZVNJYmtqWklOOFN4V25q?=
 =?utf-8?B?cno1dDNIQjU5QzhiYWRpWWNTeXBZVEM2T3pGUHBzZ09EUDVFdVRvbzhtN3pa?=
 =?utf-8?B?TWlNSE9tRG84M1k4QmF0RkxkTVE1V3UrR0NvMGoxVVBrcWhKZVZiQlBPcnVx?=
 =?utf-8?B?Zmo1U3pVRUVYYVR3RWRCYnR6SDBLUGcxQkhBb05rdkJRdEd3ZTQ2TDNxa21G?=
 =?utf-8?B?Qnhrdjc0ekpwSHVOeGFIQ2l0TEo5eFBhZ1RpNHJWV244TUtlVWFIMXRlWFpa?=
 =?utf-8?B?WWxadXgyYjRBVU5lZ2E4cHlFRUlPcitZU0VLRklRa00zZW9Dd1FWdVhEZ0N2?=
 =?utf-8?B?Q0VrTVNWMTJYZXJhWWJKSmNxR2U0d1BXcGw4bXBheVVzcFc0VjdRcEllZG90?=
 =?utf-8?B?anJGeXo1ck9RTzRRd0hURlc0Q095WHJRSUJHR1Z0TER1bkdOMTVCamZTRU1C?=
 =?utf-8?B?S0FkdWhxa2Zub2JEeHdscjVLTnlYVjFPK1lJeHBzdVdwZXp3TC9lZzJyazRD?=
 =?utf-8?B?UDM3SzYzaFRJMkVWK1ljdjhNRVYzNk1TRE9HbVU5N3BmQkpCaFUrdVV6WTdN?=
 =?utf-8?B?OGtHekJEM0NaWENibmhROFlmdWpGVmdVT0RreXgyby9MaXFtUzhoMTN4Nk1n?=
 =?utf-8?B?NWdJQUtuaWlLdmlkNHcxaFNyVWNTb2s2U21RZHJjTmxCekFQZjhBMlJpTTNi?=
 =?utf-8?B?Mk9uRGc2R09BQ2h1clROWWpnZHMvczhzM0lZNUQzdXlQK1ZnOWVMUFFxL1R0?=
 =?utf-8?B?NnNmeFN5OFpkSjFyWkMzOGZpemFwSzVldDF4aEtNNWJMTHZsUEJQL2dYd29Q?=
 =?utf-8?B?bjczaWU3dStvRTdyZVVDZHI0VG1SZHVBV2w4L1QvK21SdEVaaHo4ci9KbUpT?=
 =?utf-8?B?Zm9jNXh1NEVqUHJhRmFQSHBxbWFYLys2UHVITVpjQjFxRForRFI5SlV2MWlG?=
 =?utf-8?B?akFKR1VoTEkrT2s0eUt1T3RqNXpDVWVyNVphMnNqQ3JYK2ZaMEl4UVFJYUhr?=
 =?utf-8?B?QUR6QmVkWGk0azRlOUJkNi81N04vYXZDeFZ2dnA3NHZuUjJuaHNlQkNCdlVL?=
 =?utf-8?B?UGVJK0ZqUVAyVTBiWm5idC81elRKKzR2VjR5VWJNclgyRzg2SzRRTjFPemxZ?=
 =?utf-8?B?MlZkaGFBbzAyWGI2bUJNS2VTS215OWlwaHcyZUZGMDgwVTE3MlBiUDdZempQ?=
 =?utf-8?B?aDVvdzhSUVk1UTdvK2ZmdENkL2FTYlZlS2kxQ3BIQWRvZmRJRlpXaDhWVXRI?=
 =?utf-8?B?TWt5M250OTZzLzZabGQydUJGT0ZaVFhrVkxrOGJtQzFPakM2eWtxeHRxUmk2?=
 =?utf-8?B?aHJYQzZYQ0gvSUlMWjZueE1QaDJjWWhnSjNiQUx2RmRJUDJ6TFpMdW5jWXgx?=
 =?utf-8?B?UC9QWk8rdi9rRGUrRHRUY1ZDeUUxZXlDd0hCdDZkZFhPTGQ5bnB5eFB1Q0pG?=
 =?utf-8?B?UEFVV3RKa1ZISnpUNGZRaTYxSVBQUStWenhkYkhKZGMySzNzUHhhNFM2eGgz?=
 =?utf-8?B?OTFuOEJmNmhZZnBlaS9HVmo2MlFxTGdtL21xZ3J4NHNWYURweUl1eS9xVG5N?=
 =?utf-8?B?WEFqbnhFcytTeENrcDRCZjNNbzZURUZqZFNSZzZIaFlzcFZGMXFLYUVEMTB0?=
 =?utf-8?Q?8w/Elp5i7vBb2gCY+CfBKoI=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <49F32092AF6ACA40B938B8A62EE735B5@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c66b9195-a470-401c-6525-08dd4c6a5e1a
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2025 20:09:48.5046 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +UHiuzTD3wJ/Sydqrw7uKor49OqtL93oSndaS12NqrEk/TyYiltRAytI7fFq/YZeA4ycRKZPTVqyFZ3IxyxU9yIkKZyaaaoAZaUlluKPAmI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4965
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

T24gVGh1LCAyMDI1LTAxLTE2IGF0IDE5OjQ3ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gSG9vayB1cCBkaXNwbGF5IEdUVCBmYXVsdCBpbnRlcnJ1cHRzIGZvciBJTEsvU05CLg0K
PiANCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4NCj4gLS0tDQo+IMKgLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXlfaXJxLmPCoCB8IDU2ICsrKysrKysrKysrKysrKysrKy0NCj4gwqBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3JlZy5owqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8IDEwICsrKysN
Cj4gwqAyIGZpbGVzIGNoYW5nZWQsIDY1IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCg0K
QnNwZWM6IDg1NTkNCg0KUmV2aWV3ZWQgYnk6IFZpbm9kIEdvdmluZGFwaWxsYWkgPHZpbm9kLmdv
dmluZGFwaWxsYWlAaW50ZWwuY29tPg0KDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2lycS5jDQo+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2lycS5jDQo+IGluZGV4IDcwZTUzMjZiODZkMC4u
YzgwMTgzYjBhY2FmIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXlfaXJxLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5X2lycS5jDQo+IEBAIC03OTIsNiArNzkyLDU2IEBAIHN0YXRpYyB2b2lk
IGNwdF9pcnFfaGFuZGxlcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIHUzMiBw
Y2hfaWlyKQ0KPiDCoAkJY3B0X3NlcnJfaW50X2hhbmRsZXIoZGV2X3ByaXYpOw0KPiDCoH0NCj4g
wqANCj4gK3N0YXRpYyB1MzIgaWxrX2d0dF9mYXVsdF9waXBlX2ZhdWx0X21hc2soZW51bSBwaXBl
IHBpcGUpDQo+ICt7DQo+ICsJc3dpdGNoIChwaXBlKSB7DQo+ICsJY2FzZSBQSVBFX0E6DQo+ICsJ
CXJldHVybiBHVFRfRkFVTFRfU1BSSVRFX0FfRkFVTFQgfA0KPiArCQkJR1RUX0ZBVUxUX1BSSU1B
UllfQV9GQVVMVCB8DQo+ICsJCQlHVFRfRkFVTFRfQ1VSU09SX0FfRkFVTFQ7DQo+ICsJY2FzZSBQ
SVBFX0I6DQo+ICsJCXJldHVybiBHVFRfRkFVTFRfU1BSSVRFX0JfRkFVTFQgfA0KPiArCQkJR1RU
X0ZBVUxUX1BSSU1BUllfQl9GQVVMVCB8DQo+ICsJCQlHVFRfRkFVTFRfQ1VSU09SX0JfRkFVTFQ7
DQo+ICsJZGVmYXVsdDoNCj4gKwkJcmV0dXJuIDA7DQo+ICsJfQ0KPiArfQ0KPiArDQo+ICtzdGF0
aWMgY29uc3Qgc3RydWN0IHBpcGVfZmF1bHRfaGFuZGxlciBpbGtfcGlwZV9mYXVsdF9oYW5kbGVy
c1tdID0gew0KPiArCXsgLmZhdWx0ID0gR1RUX0ZBVUxUX1NQUklURV9BX0ZBVUxULCAuaGFuZGxl
ID0gaGFuZGxlX3BsYW5lX2ZhdWx0LCAucGxhbmVfaWQgPQ0KPiBQTEFORV9TUFJJVEUwLCB9LA0K
PiArCXsgLmZhdWx0ID0gR1RUX0ZBVUxUX1NQUklURV9CX0ZBVUxULCAuaGFuZGxlID0gaGFuZGxl
X3BsYW5lX2ZhdWx0LCAucGxhbmVfaWQgPQ0KPiBQTEFORV9TUFJJVEUwLCB9LA0KPiArCXsgLmZh
dWx0ID0gR1RUX0ZBVUxUX1BSSU1BUllfQV9GQVVMVCwgLmhhbmRsZSA9IGhhbmRsZV9wbGFuZV9m
YXVsdCwgLnBsYW5lX2lkID0NCj4gUExBTkVfUFJJTUFSWSwgfSwNCj4gKwl7IC5mYXVsdCA9IEdU
VF9GQVVMVF9QUklNQVJZX0JfRkFVTFQsIC5oYW5kbGUgPSBoYW5kbGVfcGxhbmVfZmF1bHQsIC5w
bGFuZV9pZCA9DQo+IFBMQU5FX1BSSU1BUlksIH0sDQo+ICsJeyAuZmF1bHQgPSBHVFRfRkFVTFRf
Q1VSU09SX0FfRkFVTFQsIC5oYW5kbGUgPSBoYW5kbGVfcGxhbmVfZmF1bHQsIC5wbGFuZV9pZCA9
DQo+IFBMQU5FX0NVUlNPUiwgfSwNCj4gKwl7IC5mYXVsdCA9IEdUVF9GQVVMVF9DVVJTT1JfQl9G
QVVMVCwgLmhhbmRsZSA9IGhhbmRsZV9wbGFuZV9mYXVsdCwgLnBsYW5lX2lkID0NCj4gUExBTkVf
Q1VSU09SLCB9LA0KPiArCXt9DQo+ICt9Ow0KPiArDQo+ICtzdGF0aWMgdm9pZCBpbGtfZ3R0X2Zh
dWx0X2lycV9oYW5kbGVyKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5KQ0KPiArew0KPiAr
CWVudW0gcGlwZSBwaXBlOw0KPiArCXUzMiBndHRfZmF1bHQ7DQo+ICsNCj4gKwlndHRfZmF1bHQg
PSBpbnRlbF9kZV9yZWFkKGRpc3BsYXksIElMS19HVFRfRkFVTFQpOw0KPiArCWludGVsX2RlX3dy
aXRlKGRpc3BsYXksIElMS19HVFRfRkFVTFQsIGd0dF9mYXVsdCk7DQo+ICsNCj4gKwlpZiAoZ3R0
X2ZhdWx0ICYgR1RUX0ZBVUxUX0lOVkFMSURfR1RUX1BURSkNCj4gKwkJZHJtX2Vycl9yYXRlbGlt
aXRlZChkaXNwbGF5LT5kcm0sICJJbnZhbGlkIEdUVCBQVEVcbiIpOw0KPiArDQo+ICsJaWYgKGd0
dF9mYXVsdCAmIEdUVF9GQVVMVF9JTlZBTElEX1BURV9EQVRBKQ0KPiArCQlkcm1fZXJyX3JhdGVs
aW1pdGVkKGRpc3BsYXktPmRybSwgIkludmFsaWQgUFRFIGRhdGFcbiIpOw0KPiArDQo+ICsJZm9y
X2VhY2hfcGlwZShkaXNwbGF5LCBwaXBlKSB7DQo+ICsJCXUzMiBmYXVsdF9lcnJvcnM7DQo+ICsN
Cj4gKwkJZmF1bHRfZXJyb3JzID0gZ3R0X2ZhdWx0ICYgaWxrX2d0dF9mYXVsdF9waXBlX2ZhdWx0
X21hc2socGlwZSk7DQo+ICsJCWlmIChmYXVsdF9lcnJvcnMpDQo+ICsJCQlpbnRlbF9waXBlX2Zh
dWx0X2lycV9oYW5kbGVyKGRpc3BsYXksIGlsa19waXBlX2ZhdWx0X2hhbmRsZXJzLA0KPiArCQkJ
CQkJwqDCoMKgwqAgcGlwZSwgZmF1bHRfZXJyb3JzKTsNCj4gKwl9DQo+ICt9DQo+ICsNCj4gwqB2
b2lkIGlsa19kaXNwbGF5X2lycV9oYW5kbGVyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiwgdTMyIGRlX2lpcikNCj4gwqB7DQo+IMKgCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNw
bGF5ID0gJmRldl9wcml2LT5kaXNwbGF5Ow0KPiBAQCAtODEwLDYgKzg2MCw5IEBAIHZvaWQgaWxr
X2Rpc3BsYXlfaXJxX2hhbmRsZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCB1
MzIgZGVfaWlyKQ0KPiDCoAlpZiAoZGVfaWlyICYgREVfUE9JU09OKQ0KPiDCoAkJZHJtX2Vycigm
ZGV2X3ByaXYtPmRybSwgIlBvaXNvbiBpbnRlcnJ1cHRcbiIpOw0KPiDCoA0KPiArCWlmIChkZV9p
aXIgJiBERV9HVFRfRkFVTFQpDQo+ICsJCWlsa19ndHRfZmF1bHRfaXJxX2hhbmRsZXIoZGlzcGxh
eSk7DQo+ICsNCj4gwqAJZm9yX2VhY2hfcGlwZShkZXZfcHJpdiwgcGlwZSkgew0KPiDCoAkJaWYg
KGRlX2lpciAmIERFX1BJUEVfVkJMQU5LKHBpcGUpKQ0KPiDCoAkJCWludGVsX2hhbmRsZV92Ymxh
bmsoZGV2X3ByaXYsIHBpcGUpOw0KPiBAQCAtMTkzMyw3ICsxOTg2LDggQEAgdm9pZCBpbGtfZGVf
aXJxX3Bvc3RpbnN0YWxsKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQ0KPiDCoAkJCcKg
wqDCoMKgwqAgREVfUExBTkVfRkxJUF9ET05FX0lWQihQTEFORV9BKSB8DQo+IMKgCQkJwqDCoMKg
wqDCoCBERV9EUF9BX0hPVFBMVUdfSVZCKTsNCj4gwqAJfSBlbHNlIHsNCj4gLQkJZGlzcGxheV9t
YXNrID0gKERFX01BU1RFUl9JUlFfQ09OVFJPTCB8IERFX0dTRSB8IERFX1BDSF9FVkVOVCB8DQo+
ICsJCWRpc3BsYXlfbWFzayA9IChERV9NQVNURVJfSVJRX0NPTlRST0wgfCBERV9HU0UgfA0KPiAr
CQkJCURFX1BDSF9FVkVOVCB8IERFX0dUVF9GQVVMVCB8DQo+IMKgCQkJCURFX0FVWF9DSEFOTkVM
X0EgfCBERV9QSVBFQl9DUkNfRE9ORSB8DQo+IMKgCQkJCURFX1BJUEVBX0NSQ19ET05FIHwgREVf
UE9JU09OKTsNCj4gwqAJCWV4dHJhX21hc2sgPSAoREVfUElQRUFfVkJMQU5LIHwgREVfUElQRUJf
VkJMQU5LIHwNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+IGluZGV4IDkwMjFmM2VhZDdlNi4u
NzFkMDljMjE2OTVhIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Jl
Zy5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gQEAgLTM3Miw2
ICszNzIsMTYgQEANCj4gwqAjZGVmaW5lIEdFTjdfTUVESUFfTUFYX1JFUV9DT1VOVAlfTU1JTygw
eDQwNzApDQo+IMKgI2RlZmluZSBHRU43X0dGWF9NQVhfUkVRX0NPVU5UCQlfTU1JTygweDQwNzQp
DQo+IMKgDQo+ICsjZGVmaW5lIElMS19HVFRfRkFVTFQJX01NSU8oMHg0NDA0MCkgLyogaWxrL3Nu
YiAqLw0KPiArI2RlZmluZcKgwqAgR1RUX0ZBVUxUX0lOVkFMSURfR1RUX1BURQkoMSA8PCA3KQ0K
PiArI2RlZmluZcKgwqAgR1RUX0ZBVUxUX0lOVkFMSURfUFRFX0RBVEEJKDEgPDwgNikNCj4gKyNk
ZWZpbmXCoMKgIEdUVF9GQVVMVF9DVVJTT1JfQl9GQVVMVAkoMSA8PCA1KQ0KPiArI2RlZmluZcKg
wqAgR1RUX0ZBVUxUX0NVUlNPUl9BX0ZBVUxUCSgxIDw8IDQpDQo+ICsjZGVmaW5lwqDCoCBHVFRf
RkFVTFRfU1BSSVRFX0JfRkFVTFQJKDEgPDwgMykNCj4gKyNkZWZpbmXCoMKgIEdUVF9GQVVMVF9T
UFJJVEVfQV9GQVVMVAkoMSA8PCAyKQ0KPiArI2RlZmluZcKgwqAgR1RUX0ZBVUxUX1BSSU1BUllf
Ql9GQVVMVAkoMSA8PCAxKQ0KPiArI2RlZmluZcKgwqAgR1RUX0ZBVUxUX1BSSU1BUllfQV9GQVVM
VAkoMSA8PCAwKQ0KPiArDQo+IMKgI2RlZmluZSBHRU43X0VSUl9JTlQJX01NSU8oMHg0NDA0MCkN
Cj4gwqAjZGVmaW5lwqDCoCBFUlJfSU5UX1BPSVNPTgkJKDEgPDwgMzEpDQo+IMKgI2RlZmluZcKg
wqAgRVJSX0lOVF9JTlZBTElEX0dUVF9QVEUJKDEgPDwgMjkpDQoNCg==
