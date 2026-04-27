Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uRfkD17R7mmIyAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 05:00:46 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3141746C420
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 05:00:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2810110E03D;
	Mon, 27 Apr 2026 03:00:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OGmc5YNR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43C9810E03D;
 Mon, 27 Apr 2026 03:00:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777258842; x=1808794842;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BgHCWq+G8z+24iIdCiTOZtL+Tm/UTlY35f0Hb37Wo9o=;
 b=OGmc5YNRgbUW7DdfGzv2NIZApKARznYsTOgMo5akGXkv9PyS/NJcGhCJ
 M4za/eFr/hFotrwVDCW/kw9TaX73MGnTOC0wAu5KJoUP4cX0gtf3BMExC
 mxR69xwLbJHvnnn0Mt9au9yNQA3u7krRkbmecSDO5SFpbKv6gOYkrfL9L
 mbIfzgxz/Tm8+u7/aZm4lnV0F2YqniWaSRAG7uD+C/KPsF1OIDISI/JKc
 vXWCe8f/bWcOk545TCY/7uQio6nF4ZW8/dzZ4LL61b2zJOWDYDHFtF5WN
 EqtY5hhtU0aiIOkxtV3ZdEYGIDN6llC+SSi4ySS9hZEBtv4RIxu8ilzyO g==;
