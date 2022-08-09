Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5981658DDE5
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Aug 2022 20:07:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A646A8E490;
	Tue,  9 Aug 2022 18:07:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71F438EFC3
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Aug 2022 18:06:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660068389; x=1691604389;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/CY0UuDUVAhZGCEyjHBNPo7P/fHLvzuLq6MwBLSLf20=;
 b=B8OmZ+cYNQ4n/DX4foU8u0KQwlA51nOxtEXDU50O3ntgsPieH8uEaT9D
 8gH0hZrcR117eEDkYAEvUaWyiLpDaWYugtKoAjQOSJl8CMGRkndYtLpQA
 ++5oM74QAZS/XbriKhdgRTnrsuEFZ6lX0bi7e5/lKxRIdWHWrzcak1mPP
 uQXjHAi/CSLw9xgx1pO93Qa/9th1YMxZOGumanlnPCL4sqwY7fORqxW//
 7ZCj5O6Hka6OBpq/u12wW6RqObIq5ENotuZ3EZy3Yrdvxnuvm8wZfHy/1
 MSQ7tI9lzW7i0on3UOZ4uty66JplUa7ugcH2O8mLNYrFRDFrgf2yB0pFi g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10434"; a="288466221"
X-IronPort-AV: E=Sophos;i="5.93,225,1654585200"; d="scan'208";a="288466221"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2022 11:06:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,225,1654585200"; d="scan'208";a="608296931"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga007.fm.intel.com with ESMTP; 09 Aug 2022 11:06:25 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 9 Aug 2022 11:06:25 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 9 Aug 2022 11:06:25 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 9 Aug 2022 11:06:25 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.106)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 9 Aug 2022 11:06:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VxIMXcVFDbJxgUBmZFLHm2b6giCGVbQKai9O5Jtur5a83hsi4c6W30wbO7/srRh3/pKRyQJXuAvLed132uUeoX3Nr1ibTGrIOBoqWa1MZUfIWEJsEvPBabR6j38/RjxYPi5Lw3fEEQhc+m6Zs4BVWkgN8VAmNSkikm07XBc+cp954Kg8+KKMuKgNLhflozRXB7cWVyLsSxQOK/B5rVtXUVZye9Uax0OhCTcXjqiZdOvTOyxGmCiHb7yB53QG1Eli9/TdY5FOm4BVscs2SoihtRwPm/A24yvBjEGpYQZZEZFNFCWpGjbJKHe//rnC1JRw8SsUarGJ972XYBrZBaeNag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9CX54n2AEN7c2MsK+2ZCQ/rUdQzFz75Q33dUZD8+Jb8=;
 b=VhNoafxLjD18n3XxLHOHrCf9VtOWoA5Ix3g4pVzJ7qM1iIIO+R6kfpQXosdcEd+zmkciRV7vl+WFs0Qj1VeTSpOingMSNP5P3PXhDH3+ZNnrfaqD4hD220voeikUjAlPYfCDApK2N5XwnlWOUr+KixRuVblo6I4BAChtKh6Cvo/aUvKWrqEuj7EX3yGM2fxg2LKav6MPogiX+bNgZw74DmQCOiLpl+a84Pgb0lmBe96UlMpufhGj7Cq5HSmGZVL5Cmk2qDsZcmUSceZOUykbskeaxqh3nMmCBEn8ZE4oCRx3evmx2HFgfoubD51vpnRfXNZV32IyyP+otrVGmmdFyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 (2603:10b6:910:1e::13) by DM8PR11MB5750.namprd11.prod.outlook.com
 (2603:10b6:8:11::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.15; Tue, 9 Aug
 2022 18:06:23 +0000
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::91b:c296:9224:c6e7]) by CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::91b:c296:9224:c6e7%12]) with mapi id 15.20.5504.020; Tue, 9 Aug 2022
 18:06:23 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>, "Sripada, Radhakrishna"
 <radhakrishna.sripada@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 21/23] drm/i915/dmc: MTL DMC debugfs entries
