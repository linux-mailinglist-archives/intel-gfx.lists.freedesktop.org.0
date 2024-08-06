Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A40F8949887
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2024 21:39:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4810910E3E9;
	Tue,  6 Aug 2024 19:39:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P50Dxurq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C40410E3E9
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Aug 2024 19:39:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722973146; x=1754509146;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gBQiazYBjpKbrlYyMosH1Twp02tIAzfR0I7VDVFi5Dc=;
 b=P50Dxurqbya9h177BEYBQvBWJBhkabLtQhmRYXXbg8yhHhdkV6F4Qalh
 I0NdLNsaIe6JKxoMkozamvXh6B/6kHyplcapbngp+8sq4MSq+4UQ9oad4
 C7P1fYOH7/bl7FksCnLLvTElx1ufwuf22kdcfMJ9fClV2Bbh2PUrvrmVA
 hKIF6kpjRYK0voXmV6BbH0FNPYUXqRVkqUuxPa47wYPlkhiE6e64Y8F4J
 Qwq3uuV09TjTExrDloKHR5vH2Fg+0buW88SDJKvuBXpKkDnhTpcuRTV+v
 cVD7cLpvw1L8H/AmpM7Gp6ve9lzkLr9ag1zZAR9LfmsL8Lp0XM8OA/vED w==;
X-CSE-ConnectionGUID: K6VRHK2FQ/SlkPX6dQUq6Q==
X-CSE-MsgGUID: HIy0EfrWSTOw/z/ymKVODw==
X-IronPort-AV: E=McAfee;i="6700,10204,11156"; a="31684025"
X-IronPort-AV: E=Sophos;i="6.09,268,1716274800"; d="scan'208";a="31684025"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 12:39:02 -0700
X-CSE-ConnectionGUID: 7nOHh4vvSeSW6CxpHB/JVg==
X-CSE-MsgGUID: UnIz3BIrTnSEdft59jTfYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,268,1716274800"; d="scan'208";a="56588027"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Aug 2024 12:39:02 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 6 Aug 2024 12:39:01 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 6 Aug 2024 12:39:01 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 6 Aug 2024 12:39:01 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 6 Aug 2024 12:39:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Hd8tvaM+/PtPp3JTZHu0h+eJCvE90vy+SWz9lW5xmtjzm6gRRdWZVsC9oIjzmbJi6s2dERys2ZhsZ8/DLL/IsTcEYtnrdVM3Z397he6aW9eTMy1QtjM4tZtGxDSJKgpddYeR8pdQwiyNhFZ4w8qRmWHVnvSZyetPjDlhH/3n8afOhW/EITmEaCKxwD+1HwJuCcwC8XMsV/yxvw/C34EUKrqtg26bIxg4zyJely55dQtZrZjgx57lYkqEdd0yz8rpcpKTMYAadKh8nJ0mMwx0HRolJIulQxZCPC7zvsQ316jFKHCsMfKprb6DxPsEvj/OozMWbxM6D1CVuGZ5b1lMKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LHOt/wlyelqnCUn5vfjM54PK+t6pk1ISbwiiltnpmkA=;
 b=Ljjn5qMIS0a8W6eNfPr8WA9U2pnG6Yj5NHHTVJQXJFXxoO8S5nmjejIFTNKbx/xZfykhznhi+DBjzmWUBnQUHCjpJzmB+rd7wCSKr9VJVYhT0j30id/pn2+S4bvxbc6WBHSWIAVPvx3iPd8ibGsv0IG1J5rBBlYkRNmTZFDCMW2AsSvDzwqdmXvFppDpAJ3JR+q+8qTqkMkMkFi9GBmBdHihb+6Qx5eEqS1lrzsO/hrn1F5z9uxwkK/7KtXcK+rmJ8DkpPNdkABqq5yZ4P0f7vm8if99fm9hMuetYMWY2wUuY8K803T9UYHZj+5wvKCYUJLLvjrm6cvchDkWk2s9Uw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by SJ0PR11MB5938.namprd11.prod.outlook.com (2603:10b6:a03:42d::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.22; Tue, 6 Aug
 2024 19:38:58 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace%6]) with mapi id 15.20.7828.023; Tue, 6 Aug 2024
 19:38:58 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "Cavitt, Jonathan"
 <jonathan.cavitt@intel.com>