X-CSE-ConnectionGUID: BfWXUBxLQGOrHidm/hoduQ==
X-CSE-MsgGUID: up/HVc3dRWO+xpdyXywEUw==
X-IronPort-AV: E=McAfee;i="6800,10657,11768"; a="82001670"
X-IronPort-AV: E=Sophos;i="6.23,201,1770624000"; d="scan'208";a="82001670"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2026 20:00:41 -0700
X-CSE-ConnectionGUID: 4xWjgzzpQU6GhRcf1cRF9w==
X-CSE-MsgGUID: gDHaGdP9R3aZOcuF1LB/Ow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,201,1770624000"; d="scan'208";a="238502296"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2026 20:00:40 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 26 Apr 2026 20:00:39 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 26 Apr 2026 20:00:39 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.26)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 26 Apr 2026 20:00:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YIy8exzIb07xspTflPP306z0nhottM0ac04k6J+7IjRsx4NajlmZiNVB5KaPUKLB+DnMFc9b5QjIezWUnupiejJJ0bDWWkvHQdGaUCruIqA5t5M12zR7c0Qmd/epkqR7sWmjnuCYvggbijvQFF/YycWP3o1j6iSn2B2NZy3+BEfmCx8+IGJSRwCwBEKp0YBcdeZaZZc9Lxdz2IblG0xY03jX5xzljmXtGJQJXo9A9CR/4q7rpj1ct8R7UuumfADwcrHcD1QLKqiQD10EgbjLuD+wwHITleSe7YWlKtq3ZWBQCUv49YADwWNBA1OwG9jrNxq25EVLEHAus1h88vNNlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LppWXdISlt4xSPPCLBvXV6ovnoQMt1+6nqtIu+R4mjY=;
 b=Q4t/hdj3Zxi8vYG2IMNZMSjLlC99zbYVMbHy3ksVjFjL7Chxlillpx6XltBIZG21AnZ5pcHp71RGdFbQaOAiotXfA2G8/TWiDpM63omo5MHs4VoU6iqufpwwqwuTFwWZMC8Xqm+Hnot6vAO8I3rwMjE6k8lQrlfY+4hyV0rujnIqF80S/tTTgfiKI0HlDz7/gw4nKVv5ph+jrt+lW4LSFtxFD04v9wltxdPsZcyxkzedtUTU5dnzTPNybnofPYiQZI3/j3CpxUrTrUwJCURkOMKHfUIc8OTwrxG62Go9GfjpqKOLq/RiiHmIWzb3aDj5QG2gZmR3ZlokxKQciZdbDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DS0PR11MB7622.namprd11.prod.outlook.com (2603:10b6:8:144::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9870.13; Mon, 27 Apr 2026 03:00:35 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.20.9870.013; Mon, 27 Apr 2026
 03:00:35 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>
Subject: RE: [PATCH v2 06/13] drm/i915/display: Add HAS_DC3CO() macro
Thread-Topic: [PATCH v2 06/13] drm/i915/display: Add HAS_DC3CO() macro
Thread-Index: AQHc0nTFIZG6BwQppk+EWD5T7Z9Y/rXyPu9g
Date: Mon, 27 Apr 2026 03:00:35 +0000
Message-ID: <DM4PR11MB63603DA6BCDDF21826E3A65DF4362@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260422162622.1869831-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260422162622.1869831-7-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260422162622.1869831-7-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DS0PR11MB7622:EE_
x-ms-office365-filtering-correlation-id: cda65e21-4aef-4d51-9d2a-08dea4092786
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|10070799003|366016|376014|38070700021|56012099003|22082099003|18002099003;
x-microsoft-antispam-message-info: BSCzD8hbNe9pSogPdzPN1jfSgh+8nikV+gss/xXKCAc6DQXf0n+l2Aa/0BnOWYTplD7EizEW9jsJPsPClpeIWH2i4VvBwvb2sgnqlxAu2teuAy4SDSJ2NtIFwLVLw5YDPnTQDtYMPti/vDY6tutmtW+WzXAuZsKBBzG41vLjf9+AkQG+IC6rqIeqdY9BdLGTRGAMapdk9b9oVBWiB3OeACpuL99KroK+xQOWkuS0gFfUJ6dNx6YGN5XXul2mfkR6/EBPXzErAn63WTl/L5ty0xA6FrLZ3F/G83UJz9Hyyt1N4JvVzuqj3eGDTQaQ6ZdRvUzMmLLVMJnoVi0F61iAtm0VS/IrcHHA7KYhv2tHQKe/RZT4+j97hiWEmbbokkZqE/TtYDlcGum9LAbCwNp4G66uZmYbEmxOk1gxpzkXJe3HnqihmG5Ezg1i5zsoJQwdA1Y5zVvzvSkKRdAKiYF35/I2/VLO91cUtf64sxedFC4eFu+kaCDo4dlwsJNOz2CfGATf8bwDHWp+fPhnrX2QCNz7QjK/tK3GZHgww0aNp5tpLDaAuFogUosfhAEqHvyTprzBfRbDvUKK5EleBZy7JNWDvBEVBoTiHgqDg/BpRuRIXtjdSxDTmlH3AQYAke9cI/5+2sGL9jQc06DwmucO17VVhkTRNywjSy7n9PR3jPqJcbCpMZvi8gjS6zsSHPSu9iYgf4lmJWx3l6/Gtk0WKY45BjrJ7EizR5snXR4BzRGr4W3ratGkxTymY/3cWzCwsiE0/aXH0+96b3X35wqll/3pw8624TE9jBhxd82E0Ds=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(10070799003)(366016)(376014)(38070700021)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mkv7cKrdJkJMD1mARpXkoAHJHWb/iZJcPbixOLOvACMjPzy3ol6OhtOlDLv4?=
 =?us-ascii?Q?s99JI0x8HTjLJMt60FOW2yAi+iktX2jj7Wg+ED7nXSQ26K+tq9ppER5v3/of?=
 =?us-ascii?Q?y0xNc8tJr8aFeL92rDh2NMoMLL4NN3RQ3WUgq3NNurs7M+5uUcFRU+TUfYCB?=
 =?us-ascii?Q?7PwV/Ss3HmWxJnaSswZKbfpGoAG3dZAfNpPKJCOrpEWV3v8oDOqB2jMQWJ5a?=
 =?us-ascii?Q?KwMXXr8Cmh6wWWpPTwKjHnzmUpcJqM/MSVy5uVvGzt5VQyFtyGm4Ui6QzBhC?=
 =?us-ascii?Q?BoD/4ywxJOGFm5Tl8HPGXhaOaZbkmWzYSbqfjb0nirDUdzubuFCWFlhLXrut?=
 =?us-ascii?Q?z5uGgq7tGgdr1mw9cNsQCp8HIPAW1J1avEk55RtP6Dbn2DsDIzrMryOXGAaW?=
 =?us-ascii?Q?oSEwbCj8Y7x3QGjgRhPr5tiuB8neHUCLEE30a9b3mFGDPqvLrdO6Y0eXYU+I?=
 =?us-ascii?Q?YQfqaKJmId8Bkx/A/srMWvTEaD1+5oQ0u+sSDalW60tgSuPDJTY5F4hBbcWz?=
 =?us-ascii?Q?vfzhfB/hL2FnYFMWm+ezkqBIvvwH+Jy+D8mrZbLYQpZTuboFhCnz5BgT5IzG?=
 =?us-ascii?Q?3HziwwetZ/qF7pvW92HZnXDy1sHzISO600Mn2H+kkRz6MyVQkHs1LXpePo1o?=
 =?us-ascii?Q?2IGZ+gn4g15JezScsmpsqNGqauh/eCgB2W1A1Zib7eXasYT8bS/x8YCos6vo?=
 =?us-ascii?Q?UNbV85WQ9fhyaTDQzmdV2GSyf9P+1UY/0OigrNBe7GCC/XRMayL0At8IaojD?=
 =?us-ascii?Q?VxOfLUA35JL4CUe8K5xhh7NlxAFZqDxA9mvlRoJvvkqO9i42XAj3UWayT3Af?=
 =?us-ascii?Q?Hmii6VMvxOjhiWZJTw6mDCc7DFa065YxDgxNqCSa9jrAjNTgY+r8UBD4kY51?=
 =?us-ascii?Q?/vh+OwqqMfn1CsWwI1qh25AOV5QJwD8QpgGGA5ycP/HA7KgyQn0v6fsvNuGh?=
 =?us-ascii?Q?x7jwP+35k397gPUD7OLu+yJef/7mNYeCahy3eA2HYiSXH1sjh+vWO2O+4Prq?=
 =?us-ascii?Q?6Wl0HhvMuJ3a8UtUS1Y0cXJl0xK9OimcBj37ULnmOGcc/fPSAByDrt6EnPGh?=
 =?us-ascii?Q?cEbQ3ig1alzhMofjkOVXrMNAbFK65xcSnlYEKoUJK6bYlx/qzrptaTnZFklh?=
 =?us-ascii?Q?zn6XAJEtpE7rttPWEC8gVmsmdjYY6L7Xv1pN8FXhxuWIJm/JSade7NAaYlKT?=
 =?us-ascii?Q?rmCysoXm9AfXQf5Sn73/l/5Q5ZNucwcq1rU626Zmkds1HfNcoFr7/orX0FMD?=
 =?us-ascii?Q?Y5thpIDJwsEorUfEc+66/CqlQu5FUxJ8ngVw3m07eoar2GrVSAJSyMbB6z3z?=
 =?us-ascii?Q?ykeEw86dukOzya8GYc/nWR1O2T5XQkxXVLaZHSeGvcrEiOp6AZ/+GDYWt4GN?=
 =?us-ascii?Q?B9C4os7BF8XPUu3WbND0pHyDAhXkmGaWe3yH4n3QfViWZwCblQ9F+q4kklZE?=
 =?us-ascii?Q?3SFRicfik62HhQ7/JhMM4Y+aycSOThtQPjdHjAyiDksnfhnUNF/CH+Plb5br?=
 =?us-ascii?Q?P+cTTTngYJLlx+UHV6B2b1a1OrwJc34URXHL+6Ples52as49WdwLXUIdLnjY?=
 =?us-ascii?Q?xuG1Efldvngms3TuOuyXaEOFACfH60770BZjgAdm3eWdd5WIDuiqX6rRyZ9R?=
 =?us-ascii?Q?iA7xFWc0v/ctbTg71B5h31AiL7myzDTg44zQhApa+wZBGzkuDVvz6Cm4ToHe?=
 =?us-ascii?Q?cyijgR41ZNkzscPYx19U5Fa2ztXlDZxFglT1RvnPUMo+7bMgHZ3oiPiPsJ2W?=
 =?us-ascii?Q?KcHUTzjB1wdI8Q6DKeC+ZEzhAnCjuA/3mDtdGWqtvbB1XHHUps8/plmwyLaB?=
x-ms-exchange-antispam-messagedata-1: 6wchvArUZS4CuA==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: CC5i9WCeFC/mu99SE/wU/Of3yRClcf/AlfGBqVQm9acnUvYRSe14qyP4nGJeMSsFGF4WfNZuRm1wG5StUhEXF8l1hp0qkgE1s2LXb68xL8Qr8CEdDtY8zdhFz3nWvSHp9A7prRSTDPwRVddecAKOYjCI4RqqnQikgMNmj99BS+OM65sFJHFTbxai8JCytmyglmxvitCo4QLdRRTSTQ5rmNJFKAO1Yvqd3qJ3YKgcETRPFnGPFVdn+3kJsOxOxEdFhrjdzwbJn08+TnL10f2VgCzACIakbPswZ842cJBIgE8smDQ/afKU8qll89jVMv+OJXT58cTJsDNhHCdheaId1w==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cda65e21-4aef-4d51-9d2a-08dea4092786
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Apr 2026 03:00:35.7389 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qMQe2U5KNlQ1qqtpeJkuEPjL69N60/LgmSH+2vmAUCDL5GUlJrBgijnGdC8zUs1iiqeltBkR1ts7J8FksJPfKA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7622
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
X-Rspamd-Queue-Id: 3141746C420
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]



