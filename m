Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wMH7BI6BqmkMSwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Mar 2026 08:26:06 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7461B21C6EA
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Mar 2026 08:26:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BBA610E38E;
	Fri,  6 Mar 2026 07:26:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e8ZjbrmV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D050110E38D;
 Fri,  6 Mar 2026 07:26:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772781962; x=1804317962;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=7heW/N6am+wNKpTYnz4/nDfxdlDk+7qCyg456Cc4zUk=;
 b=e8ZjbrmVanT6Ck+1u8rr2CnMmEJ2DVer3dY8egNkIBgkhR+gXH/nUmX5
 paB2K3kh9VaeDQsM0a9HA7OemphlVimDhGmbvOKNgpw2rRVGwnLbfLwES
 aOjZujw6eamsnOhRchhzbLYyt2cTD+C/ALUyktZLez/TLbZU4tADAovft
 gw1MZPCquyf45QpsWwUhDBI86xQ7JZkgJDGu9YOIRU4DJAJJJIM/J0ISZ
 Btr2P8I2gEUKP2fXZ4nSxDrf/duqRZaXB+CeXnRbTMW/ZI/82ReufaYyx
 9Pq7kk5RKIgSkL/NrikccnjP7AHMAWGmAwL4pHmeZwU1R1DsXudmaXwHJ w==;
X-CSE-ConnectionGUID: lKI0CdhSSoaDmwcyRMVJ9A==
X-CSE-MsgGUID: E7L6du2eTnqzjudGBLXfwA==
X-IronPort-AV: E=McAfee;i="6800,10657,11720"; a="73788976"
X-IronPort-AV: E=Sophos;i="6.23,104,1770624000"; d="scan'208";a="73788976"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2026 23:26:01 -0800
X-CSE-ConnectionGUID: MKjgBAqkRySJ/myVcA/U2g==
X-CSE-MsgGUID: UC7ixWfnR9OjbnTb3CRdaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,104,1770624000"; d="scan'208";a="218178777"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2026 23:26:01 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 5 Mar 2026 23:26:00 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 5 Mar 2026 23:26:00 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.41) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 5 Mar 2026 23:25:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uMR5HnfxJVbXpQF7Juq1PA8HX+qIi/bc0LvtE6GCnI672qM5k8zTlgWWuuRWVPGDYS5KDIGYrK6luXHd9x92bqPuUKxpBzko/vGw2bcDqKpRwwqLd3yGyDnpX2EMTLtGtH6ObeXmtVlQwn6NKei/JpLy974Y1mJQ90SlZYHHaZMFoicOg1FaGkvovaTd419T7SBJ5jtJdGDxvAukcZJU1HQ5qgdFTHGvCQefQdklw2zrCWYG+F6427/jt6tOF+U31UlzEqGYlNSa4+7ECfk8pWANCvFZw4ZGXPQHWXxUYVOYybeahn6bQ41euCreb5SDV9M7AYULFfKkteOASyOSCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7heW/N6am+wNKpTYnz4/nDfxdlDk+7qCyg456Cc4zUk=;
 b=RVBfCjh0eQyymwGRO2HXVKy419hx4Qg/BECjjd9O3SUlscrdnQAggAy50hokhxVzkx3u6dApV3nMYNPLnG8ViP5JNDUCyLZKPM5y75q7jZXR6gizpOMoLMMP+QX9gWXk2lZulDkmzwBEk4yc1idI0vvKJF8l72i3mIB/cB+2C0pMu/G+Tz6XKxV9jxjnF9gSkUN/x3+M3MZmv2iW7TRN4N6nsK5DviRGPtcc+IvWYSpqNcRBSgUfg14pTj4UDkLwP1GKlMYwI8cQCXokRK1qCA2CjjaQOH7BCSiURyHaqTsDwV2Ut4NExCFoF6Hva5T/wzp9y5Ujz+T9gVic11pdbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 IA4PR11MB9154.namprd11.prod.outlook.com (2603:10b6:208:55e::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.22; Fri, 6 Mar
 2026 07:25:57 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%6]) with mapi id 15.20.9700.003; Fri, 6 Mar 2026
 07:25:55 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 7/7] drm/i915/frontbuffer: reduce fb for frontbuffer
 abbreviation usage