Thread-Index: AQHYoiI9hCJ+dPH7bEK8s6L565EYrK2b9WIAgAr6+1A=
Date: Tue, 9 Aug 2022 18:06:23 +0000
Message-ID: <CY4PR1101MB2166FA96DD1AA70BBE0A970AF8629@CY4PR1101MB2166.namprd11.prod.outlook.com>
References: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
 <20220728013420.3750388-22-radhakrishna.sripada@intel.com>
 <YulrZnLEJJbJlSmr@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <YulrZnLEJJbJlSmr@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 37a56f50-17a9-47c6-5a20-08da7a31dea7
x-ms-traffictypediagnostic: DM8PR11MB5750:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9ZI0g6O2ofA6F6DxWinqAxkk25zF6O9r6J/hXoNZMQrJKu2EQqV6ta/ThGgN8Zvn6f4h5CUbKGuP64OZwnzv09BXwKQBLcXrJ7gU2zesQikCTOoEO0okgaiB94Wf71Queod3sa2xUglBkVTa3dn6baBxWNUHOyvDABvr1UfAw3Bx2zn+LVZQQOU9KJer12gIvW9IU/bZxgvI5F0Pu85HyXf74wFalFYu/LysZdDzwJxpMpu7r0RHkoNJZvzO8R7nZdeWERvfqkkMnyLFDy2wyB+2b0nMlhI0B/BZEll5/JDOLgUCvCrf0T0edHuttUOEv2WhKJ+MgeUNeHX5IRRKpT2CMd+0+gC08ScABKC0eCSvvF+Jnj+aziafL7H18jkBU3XZZRM5bweB1JGQNJiRAND/LDLgJ1Qnq2cz6TzcAbstIDvsZW0xCq0p4t4mlGAM20xaOwo+yTdBF2wcXEyDjljQ1xWgYBftddsUYhcyxmM4mfMYUq57NVTtU7eyMzNFNkE+oyh4yLKLiBJ2UBb8NM6/cb8zHuV6Ect1knIwUFH+7VghEu4SVRVEk0M4dpgEYWZ3KoH5LRRnZ3KjB7pPaL35sKtllEDDqzFtdC06xWvt9U1KS9/dkeElQcbHtpsv2hGYKN9zBLu/Qbb0iso+vY8cCSpK+d7A5P3goj6m8iEnOTTo8Wc6psEoif8iIf/Hq6OYU7xUdmNNfdSsCLdQB1dcBeHOPHM03FuS4HTkFqoyPGaCQ+vuIsjvh6pv1MOeC6Ie/eHaFrOVtdLksSMBHfTP/ICugX8AYmTlP5y0s8+tkIK3IeJodpOXzAiFqR/U
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR1101MB2166.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(376002)(366004)(396003)(136003)(39860400002)(9686003)(53546011)(26005)(38070700005)(478600001)(5660300002)(33656002)(41300700001)(82960400001)(38100700002)(6506007)(2906002)(7696005)(8936002)(122000001)(4326008)(64756008)(66446008)(66476007)(76116006)(66946007)(66556008)(52536014)(8676002)(83380400001)(86362001)(110136005)(6636002)(316002)(71200400001)(186003)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1+omYf13PtEqnpo6CjQa6U2ZIQ44SFfDkpU+nNIU7nUkXIHlVhrdR/RBgA2a?=
 =?us-ascii?Q?LUp+e1S9iMqCMbNzx25VamP6zRtxfVJ2siIpKf4n9NcPhGEB//NXhKBSqNuB?=
 =?us-ascii?Q?0ocHfXXNTOglGvxvbU5n1stLlAIR3kewqHrvnFhOx1yzIoV/SolM7tVxWzKy?=
 =?us-ascii?Q?NCQh/AnPlxpkw8XE1yB8ncMjDI6mdW0hbolGJEsQ+Bun8tVUlfM9DqJyVZLE?=
 =?us-ascii?Q?mcucdFEuMXPJs3erl42spuNKmP960JT9jMj2KCqbtqFC7wUH3QFbG7ATxr2i?=
 =?us-ascii?Q?/TgoecQ28csFwooAZO+YB780SJvTMPZB7oz599ZOjh5poKajD/j6zjaRCaFL?=
 =?us-ascii?Q?ZGnyOG3IjGfSzpH3AqU+hpBx/rwbs87VjePPkQNHEyiRCm6H3ZxtM2XOzNTS?=
 =?us-ascii?Q?bPfmAkaUXbTCPlB/HBZ6WrDJbFDGi7oIMd7j8mB3nEeMsGOI9DUfZYuThV8W?=
 =?us-ascii?Q?HbjuVnsSwU+BVt0rhRNwPs1gTAJORDjTgiXpNuKBdqtfDJikHKQJccnhkgNN?=
 =?us-ascii?Q?iKw6OB5d6huwmH8i4Xdbfgzcx1HYq7GmD9aVL9Km2EWaU3ViEYfvDd7rqWNR?=
 =?us-ascii?Q?c0JyVZHSy6SUIeyIq6fXTC+yzXx+C85A9ZkAq/x+1ji2JWQJ1cUoWCgKprWS?=
 =?us-ascii?Q?ornu9gSIESjl3JsQsybOKAR2CFxOX0w92v851Xc7aIQPOnQISLuJ8/rvqobL?=
 =?us-ascii?Q?ZADkMcUBXgbDRPZzdUgZoe0ZgdGRmtKcbQCNp2t5kNTlP7vFUVgN2p9JiFjS?=
 =?us-ascii?Q?G03rB+QbE2LbM2YRnncgh02WuqcR5eRkQuuvzkFVXZ5UUlazOIxwYzdDMlqu?=
 =?us-ascii?Q?JOxvyGRbYxpy58TFBqWJ+zWeysZjlwm2Dbc/rocv6PEf8RagbbDqdGQJ8Ndz?=
 =?us-ascii?Q?r+rO3Hz5OHssCYYp2oh3+SSbEH1S8RVEDVRVruvwqfOxCT4hVZSB5+myAKmu?=
 =?us-ascii?Q?sk9UXwicE6lKoBqVWbJONiCKAIMMF9iWo4d6dtpUSj8oLze0dNZR4jUU9EV9?=
 =?us-ascii?Q?ZXYy8IwBpNMHMN2Wbw+1vbibxL4q+lSS5PpJKDXTaGMIGAMgMzUZMVh5jqUy?=
 =?us-ascii?Q?uQixv2OaJRrEBmTl+xeL5xuW1zCaBlxFmbkW2uCu5004zh9q+aanUO5vE+kr?=
 =?us-ascii?Q?XKTVr/gGU2GKUPKYaZU5z/9nLgEILsw4mYtvri05P2/9JXi8z9JnvrZeLxFV?=
 =?us-ascii?Q?148musg/et3u7gjpnasZaYFu6El3g44C+Prpfd559DdRquqDf3tK36oHUeYQ?=
 =?us-ascii?Q?OUF6AmAa57e/3/dNbNWu2Eti0N25mz5Um6Y+llYpWoopZFAkeggdQ7c8kWyQ?=
 =?us-ascii?Q?o/ynE7mUlKF7U1YKhG4Y2UelbwPZKmEBznGorq+5aVSZwii74/DFoi170dUc?=
 =?us-ascii?Q?NcYs0h+0q7MD5ME8ri8aylKACT3txeav0ZkRn2QeQtWm7DcPgLnshss96MXK?=
 =?us-ascii?Q?peclzdCY+snTCGQioys51nmjya7hcnyxg2HkLXB1YqJ2NqbXD6HdYASlX59d?=
 =?us-ascii?Q?FeOYBxHXrFqW0omC/Ay08rFK0dkLTsWJU6ig3kyUUpmrsxRNTROpNsvyW3d6?=
 =?us-ascii?Q?f7U9aGEhKCCtQmRkzoBGwisJk27zgWM0hAVM1gYQvKBxW11weJMXJldyMzZl?=
 =?us-ascii?Q?Ew=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR1101MB2166.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 37a56f50-17a9-47c6-5a20-08da7a31dea7
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Aug 2022 18:06:23.3842 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DdUkvEizH1Y3N5+Oo455dPYO2kDCE4NUFvyaOjeSU3RvKznmkShSZPO4+hqFUiQ0E+VAIIV5NJ97HSEHsG07Pa5LQ+UNmB0TlrL11bTBqmI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5750
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 21/23] drm/i915/dmc: MTL DMC debugfs entries
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ma=
tt
> Roper
> Sent: Tuesday, August 2, 2022 11:23 AM
> To: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH 21/23] drm/i915/dmc: MTL DMC debugfs
> entries
>=20
> On Wed, Jul 27, 2022 at 06:34:18PM -0700, Radhakrishna Sripada wrote:
> > From: Anusha Srivatsa <anusha.srivatsa@intel.com>
> >
> > MTL needs both Pipe A and Pipe B DMC to be loaded along with Main DMC.
> > Patch also adds
>=20
> That's true, but it's unrelated to this patch.  intel_dmc_load_program()
> always loads all of the pipe firmwares (including pipe C and pipe D) assu=
ming
> it found them in the firmware file.
>=20
> > DMC debug register for MTL.
> >
> > BSpec: 49788
> > Cc: Matt Roper <matthew.d.roper@intel.com>
> > Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dmc.c | 8 ++++----
> >  1 file changed, 4 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
> > b/drivers/gpu/drm/i915/display/intel_dmc.c
> > index 9c4f442fa407..2fabb2760474 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> > @@ -1005,7 +1005,7 @@ static int intel_dmc_debugfs_status_show(struct
> seq_file *m, void *unused)
> >  	seq_printf(m, "Pipe A fw loaded: %s\n",
> >  		   str_yes_no(dmc->dmc_info[DMC_FW_PIPEA].payload));
> >  	seq_printf(m, "Pipe B fw support: %s\n",
> > -		   str_yes_no(IS_ALDERLAKE_P(i915)));
> > +		   str_yes_no(DISPLAY_VER(i915) >=3D 13));
>=20
> What is this debugfs trying to tell us?  Pipe DMC fw for all four pipes h=
as
> been supported since TGL.  So the output here is misleading (and incomple=
te
> since it doesn't include C/D).
>=20
> The thing that changed in DG2 was that we were required to upload the pip=
e
> A firmware along with the main firmware (other pipes optional).
> The thing that further changed in ADL-P was that we were required to uplo=
ad
> *both* pipe A and pipe B along with the main firmware (other two pipes st=
ill
> optional).
>=20
> Even if the output here was trying to indicate which pipe firmware(s) nee=
d to
> be uploaded at the same time as the main firmware (rather than being
> uploaded later), the change here wouldn't be correct since as noted above=
,
> DG2 (which has display version 13) only required pipe A and not B.
>=20
> I think we probably need to decide what the purpose of this debugfs is
> supposed to be and then rework it accordingly.
>=20

IMO the debugfs should give a gist of the different firmwares that was load=
ed and which ones the platform actually needs. At this point the driver loa=
ds all available firmwares even if the platform doesn't need them. Debugfs =
should clearly state wat Is needed and if that is loaded or not.

Something like:
Pipe A loaded: yes/no
Pipe B loaded: yes/no
And so on.....
As well as:
Pipe A needed: yes/no
Pipe B needed: yes/no

Does this sound like the right way forward?

Anusha
> Matt
>=20
> >  	seq_printf(m, "Pipe B fw loaded: %s\n",
> >  		   str_yes_no(dmc->dmc_info[DMC_FW_PIPEB].payload));
> >
> > @@ -1029,9 +1029,9 @@ static int intel_dmc_debugfs_status_show(struct
> seq_file *m, void *unused)
> >  		 * reg for DC3CO debugging and validation,
> >  		 * but TGL DMC f/w is using DMC_DEBUG3 reg for DC3CO
> counter.
> >  		 */
> > -		seq_printf(m, "DC3CO count: %d\n",
> > -			   intel_de_read(i915, IS_DGFX(i915) ?
> > -					 DG1_DMC_DEBUG3 :
> TGL_DMC_DEBUG3));
> > +		seq_printf(m, "DC3CO count: %d\n", intel_de_read(i915,
> > +			   (IS_DGFX(i915) || DISPLAY_VER(i915) >=3D 14) ?
> > +			    DG1_DMC_DEBUG3 : TGL_DMC_DEBUG3));
> >  	} else {
> >  		dc5_reg =3D IS_BROXTON(i915) ? BXT_DMC_DC3_DC5_COUNT :
> >  			SKL_DMC_DC3_DC5_COUNT;
> > --
> > 2.25.1
> >
>=20
> --
> Matt Roper
> Graphics Software Engineer
> VTT-OSGC Platform Enablement
> Intel Corporation