> -----Original Message-----
> From: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Sent: Wednesday, April 22, 2026 9:56 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Manna, Animesh <animesh.manna@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Kurmi, Suresh Kumar
> <suresh.kumar.kurmi@intel.com>
> Subject: [PATCH v2 06/13] drm/i915/display: Add HAS_DC3CO() macro
>=20
> Add HAS_DC3CO() to identify platforms supporting DC3CO.
> DC3CO is supported from display version 35 onwards.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> BSpec: 75253
> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h
> b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 074e3ba8fb77..7fd994d92ba9 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -159,6 +159,7 @@ struct intel_display_platforms {
>  #define HAS_CUR_FBC(__display)		(!HAS_GMCH(__display) &&
> IS_DISPLAY_VER(__display, 7, 13))
>  #define HAS_D12_PLANE_MINIMIZATION(__display)	((__display)-
> >platform.rocketlake || (__display)->platform.alderlake_s)
>  #define HAS_DBUF_OVERLAP_DETECTION(__display)
> 	(DISPLAY_RUNTIME_INFO(__display)->has_dbuf_overlap_detection)
> +#define HAS_DC3CO(__display)		(DISPLAY_VER(__display) >=3D 35)
>  #define HAS_DDI(__display)		(DISPLAY_INFO(__display)->has_ddi)
>  #define HAS_DISPLAY(__display)
> 	(DISPLAY_RUNTIME_INFO(__display)->pipe_mask !=3D 0)
>  #define HAS_DMC(__display)		(DISPLAY_RUNTIME_INFO(__display)-
> >has_dmc)
> --
> 2.43.0