Thread-Topic: [PATCH 7/7] drm/i915/frontbuffer: reduce fb for frontbuffer
 abbreviation usage
Thread-Index: AQHcqnHQwEG5+cmkB02e5oZWe/o7QLWhIAsA
Date: Fri, 6 Mar 2026 07:25:55 +0000
Message-ID: <7f58267212c84be148962eed5f600782159ad186.camel@intel.com>
References: <cover.1772475391.git.jani.nikula@intel.com>
 <f7f04d63771891d1c3b1aa280485437bc4a70f20.1772475391.git.jani.nikula@intel.com>
In-Reply-To: <f7f04d63771891d1c3b1aa280485437bc4a70f20.1772475391.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|IA4PR11MB9154:EE_
x-ms-office365-filtering-correlation-id: 3ac7f1b8-8c8b-434a-3183-08de7b519ace
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|366016|1800799024|376014|38070700021; 
x-microsoft-antispam-message-info: WGo5XIHIWDBjpbHZxtua3YToBZsy8Z9qQFsMmS7cS4W6EsZ8ICS/2Hd95n5FK3OBF7GkYVijQKUo6zokRvzALovAPOGeMQgBpOVh65TLZn6QSD9GhJOupzauNsELXjWTGnuj97+1v2ASlYltV+dC5M1cl8AxuylySa5F4Yn+ejqwpv6LaGXe9lvwli1uDsroBts5EY5o8LXp78sDczvdqBp2WRIFCUjPPN9bs3q9NyaDf8MRlQp7nz1l1sADGzETl4HiFSvwTW/OUMdYPIvR6Nf5iJAMT9gPiD7aiYKOZiNqBtE3rCcnmt5G3WEvVi432qgIs+j0x2+6iX1njjVEwb0nYPvBMRQi3Vx1H0b6lcojvNCz+IjLe5IutpZoFYTi1GVsGY3cG57kuuK0PRPJeA8n5byOk6tC2ZmsJQGBrKJtWWdbOof9O7Q1JWdwltU1u+j7e5Lr+Sy7FT45p1DpF7YCobRog+Rr5PoBY8PvgFTkV5wn6Jo6slcFY4MPxNk8+y1U0huscBMeAe0hpNyhRMA2JNqiqI0vZjEu4hLUG1ZMxcvFuM7cGi7obGxUf4BnXBkNiUZysSb48tOo6vDPPevptgTMwY2xBCPjHpcavdbXWanxnGxe7IydZ9HqKrCspoyOr9RueJ76ztjhJYTdMcLXyuwXs2ACj0LXRLGxReuuR4VxCnkpj3Zrt4wDSS79p3QoP1g9R2vjWqLIS6IUQdrTBET5LSmqhgvQIxD28vWVPNhryabNLqfLZRo+a48acRUcwjAN3IqtOFVootwrNFxJ1iVsMvf6v9bA1OcdOaM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?b0wwK0Q4ZlJ0dFFxMEZ1blBHNHJQd1d4djVpTExqQzJRcmJRVDljRUtwTHlq?=
 =?utf-8?B?VTFiQytGY1lSbjEwckpOWUhNelJQUFRTc3MyWHhiWTR6dndqT0FBdENjcDZ1?=
 =?utf-8?B?dnExcHBFeHk3V0lDVjFEbDB3VGs0MFJkSTRrQ24rVHJDL1NldGxpVXFoT3NJ?=
 =?utf-8?B?WllYREU4TXQvZUlSOExGbi9hOXJaNVUrZUdXaUk2Y0FzTHQ4ekk0dG9nclN6?=
 =?utf-8?B?M0MvL0pyUG9JWjJOWkJ4eVRjYUtyOVN1QncrQ2Ztb3poUUl4b0tZeGZuWEEz?=
 =?utf-8?B?YnVnMSsyQUc1RmtGYWV4d3JlWmplMkVsaWpUTVBocmxQb0xycUUyU0dBWjZ5?=
 =?utf-8?B?K3E1dlo3bjRNRE1sOFRsdlNMSENUUVRoeE1icURsZkkwZDZJWE1MWXZGeUdH?=
 =?utf-8?B?RDduUldsSHN0RXZTOS80NzA0VzlUVVlYM3RMMUQzRjhhQmdVNUx2cUduYTNm?=
 =?utf-8?B?Y1kvZ1BENkRPM0VsOHkyclNENmNLNjB3aGkxQWVSV0lIekRVZlFkVzVKa3E0?=
 =?utf-8?B?cnNmMFY2akRva1QzekJtWFBTRkp5V3lMclRjL0VLSTlvb3J0MWpZSDlpV2ln?=
 =?utf-8?B?byswQzlOUFNhVXUrWEVuQTQrNWtXZUo0WUFlTXpPNGhsR0VpOXhUSXFoUE1z?=
 =?utf-8?B?TGdybDFIR25jUDJ5UVc1QWFnTERyai83OGZKQ2VtdHAzd3BBa0RERVdQYkxJ?=
 =?utf-8?B?cUViRXFKVXhQRmtOUzIrM3lCZ1FEK0txZ3VWQ1BtQWNtRExWQXFtdUw5UDdQ?=
 =?utf-8?B?OHBwRGF6dFN1QkIwVDNlRHBDVkYwMFh3VThhcUM5MkppdHZtZVY4c1RJQU5Z?=
 =?utf-8?B?eExTTjFQMFJBZFRHaTlxbXpsRDlUa1FXM3p6ZElTbjhaMWlteTFYUmNNTWFK?=
 =?utf-8?B?VlhIVFpUZlI5bEIrR2dRazQrUU9FMHJsaitqb3pUTTJTMGFBSWZjM0VOODZX?=
 =?utf-8?B?RzlUSzVaTEJId212Qmt2ZUhmTFVnaFRHNzJQemJMaFRCQXkwWVpvNlg4aGx3?=
 =?utf-8?B?SlcweG9WbHZ6NjFlaHAvdEdCL2E5cHdsK1BmYmdHNUp1Z3pnVkNZY09mbGV0?=
 =?utf-8?B?OWY3Rmo1eVZLaGdibUw4WWgrVkhlVHhrK1BBUm5ZQnBkTWI3QUtRbXl2cHhl?=
 =?utf-8?B?eGdUL2FGc21rOW1wOEJuZzR3czhHMU81STdSa09IOExJTEM2UENrUlF4Ni9O?=
 =?utf-8?B?REFDc0FTa1U0blFlR2pJaFBCYmFBVUJXWlJkKzBlbkQyWEY3ejZxVW95Z0pR?=
 =?utf-8?B?b2NNSzU5L3RHeEg3UUQ0TjZaclV0QW9NUkxtTmVYSXlkNTFLSHdvVDUyei9X?=
 =?utf-8?B?c1EzV05MbG5hWjJaeTVuSVZ5V0VaemJOZXpPMjErY2wrekVxTklEQXJPajNO?=
 =?utf-8?B?TkppWWNqWUhaWnEwUlpQOU9HOXJKbGdLaFJtMTk2bkpmcXhyWXhEdnlzTTZl?=
 =?utf-8?B?WExYVExSdlJhL3gwUXBiZHBHL2N5empiQlkvMHpvZ2VhQWY4TXF0TEROOENQ?=
 =?utf-8?B?bXFpdFZFQUxhVnRzMmMvV3U5c1NUUjdKZG9sWi9LUTMvdTBkN1h4VHdIVDJR?=
 =?utf-8?B?WTl5VlhORFNHYS8vaS9Bc3NUdWptV3JuS01YSGtrajN6ZmllTENTalRsY1dI?=
 =?utf-8?B?RWUwaUNUOThHL3ZpVzJRdURpVXg1M2puMGNlRmhydkltUjRrNFpFQlJNb0dD?=
 =?utf-8?B?VG8wUXRKZ0pUUGRFc1dOMmo0U3hmMWxxamVaaHlSd0o1VlhkamVDZnpNN0RR?=
 =?utf-8?B?L3J6OENjZm9OUXF4NXd2SUEzRXZwWkRud0tmMlVDc1FIRU5ueXg4ekxkR2FY?=
 =?utf-8?B?dEJWcUd1YVZKdWlKYStZeDZMMFViVjE1V2NrK3ZwaVVjYnJCM0Y2eVpPT0tL?=
 =?utf-8?B?dDAwL1hnRkVVY28yOXg4TFp4a2wzd2crNWJTbFp0OUYxN2ZtcXhWU0pyRlk0?=
 =?utf-8?B?VG5BVVNUUmtaNzNPNGxXVW9sRk1KK2NQdmNlM3UwMXRVK0hmNWVvNTVJTXRU?=
 =?utf-8?B?UFZLcXU4U0xPcTJwbDlEeWNuWFptd1hLUmxndlllTXN6QUJ6NmlnNnlkeDNH?=
 =?utf-8?B?VG4rclJjMXp6ZDVjTzVkK0xqTW1OaTBiN1F4d0VjTWtkb2t0VzVyT0lHd3dO?=
 =?utf-8?B?NjJ4anJBK1RoZDB1SWk1cE50WHkxdWJnb3dSTGJBRDY1bHpqZmNRb1JzcnND?=
 =?utf-8?B?cnU0aURBQlJLMXZWc0twcSticzN1RXVQU2RNMjhSYkd4dnZWUy9LcmphZkR4?=
 =?utf-8?B?NjJxaGJBdDNTbzhXTGJDbWNxb0VFQS9LWXNIMmlndENHVm5CTjBRK3pMWHV5?=
 =?utf-8?B?YmcxQkRBVXpNK0JUUWRIZkNDbUIxN0EwV2ZQTkFta2Qrdi9uUSs4bk1Ka21B?=
 =?utf-8?Q?WD/YeN6Fb4HHxGITaH96B8dqCgUmAuEHBBLGwvxs6+xv5?=