Subject: RE: [PATCH 2/3] drm/i915: remove i915_report_error()
Thread-Topic: [PATCH 2/3] drm/i915: remove i915_report_error()
Thread-Index: AQHa6AYXd7YKz2z5SkmOeovTlzonxbIantgQ
Date: Tue, 6 Aug 2024 19:38:58 +0000
Message-ID: <CH0PR11MB54446D73A5E2D15F0A49F016E5BF2@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <cover.1722951405.git.jani.nikula@intel.com>
 <19eab020c57c0fa45acacf4e4a8077e57cd4d561.1722951405.git.jani.nikula@intel.com>
In-Reply-To: <19eab020c57c0fa45acacf4e4a8077e57cd4d561.1722951405.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|SJ0PR11MB5938:EE_
x-ms-office365-filtering-correlation-id: 63d60f51-d0ee-4af5-0f52-08dcb64f6a88
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?X4AbNbe1HnV4lAH1sbCDYWt6BdZ847U++c7GwM/9G4d31aIcOYDv8PIys7wf?=
 =?us-ascii?Q?a8qNhrvbreiafUUlrixKEzlC//v+h4FEqKNgNNydiOt+Q282E0yLixDbGqKY?=
 =?us-ascii?Q?ylhMowN9kAGjDpLd3gr8MvbO4AcWdc6ql7lKk138x3pY+g0ETkR0CrjkLMzI?=
 =?us-ascii?Q?8SYomh144QNZV8XFqFIAtBqAmSDKcUnFy1hSp7lYs4dIAbPugoBZJ8wBuRuK?=
 =?us-ascii?Q?t3425IZOd7lsrY6+59pCrb8W/s7SkaqaiggO98avw6e8HphT99HtQLbfFPni?=
 =?us-ascii?Q?wfRscZuvDXHiYQXEvCwQeeSjvXTetSMrwcMTokqEq4UTCBbQSowWQiTg3Gnn?=
 =?us-ascii?Q?sE7USZKeL5TE+m/OBI9wCiZiEm7jnmaA5w7jTlMVLzAUfNXrOrEfOELyz2p6?=
 =?us-ascii?Q?V/ofGRqBs+FbqhlZfXPaKhp4lLgvYptFPyDbQzKiOa+/YLaqJ2DXpNBeKXWZ?=
 =?us-ascii?Q?KQu8trI/1WXTvOlaziu8BXhzcfWxfVgt1+eiw7XoDt/FQCSanm2tTV9vR0Jp?=
 =?us-ascii?Q?Rx6i5NkyQLM7v9D5JjZf2m3SkAzhLN1d3eEknj7TguDv5cFKHSDszDB06tWT?=
 =?us-ascii?Q?/FR5yeoT5+JsY6LPtHk2++0tYm699K11tBV0WeqMogOLGYdbaCZL+GiSlgQE?=
 =?us-ascii?Q?J42pgXkIg3QPoB3t2RWrJ/qgWQ3IAm9ekbJ27RpZQfGb4pUnRQioPZ8DDILn?=
 =?us-ascii?Q?2WuNg1bdHmvc2u1MZ4yRKX4NxTZmP7LtY1oaRUqBCO/uLQePE7ALsMdgXdt8?=
 =?us-ascii?Q?jJsgiiEzc57uc1LDHNE5pokngGDeZzQtOfHGKjpAaCNqffRufpSpVk90rJPL?=
 =?us-ascii?Q?hKr9aiMRHhoVU/JagdJKHtsSBz+h0wvLKoGqF2jCJm1BYHl1UuxPY0CRPEIB?=
 =?us-ascii?Q?GY1H0dTZsEqUjW7exIEbICr54l9qb3NfXhKp/sN5rEOOJcDWcwo/IUW3h6pB?=
 =?us-ascii?Q?tsVevKwKBbFidJ19FKvZ/KXdGzr1H5o2zL8Sy7Ii4L/pZRvJ767lKq6XvpZp?=
 =?us-ascii?Q?b58XbdLMKHRYuY3OaOGDZWsDSJH9nQozf7O4BgltqDHEoyTAmTarNmEzsvs3?=
 =?us-ascii?Q?N5Fb2AZV8oqHZV+D8QFGklsJymUGFwwLoieHryj1Eqe6EtchMu6F4LIHhgP/?=
 =?us-ascii?Q?pv5SFI1UysT71r3zYzSUNWVaiv6C7EVblLz7nEMS/yl5JuJz+50a/Lvb4Mdx?=
 =?us-ascii?Q?8zyuoj+7suw44M3z6sjkyAL7RuQnHGofZHVJuyMWI+sfhGvlzHnOmvuAaJHH?=
 =?us-ascii?Q?S9UCnmD85z4GYLZQPX8hJaLYythwzY0GjVKxa5yGLbSfq7M/lm78+x7tI94m?=
 =?us-ascii?Q?mv6+qKcdtxLj9jVQy0Y9jh2T/k9avSkTPL+/Zs8HuhR2Ugi/Clw2nDsAjlsa?=
 =?us-ascii?Q?LICPyD9hshXWdwlY+cqWZKRau7HAyA2HsUdXh87Cfk7LTMpxTA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?FFE2SmSvq4Kerm86rPWgaJuef04sNMI0/9Gt25BP5FBrRkcpbElNgQKgx+9O?=
 =?us-ascii?Q?LgYeZxdf4qX6Hy3TFrLudMKg1xBf5QK7qKSZ24bF2MFlLFUIXU2/sFBy6f/l?=
 =?us-ascii?Q?YsqoQHO/Azx4s7zDoKgnk/ReSIIUzQlqF3caRLaYs0NTanv4FpJXLzEk1Urr?=
 =?us-ascii?Q?r1YujRo8QCYsYNXWlBWkLhKaipV50HNStQ4XmSMPdG74BxSbXn1e94/UrZPG?=
 =?us-ascii?Q?l0a5V+F0kqMHWmU1EoVk3BAkeqZ2G+ofaqwAuU1luQcepiVqWiidbzmmidY0?=
 =?us-ascii?Q?p5m8G54UG+KHM2kL9sxGmxQUeLhQuMi8RA0Ozp0PH+mOgZc5GsmNKCQdec5V?=
 =?us-ascii?Q?UTbXYTVuxIvy879tDbFrzBE9+CKVX3Mii4CqpQ/L11gwYOh5P+EtIy+SqUEH?=
 =?us-ascii?Q?pcRxotVmpQhtT4CQplEyHIUO4JxUe9plZFubaBoCS3xdVkrU4iNMYOIq2iiD?=
 =?us-ascii?Q?5ceQpgFmJiCyArW2JvgUJUG5QscA8TdNtCKTOr7M3LRPeTHbBUO3q9E8TiPb?=
 =?us-ascii?Q?eIFl/jyRSQCSwd+86hHvtonVfA4kMzeGn3aTMeORQDZE/1bo+cqGhjhv/imt?=
 =?us-ascii?Q?gdRyRvZi5pb2IDzXrVJKmTi+fSaeI7ysF+hTSQ76ZAPsu5HE0Pw6LjmDSJmR?=
 =?us-ascii?Q?uohr4omyFkFcWNVtqYl0eBf4nTmBriYua7bGhI3z7bKkEEwYPzEejR9oRRno?=
 =?us-ascii?Q?3kryhGDxqHe2r5dtDUvyqAv0dRRLGKcCDw0ecN9DI2wiygzuCc8TNMGPuXMc?=
 =?us-ascii?Q?MybmSouquecNM2zzkwoWX7BO4WgqQqcroKnacgd7vnWQII3gEe/ZQp8PFHt8?=
 =?us-ascii?Q?UxCTBYwDwMVkAH/Ffv8ahUWMMacN2Z3e0fPLa8Io4Ef17YlARZL7Xp2awYEr?=
 =?us-ascii?Q?kb7lomij4K2PGNa8YP3V0s66I+wQDsvuskl7ejjiBfhPaohQkabwtge9aLsW?=
 =?us-ascii?Q?3KoetoTqrgu7+WbKGcS52Ju7k+IwM9bXUYhEKK6oRWMNgmhJ/cGn0E8JxF+m?=
 =?us-ascii?Q?Xqltd/I0VXM5O/UBPDYa8JVg1vANnXIQr1Fgw3cp3d21KTaPJBaZLm4aENMd?=
 =?us-ascii?Q?Ugexl12kdOOdeoLNQGEaqAPxqBbo/OuDE/xlZ1PHxtTYnX8XuabBHvW0dUB9?=
 =?us-ascii?Q?LS/HUP/P4t1vzABXDxS7E8//Ynl1XWlBCIqc/psos5K7Nh8TFN/+LP5jCdcM?=
 =?us-ascii?Q?nb+0E34sP9irP3nCYfLdwe0TM9QPRoNiZxSzibSMFS/1YPNWPSLQ4gaQ6Cz1?=
 =?us-ascii?Q?1QShW7w01dIbuiF2RYvQFOjdOWvfjl1Xhh1/jeerEfFtLTxwHf0ixfrR6X7n?=
 =?us-ascii?Q?0OJTIWGMYTP9wSALfX4i9ruf5HzaksFos8u7x+tzvzB0J2yfu1gRYuNzDw4b?=
 =?us-ascii?Q?3hske8LCzR7/jAZFkOupZQWK1PwI1YESP7EanqUykyyCKUJ7GrWDzE7sXbNc?=
 =?us-ascii?Q?UOa8XAA28coGBhoJXpUkXuKNg/TAW48iIg+YiP72sIsfl+nP5KdN3UGw/JIt?=
 =?us-ascii?Q?pNeUB5IRPxlAt7jv42vfEs9y9FwLzL8qiIl1ClnBld70lltRZ465X/6QnxPP?=
 =?us-ascii?Q?R/o6knjQ/4nabfLyK9lE/tB69hPENWUO9rpO4bjB?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 63d60f51-d0ee-4af5-0f52-08dcb64f6a88
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Aug 2024 19:38:58.5353 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5yZqGHIKtBuPj/z0hBUml5r/G3o+5jehwFbpBs3uOGIZEkBbZFSzOHUfjFot3Y1vFTFcj3FkBsnEVbwRAxPEXIN26u+AQ9CXQF408zDRGCM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5938
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