x-ms-exchange-antispam-messagedata-1: 4c2mZseNHINStzJXiYSa+uEYlYSw4DWfEAs=
Content-Type: text/plain; charset="utf-8"
Content-ID: <490702D7922AFB41BE107BD0CF91F322@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ac7f1b8-8c8b-434a-3183-08de7b519ace
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Mar 2026 07:25:55.2284 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: I9YhFHOL5MXWgkQI43gHDVPZ42ZYUmNiIJhBDxiw/ftKrayfCIlf6G/RfwigzHq2le+vEOfvdPzB88dEuHD/1PytNobHVTdze7u+jk8Y2rg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9154
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
X-Rspamd-Queue-Id: 7461B21C6EA
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

T24gTW9uLCAyMDI2LTAzLTAyIGF0IDIwOjE3ICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
VXNpbmcgZmIgZm9yIGZyb250YnVmZmVyIGlzIGEgYml0IG1pc2xlYWRpbmcsIGFzIGZyYW1lYnVm
ZmVyIGlzIHRoZQ0KPiBtb3JlDQo+IGNvbW1vbiBmYi4gUmVkdWNlIGZiIHVzYWdlIGluIGZyb250
YnVmZmVyIGZ1bmN0aW9uIG5hbWluZy4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxh
IDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+DQoNClJldmlld2VkLWJ5OiBKb3VuaSBIw7ZnYW5kZXIg
PGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Zyb250YnVmZmVyLmMgfCAxMiArKysrKystLS0tLS0NCj4gwqBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Zyb250YnVmZmVyLmggfCAxNiArKysr
KysrKy0tLS0tLQ0KPiAtLQ0KPiDCoDIgZmlsZXMgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKSwg
MTQgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9mcm9udGJ1ZmZlci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9mcm9udGJ1ZmZlci5jDQo+IGluZGV4IDYxY2U4MmY4NWRhZC4uNzA1NzQyZTEx
N2NhIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Zy
b250YnVmZmVyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9m
cm9udGJ1ZmZlci5jDQo+IEBAIC0xMjMsOSArMTIzLDkgQEAgdm9pZCBpbnRlbF9mcm9udGJ1ZmZl
cl9mbGlwKHN0cnVjdCBpbnRlbF9kaXNwbGF5DQo+ICpkaXNwbGF5LA0KPiDCoAlmcm9udGJ1ZmZl
cl9mbHVzaChkaXNwbGF5LCBmcm9udGJ1ZmZlcl9iaXRzLCBPUklHSU5fRkxJUCk7DQo+IMKgfQ0K
PiDCoA0KPiAtdm9pZCBfX2ludGVsX2ZiX2ludmFsaWRhdGUoc3RydWN0IGludGVsX2Zyb250YnVm
ZmVyICpmcm9udCwNCj4gLQkJCcKgwqAgZW51bSBmYl9vcF9vcmlnaW4gb3JpZ2luLA0KPiAtCQkJ
wqDCoCB1bnNpZ25lZCBpbnQgZnJvbnRidWZmZXJfYml0cykNCj4gK3ZvaWQgX19pbnRlbF9mcm9u
dGJ1ZmZlcl9pbnZhbGlkYXRlKHN0cnVjdCBpbnRlbF9mcm9udGJ1ZmZlciAqZnJvbnQsDQo+ICsJ
CQkJwqDCoMKgIGVudW0gZmJfb3Bfb3JpZ2luIG9yaWdpbiwNCj4gKwkJCQnCoMKgwqAgdW5zaWdu
ZWQgaW50IGZyb250YnVmZmVyX2JpdHMpDQo+IMKgew0KPiDCoAlzdHJ1Y3QgaW50ZWxfZGlzcGxh
eSAqZGlzcGxheSA9IGZyb250LT5kaXNwbGF5Ow0KPiDCoA0KPiBAQCAtMTQzLDkgKzE0Myw5IEBA
IHZvaWQgX19pbnRlbF9mYl9pbnZhbGlkYXRlKHN0cnVjdA0KPiBpbnRlbF9mcm9udGJ1ZmZlciAq
ZnJvbnQsDQo+IMKgCWludGVsX2ZiY19pbnZhbGlkYXRlKGRpc3BsYXksIGZyb250YnVmZmVyX2Jp
dHMsIG9yaWdpbik7DQo+IMKgfQ0KPiDCoA0KPiAtdm9pZCBfX2ludGVsX2ZiX2ZsdXNoKHN0cnVj
dCBpbnRlbF9mcm9udGJ1ZmZlciAqZnJvbnQsDQo+IC0JCcKgwqDCoMKgwqAgZW51bSBmYl9vcF9v
cmlnaW4gb3JpZ2luLA0KPiAtCQnCoMKgwqDCoMKgIHVuc2lnbmVkIGludCBmcm9udGJ1ZmZlcl9i
aXRzKQ0KPiArdm9pZCBfX2ludGVsX2Zyb250YnVmZmVyX2ZsdXNoKHN0cnVjdCBpbnRlbF9mcm9u
dGJ1ZmZlciAqZnJvbnQsDQo+ICsJCQnCoMKgwqDCoMKgwqAgZW51bSBmYl9vcF9vcmlnaW4gb3Jp
Z2luLA0KPiArCQkJwqDCoMKgwqDCoMKgIHVuc2lnbmVkIGludCBmcm9udGJ1ZmZlcl9iaXRzKQ0K
PiDCoHsNCj4gwqAJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSBmcm9udC0+ZGlzcGxh
eTsNCj4gwqANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZnJvbnRidWZmZXIuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZnJvbnRidWZmZXIuaA0KPiBpbmRleCBjOWEyMmI2Y2NmZDYuLmE4OWNlMzUyYjEyYiAxMDA2NDQN
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mcm9udGJ1ZmZlci5o
DQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZnJvbnRidWZmZXIu
aA0KPiBAQCAtNjYsOSArNjYsOSBAQCBzdHJ1Y3QgaW50ZWxfZnJvbnRidWZmZXIgew0KPiDCoHZv
aWQgaW50ZWxfZnJvbnRidWZmZXJfZmxpcChzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSwN
Cj4gwqAJCQnCoMKgwqAgdW5zaWduZWQgZnJvbnRidWZmZXJfYml0cyk7DQo+IMKgDQo+IC12b2lk
IF9faW50ZWxfZmJfaW52YWxpZGF0ZShzdHJ1Y3QgaW50ZWxfZnJvbnRidWZmZXIgKmZyb250LA0K
PiAtCQkJwqDCoCBlbnVtIGZiX29wX29yaWdpbiBvcmlnaW4sDQo+IC0JCQnCoMKgIHVuc2lnbmVk
IGludCBmcm9udGJ1ZmZlcl9iaXRzKTsNCj4gK3ZvaWQgX19pbnRlbF9mcm9udGJ1ZmZlcl9pbnZh
bGlkYXRlKHN0cnVjdCBpbnRlbF9mcm9udGJ1ZmZlciAqZnJvbnQsDQo+ICsJCQkJwqDCoMKgIGVu
dW0gZmJfb3Bfb3JpZ2luIG9yaWdpbiwNCj4gKwkJCQnCoMKgwqAgdW5zaWduZWQgaW50IGZyb250
YnVmZmVyX2JpdHMpOw0KPiDCoA0KPiDCoC8qKg0KPiDCoCAqIGludGVsX2Zyb250YnVmZmVyX2lu
dmFsaWRhdGUgLSBpbnZhbGlkYXRlIGZyb250YnVmZmVyIG9iamVjdA0KPiBAQCAtOTMsMTMgKzkz
LDEzIEBAIHN0YXRpYyBpbmxpbmUgYm9vbA0KPiBpbnRlbF9mcm9udGJ1ZmZlcl9pbnZhbGlkYXRl
KHN0cnVjdCBpbnRlbF9mcm9udGJ1ZmZlciAqZnJvbnQsDQo+IMKgCWlmICghZnJvbnRidWZmZXJf
Yml0cykNCj4gwqAJCXJldHVybiBmYWxzZTsNCj4gwqANCj4gLQlfX2ludGVsX2ZiX2ludmFsaWRh
dGUoZnJvbnQsIG9yaWdpbiwgZnJvbnRidWZmZXJfYml0cyk7DQo+ICsJX19pbnRlbF9mcm9udGJ1
ZmZlcl9pbnZhbGlkYXRlKGZyb250LCBvcmlnaW4sDQo+IGZyb250YnVmZmVyX2JpdHMpOw0KPiDC
oAlyZXR1cm4gdHJ1ZTsNCj4gwqB9DQo+IMKgDQo+IC12b2lkIF9faW50ZWxfZmJfZmx1c2goc3Ry
dWN0IGludGVsX2Zyb250YnVmZmVyICpmcm9udCwNCj4gLQkJwqDCoMKgwqDCoCBlbnVtIGZiX29w
X29yaWdpbiBvcmlnaW4sDQo+IC0JCcKgwqDCoMKgwqAgdW5zaWduZWQgaW50IGZyb250YnVmZmVy
X2JpdHMpOw0KPiArdm9pZCBfX2ludGVsX2Zyb250YnVmZmVyX2ZsdXNoKHN0cnVjdCBpbnRlbF9m
cm9udGJ1ZmZlciAqZnJvbnQsDQo+ICsJCQnCoMKgwqDCoMKgwqAgZW51bSBmYl9vcF9vcmlnaW4g
b3JpZ2luLA0KPiArCQkJwqDCoMKgwqDCoMKgIHVuc2lnbmVkIGludCBmcm9udGJ1ZmZlcl9iaXRz
KTsNCj4gwqANCj4gwqAvKioNCj4gwqAgKiBpbnRlbF9mcm9udGJ1ZmZlcl9mbHVzaCAtIGZsdXNo
IGZyb250YnVmZmVyIG9iamVjdA0KPiBAQCAtMTIxLDcgKzEyMSw3IEBAIHN0YXRpYyBpbmxpbmUg
dm9pZCBpbnRlbF9mcm9udGJ1ZmZlcl9mbHVzaChzdHJ1Y3QNCj4gaW50ZWxfZnJvbnRidWZmZXIg
KmZyb250LA0KPiDCoAlpZiAoIWZyb250YnVmZmVyX2JpdHMpDQo+IMKgCQlyZXR1cm47DQo+IMKg
DQo+IC0JX19pbnRlbF9mYl9mbHVzaChmcm9udCwgb3JpZ2luLCBmcm9udGJ1ZmZlcl9iaXRzKTsN
Cj4gKwlfX2ludGVsX2Zyb250YnVmZmVyX2ZsdXNoKGZyb250LCBvcmlnaW4sIGZyb250YnVmZmVy
X2JpdHMpOw0KPiDCoH0NCj4gwqANCj4gwqB2b2lkIGludGVsX2Zyb250YnVmZmVyX3F1ZXVlX2Zs
dXNoKHN0cnVjdCBpbnRlbF9mcm9udGJ1ZmZlciAqZnJvbnQpOw0KDQo=