-----Original Message-----
From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Jani=
 Nikula
Sent: Tuesday, August 6, 2024 6:39 AM
To: intel-gfx@lists.freedesktop.org
Cc: Nikula, Jani <jani.nikula@intel.com>
Subject: [PATCH 2/3] drm/i915: remove i915_report_error()
>=20
> i915_report_error() has only two users, both in driver probe. I doubt
> these cases are worth having a dedicated wrapper to also print bug
> reporting info. Just switch them to regular drm_err() and remove the
> wrapper.

The commit message might be better if worded as such:

"""
i915_report_error presently acts as a wrapper for __i915_printk.
In practice, it would be better to use drm level error reporting
wherever possible, so replace all uses of i915_report_error with
the equivalent drm_err call.  Doing so leaves i915_report_error
with no users, so remove it.
"""

With this change:
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt

>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_driver.c | 8 ++++----
>  drivers/gpu/drm/i915/i915_utils.h  | 3 ---
>  2 files changed, 4 insertions(+), 7 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i9=
15_driver.c
> index fb8e9c2fcea5..94dca1d8bb15 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -451,8 +451,8 @@ static int i915_driver_hw_probe(struct drm_i915_priva=
te *dev_priv)
>  	if (HAS_PPGTT(dev_priv)) {
>  		if (intel_vgpu_active(dev_priv) &&
>  		    !intel_vgpu_has_full_ppgtt(dev_priv)) {
> -			i915_report_error(dev_priv,
> -					  "incompatible vGPU found, support for isolated ppGTT required\n")=
;
> +			drm_err(&dev_priv->drm,
> +				"incompatible vGPU found, support for isolated ppGTT required\n");
>  			return -ENXIO;
>  		}
>  	}
> @@ -465,8 +465,8 @@ static int i915_driver_hw_probe(struct drm_i915_priva=
te *dev_priv)
>  		 */
>  		if (intel_vgpu_active(dev_priv) &&
>  		    !intel_vgpu_has_hwsp_emulation(dev_priv)) {
> -			i915_report_error(dev_priv,
> -					  "old vGPU host found, support for HWSP emulation required\n");
> +			drm_err(&dev_priv->drm,
> +				"old vGPU host found, support for HWSP emulation required\n");
>  			return -ENXIO;
>  		}
>  	}
> diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i91=
5_utils.h
> index 06ec6ceb61d5..feb078ae246f 100644
> --- a/drivers/gpu/drm/i915/i915_utils.h
> +++ b/drivers/gpu/drm/i915/i915_utils.h
> @@ -49,9 +49,6 @@ void __printf(3, 4)
>  __i915_printk(struct drm_i915_private *dev_priv, const char *level,
>  	      const char *fmt, ...);
> =20
> -#define i915_report_error(dev_priv, fmt, ...)				   \
> -	__i915_printk(dev_priv, KERN_ERR, fmt, ##__VA_ARGS__)
> -
>  #if IS_ENABLED(CONFIG_DRM_I915_DEBUG)
> =20
>  int __i915_inject_probe_error(struct drm_i915_private *i915, int err,
> --=20
> 2.39.2
>=20
>=20
