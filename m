Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6710B803629
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Dec 2023 15:14:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B714610E1DF;
	Mon,  4 Dec 2023 14:14:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4615910E2F9
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Dec 2023 14:14:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701699248; x=1733235248;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=yc9rbgJrKGKAua33QbSLtwMf5SNJoTT7RGB5ptmLYUM=;
 b=WlDhQwMB2P08V16DsxFF8tuqzaDBTgrpXU9Hzign0VBiA6Y0ZJ3YoqXq
 CJ5w9K9/8lSrRBDdsA5oX5H+SZfd+IjcGlg60QSz2Ys4aGfbbplIumDXd
 tdct2PIgm/KdZPjamCfz8berXnYmGqbNfuBpgN3ckSrMUdN2RMcbZv83y
 ozWXdFwln8pM7/92FQNfn1evROvH/m23q/OKTFPIA99yB4h8FvMMFHLhy
 NuiosqelmW/MuLAS5ZELhWz6YFaN1dVd1Uf7H2pRCLpSyYILmkHd7uzgT
 62pAkGgwhQctm4fZfO+UvVr8ezd6m0e1lktmJ1QIYzJDLtFMgKGZ7YUSL g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="390896521"
X-IronPort-AV: E=Sophos;i="6.04,249,1695711600"; d="scan'208";a="390896521"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2023 06:14:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="1017865855"
X-IronPort-AV: E=Sophos;i="6.04,249,1695711600"; d="scan'208";a="1017865855"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Dec 2023 06:14:00 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 4 Dec 2023 06:14:00 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 4 Dec 2023 06:13:59 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Mon, 4 Dec 2023 06:13:59 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 4 Dec 2023 06:13:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kGoOZOUu7DJuOAywmt36k0+qB7TmiCXLPkh1N3JfDO2KGumsgDADn2ntr63wgz2mmQtI9WiZpgnA6Ac4hMAw9mDgAbkrgT8eU337t4CVhYrn6qEn+TmiTSo5ADy5V8Z81/6wCAUFHt06Sc/US2W8xMXspLj2Z3+Fj/1pvs2np3p2KcKoURaFDb/3TAjVqQmVggEAUyVB8hO3dQnt7xvkyCaqEyA6kHxhbNH0zu3ZcIOFzZ5QO0geMUUv+uHpLPcesz1OoBX2k2NxeNtV7PYxv2zwIpb/D+HBtHuZQlxUyosgfsPnkM0aD3pYa8h8SrtXtHGTu/VdMHi+p33Qg+1+Bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tPttNj4KClPLXbK18Qz+6AAVsgesVDeQnrMdPfbLKAs=;
 b=kZotTvGW2BfheBEabG/hsFiUec3OGIUMTnyyBdj9nu0HSlFpGqQNfJAgEu6vH0jG8Q9b42ld1fK16ugJglLcyOGFhfqsOH3AABKZo7pmqSBb5hBdEhtdt7aKP95SmAIZYtG0gmhgYh58OTARq/JWJSIHPEYCDYSml5uBHOp6/MKXWOrAvfd4VU0uW/LHpTXRvCh+Dy5DYRP+TviQcjwqDvTV270nszDwuedP+BfzcIHRB6lFoyvacojgm4amIvn0O4eYDoSuzAnIJwYkvcLwzFrvSks3feScRSkUBd4yRUa5zXjTk0HexQ/G7tcGuEY+DYK/cp9wJc5V1FlIapf2XA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by DS0PR11MB7288.namprd11.prod.outlook.com (2603:10b6:8:13b::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.33; Mon, 4 Dec
 2023 14:13:56 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::3964:7725:b677:28c6]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::3964:7725:b677:28c6%7]) with mapi id 15.20.7046.033; Mon, 4 Dec 2023
 14:13:56 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <170169866064.4486.2471074166550309330@gjsousa-mobl2>
References: <20231124205522.57696-2-gustavo.sousa@intel.com>
 <20231127162146.GG5757@mdroper-desk1.amr.corp.intel.com>
 <ZWWoOL3WS5wTGiM2@intel.com> <ZWW4L7POCQLJi6aJ@intel.com>
 <20231201230748.GU5757@mdroper-desk1.amr.corp.intel.com>
 <170169866064.4486.2471074166550309330@gjsousa-mobl2>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, Ville =?utf-8?b?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
Date: Mon, 4 Dec 2023 11:13:52 -0300
Message-ID: <170169923258.4486.10623068274437801256@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR13CA0033.namprd13.prod.outlook.com
 (2603:10b6:a03:2c2::8) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|DS0PR11MB7288:EE_
X-MS-Office365-Filtering-Correlation-Id: 12219782-e6b0-4f59-8f12-08dbf4d340c1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: zUz2i9/TznjNj0cw0rWfZZo50tqknOyetgZf1jUVGBWuQV1ruHWWVDreDSYHUc7ydtKCVmNt/6TNk9FQnrypzSwv/UY3gyiIhB6LrphsZzXwWqUrporZiJ5G4BW6usR6ihXkbdYPvLb6pCDhqppphpYJd1+xUbGS1fXB+vg3kvZymVYny+ZWUoxgA23Qmio0Zt9rxLmf8ufeIEPyi0C/KG5SfcX05zbixqeZyEpwejUihkKorNVirf2vriygFpaZ8QkJbdhZ8iw1lwKCzWFsDpiRFniMLBylSC5mIftycLNJ0J9QLOXs8uhqNKBBqAKEKwtSwIzcfXFi1Q01G4UPxl9Bog30iUe8kWDtUWbomuFhMv0EFNy9DVTO9gfNsuGqWO6xWa1EmZzrgm5u37NctJkrcyUE2BLlR+TtOmaoL1DhxbEw0dKXpNuMqxMBXLkos35R2A44bEqZ+BPm2BGdhYGliWD97suCKodCQIk0/rj0/Kx9rl3p03Z+rvxpxwLD596OzS8SRbljLA0v+PeELTDLeNWNOqzma+j2CBNShvquU/D2iRxyKljiZbsrayFE
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(346002)(376002)(39860400002)(396003)(136003)(366004)(230922051799003)(1800799012)(64100799003)(451199024)(186009)(26005)(478600001)(6486002)(83380400001)(6666004)(6512007)(9686003)(6506007)(66574015)(82960400001)(316002)(110136005)(66476007)(66946007)(66556008)(38100700002)(5660300002)(4326008)(86362001)(2906002)(8936002)(8676002)(44832011)(41300700001)(33716001)(30864003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TlVZTDdQUVNqYkxQblpmQ1VnaWtmendwTlJMTituU1M0Um1vcG15SVlOY0RL?=
 =?utf-8?B?YmZRRzZWaUpTYWJQaXhMcWVSRFIwb21tZ2lZVURKcCtrQ0F1SWxtMVgzSzZC?=
 =?utf-8?B?VGRCd0dsS3hxVHl2cVBIL3BIL2FwQUY5SVNOQjh4UG9DR0owcVNQdC93MFNq?=
 =?utf-8?B?MElXRDd5cTJKUk9MenRycmhJSThzMkttMVRwNlFYS3pqb1ZhNWMycXdGNFZN?=
 =?utf-8?B?RGRiWWxuVnAybTh0cVdialBlQWg2Yk50eGNDRFhRZFBPQ01YNDBrRnZFKzEr?=
 =?utf-8?B?Y3NoR2pkV3dUZXF3dFYwdnNUakVBdDRDU0lXMUh1R0VNQzc0T0JvTWpXY1VI?=
 =?utf-8?B?UE9HV3drMm01TlJxek8rNDhpZC9yK3lFbGQ0M0kwNWtoZmh5bDVZNE16TXN2?=
 =?utf-8?B?NlFtSXJMck5YcytKMXBpcE1FeUU3UzBUcXA0TjNnVFd3V25sUU1McklOeE5V?=
 =?utf-8?B?bFAwbnAzekd5Z2lIYXpoYjBMdmtJRUdCNS9pTmZZNHpmMmd5TUtMMmVBdTFt?=
 =?utf-8?B?akRyeFJNMElXeFJLMmJzYkRic2oyUFkvM0FkTGtCckRTL244UjFHSFArazVh?=
 =?utf-8?B?UWxxSVN6cGp3RDN4d29GZDNyaDdZRTk4QkFrTzF3ODdxOTY3NjRpRC94WnFq?=
 =?utf-8?B?ZEN0RzBkRllXOEsya2Y4WUd1aTVTbUhkSTFqbWU1djR4Y3NxbmZmK3h0OWtT?=
 =?utf-8?B?MTZiNXBmdm4xV3hPNVlDR1JkN2ZzVXBOVXhQUXY2R0xWTEc5M1ZyUVBHREZD?=
 =?utf-8?B?UEhoL05WOHN3Y1BxSTZRczVrQWp1TjZCQUEzTUc4MzJUUHhmdHNMdjlwTEVv?=
 =?utf-8?B?ZzFaaE1KMTJMZS9NUkJQdUhTRnIxYWN1ZGJHL0dreGtIbSt4Qm5KMHJCZ0VD?=
 =?utf-8?B?dXlNM01hSWYzOEZvYU12bHdBQ2Z0blFhVncxOFY4eit2cmZ6alZ0UmZVZlRH?=
 =?utf-8?B?NGxGWFdNUGFjVldYMjV2bUw3L3EwVEFNbGxVM0NXa2xURnpiZkRRUEJwbG1w?=
 =?utf-8?B?WTc3bk5OL2ZEcGVEOXFYcUJLZW1ZbGpDVzUySXpTa0MwRXJVUHY2emJZOEN1?=
 =?utf-8?B?cWJQdGRMZjRzaGRFd25WZ2xVMHBjaXMzcER0Tkc1Ny9uRW9NWDVKYXVnekFI?=
 =?utf-8?B?NCtPNlJ1OUwzOGNpR2ZRdW1HOUU4YnQ3NEFJZ1RvMVVjaGVTUzhmQ1lJZzI0?=
 =?utf-8?B?MFNOcHQ4Wm9sbWZaMjB1Sk9xeGpzbFdEU3ovaTAxYzdSd2diTWFiZE5KanMw?=
 =?utf-8?B?TDl4N1k4d3lwalpLUHpHbXMrN3RCTmRnTFcwTVdnc1hyb1ZyKzRYdmVneGR2?=
 =?utf-8?B?NDdkVU5WSmFMbzZjd2VsRzBwL2VZSXpxZEtJcTRjcGoxQS9GczBwUWpKN2VX?=
 =?utf-8?B?OHFmbFFYa2ZyVnZoWEY1OWJ4c1ZNWm5DRGsyaVd0eXU5cnhFOXYrVWpNZHRD?=
 =?utf-8?B?Q09rd29BS0x5NlExSmx6Y3dlT1RwNUYvYnFiRkE5R3JiRjdhb2R3ZnhaZ2I3?=
 =?utf-8?B?bEdQRXFJK2F4YUxoSERvMzNCRG9EdVdNQWg5elEvOHQ1OElkQlFHcjhyY1c2?=
 =?utf-8?B?cnhKMHFLWDVXZncyaDlWVWUxOEFVTU5PY2IwdldSdk45WGZDMmVLZjlTNUhw?=
 =?utf-8?B?VXhvcjgrZGNYVmhwaTA0ME9iYktOdUdxdjhNaXk0M1QxYzl4emdKN1diZytN?=
 =?utf-8?B?Z0JGOG15SVN5ZDlweUMvRXFremJvS1hkeC8yMjJyZHJsckQ4VmJ5RGJUZGlz?=
 =?utf-8?B?a05ZbUM5c0lOQVcreVJzTGI0dUg2UkVudnhqdkd4Ym1EYmpCS25LUFovZjkx?=
 =?utf-8?B?WXAycHVjYlNPY1p6elc5SnArc3VzaTgzRGc5UXBteHdJdTRHcCtUNnM1ZUlO?=
 =?utf-8?B?bWdaNlU2MkJwbWRuSFNOS2IrSndKWkhBZ2VZWi9GN2dyYTczTE80SW1yV202?=
 =?utf-8?B?NlRLSzhIcDZGWXlMRk5ITTNyZnRqVG5LTGNBQ0J5RFlXTXR2NWthVkZPZmNT?=
 =?utf-8?B?bkpMOUlsMVJRb1ZOL0hCMytpdjRwWVFpZDU0c3BMYlExQnI2a3BIcUx6MTNt?=
 =?utf-8?B?WTA3K0tPZDlVMjBGdmRZbm93R1BubmFYRVNrWVUrbkZidWkrRFNlQ2szQ2Za?=
 =?utf-8?B?N2hHQUxhWXlwV1hxdC93em82dlU0YUhHY2lkUHpGMSs1ME1Jc0Q3NkxGbUFI?=
 =?utf-8?B?ZlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 12219782-e6b0-4f59-8f12-08dbf4d340c1
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Dec 2023 14:13:56.6519 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IvU3/60ZYr7BfhZ+sMyY2tnCxij6k3mMgv+bGVsFfeBHYzaZ26pPdYXE/p//31tWxWs90+LS01Bfs6OIMJoV5w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7288
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/cdclk: Remove divider field from
 tables
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Gustavo Sousa (2023-12-04 11:04:20-03:00)
>Quoting Matt Roper (2023-12-01 20:07:48-03:00)
>>On Tue, Nov 28, 2023 at 11:51:43AM +0200, Ville Syrj=C3=A4l=C3=A4 wrote:
>>> On Tue, Nov 28, 2023 at 10:43:36AM +0200, Ville Syrj=C3=A4l=C3=A4 wrote=
:
>>> > On Mon, Nov 27, 2023 at 08:21:46AM -0800, Matt Roper wrote:
>>> > > On Fri, Nov 24, 2023 at 05:55:23PM -0300, Gustavo Sousa wrote:
>>> > > > The cdclk tables were introduced with commit 736da8112fee ("drm/i=
915:
>>> > > > Use literal representation of cdclk tables"). It has been almost =
4 years
>>> > > > and the divider field was not really used yet. Let's remove it.
>>> > >=20
>>> > > I think we need to go the other way and actually start using it ins=
tead
>>> > > of (incorrectly) trying to re-derive it from cdclk->vco.  The logic=
 the
>>> > > driver is using today doesn't account for the potential use of
>>> > > squashing, which means we program the wrong divider value into CDCL=
K_CTL
>>> > > in some cases.  I pointed that out during the LNL code reviews a co=
uple
>>> > > months ago, and I believe Stan is working on fixing that.
>>> >=20
>>> > The code should be correct as is, but it does assume that the cd2x
>>> > divider is 2 when squashing is used. If that no longer holds then we
>>> > have to change something.
>>>=20
>>> Something like this should be sufficient to eliminate that
>>> assumption.
>>>=20
>>> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/d=
rm/i915/display/intel_cdclk.c
>>> index 8bb6bab7c8cd..58567d42e725 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>>> @@ -1897,10 +1897,7 @@ static void _bxt_set_cdclk(struct drm_i915_priva=
te *dev_priv,
>>> =20
>>>          waveform =3D cdclk_squash_waveform(dev_priv, cdclk);
>>> =20
>>> -        if (waveform)
>>> -                clock =3D vco / 2;

Ah, one thing I did not mention in my previous message is that, this
assignment here means that we were always assuming that the divisor was
always 1:

    x' =3D vco / 2

, meaning that bxt_cdclk_cd2x_div_sel() would do:

    y' =3D vco / x' / 2  =3D 1

--
Gustavo Sousa

>>> -        else
>>> -                clock =3D cdclk;
>>> +        clock =3D DIV_ROUND_CLOSEST(cdclk * 16, cdclk_squash_divider(w=
aveform));
>>> =20
>>
>>I haven't had time to come back and revisit this (or check your new
>>series yet), but when I was reviewing the cdclk stuff a couple months
>>ago, my concern was around bxt_cdclk_cd2x_div_sel() which is deriving
>>the CD2X divider from the vco and cdclk value.  On a platform like DG2,
>>we use squashing instead of changes to PLL ratio to hit different cdclk
>>values, so the calculation there doesn't seem valid anymore.  Am I
>>overlooking something?
>
>I looked at Ville's patches and they seem correct to me - althought I'm
>not that experienced and might be missing something as well... Here goes
>my rationale:
>
>Looking at how cdclk works with our hardware, I would say that the
>cdclock is defined by:
>
>    cdclk =3D vco / div / sq_div / 2
>
>, with: vco being the output of the CD2X PLL; "div", the CD2X divider;
>"sq_div", the divider that is derived from the squash wave (16 / "sqash
>wave 1's count"); and 2, the final division that is done at the end.
>
>The DIV_ROUND_CLOSEST() operation suggested above is equivalent to
>doing:
>
>    x =3D cdclk * sq_div =3D vco / div / 2
>
>Meaning that x is the "unsquashed cdclk". From this point, what
>bxt_cdclk_cd2x_div_sel() is doing is:
>
>    y =3D vco / x / 2
>
>(the last "2" divisor comes from the switch-case statement).
>
>That resolves to:
>
>    y =3D vco / (vco / div / 2) / 2 =3D div
>
>--
>Gustavo Sousa
>
>>
>>
>>Matt
>>
>>>          if (HAS_CDCLK_SQUASH(dev_priv))
>>>                  dg2_cdclk_squash_program(dev_priv, waveform);
>>> =20
>>> >=20
>>> > >=20
>>> > > I wonder if the misprogramming we're doing today is what requires t=
he
>>> > > "HACK" at the bottom of intel_crtc_compute_min_cdclk for DG2?
>>> > >=20
>>> > >=20
>>> > > Matt
>>> > >=20
>>> > > >=20
>>> > > > Cc: Matt Roper <matthew.d.roper@intel.com>
>>> > > > Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>>> > > > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>>> > > > ---
>>> > > >  drivers/gpu/drm/i915/display/intel_cdclk.c | 269 ++++++++++-----=
------
>>> > > >  1 file changed, 134 insertions(+), 135 deletions(-)
>>> > > >=20
>>> > > > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers=
/gpu/drm/i915/display/intel_cdclk.c
>>> > > > index b93d1ad7936d..7f85a216ff5c 100644
>>> > > > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>>> > > > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>>> > > > @@ -1227,183 +1227,182 @@ struct intel_cdclk_vals {
>>> > > >          u32 cdclk;
>>> > > >          u16 refclk;
>>> > > >          u16 waveform;
>>> > > > -        u8 divider;        /* CD2X divider * 2 */
>>> > > >          u8 ratio;
>>> > > >  };
>>> > > > =20
>>> > > >  static const struct intel_cdclk_vals bxt_cdclk_table[] =3D {
>>> > > > -        { .refclk =3D 19200, .cdclk =3D 144000, .divider =3D 8, =
.ratio =3D 60 },
>>> > > > -        { .refclk =3D 19200, .cdclk =3D 288000, .divider =3D 4, =
.ratio =3D 60 },
>>> > > > -        { .refclk =3D 19200, .cdclk =3D 384000, .divider =3D 3, =
.ratio =3D 60 },
>>> > > > -        { .refclk =3D 19200, .cdclk =3D 576000, .divider =3D 2, =
.ratio =3D 60 },
>>> > > > -        { .refclk =3D 19200, .cdclk =3D 624000, .divider =3D 2, =
.ratio =3D 65 },
>>> > > > +        { .refclk =3D 19200, .cdclk =3D 144000, .ratio =3D 60 },
>>> > > > +        { .refclk =3D 19200, .cdclk =3D 288000, .ratio =3D 60 },
>>> > > > +        { .refclk =3D 19200, .cdclk =3D 384000, .ratio =3D 60 },
>>> > > > +        { .refclk =3D 19200, .cdclk =3D 576000, .ratio =3D 60 },
>>> > > > +        { .refclk =3D 19200, .cdclk =3D 624000, .ratio =3D 65 },
>>> > > >          {}
>>> > > >  };
>>> > > > =20
>>> > > >  static const struct intel_cdclk_vals glk_cdclk_table[] =3D {
>>> > > > -        { .refclk =3D 19200, .cdclk =3D  79200, .divider =3D 8, =
.ratio =3D 33 },
>>> > > > -        { .refclk =3D 19200, .cdclk =3D 158400, .divider =3D 4, =
.ratio =3D 33 },
>>> > > > -        { .refclk =3D 19200, .cdclk =3D 316800, .divider =3D 2, =
.ratio =3D 33 },
>>> > > > +        { .refclk =3D 19200, .cdclk =3D  79200, .ratio =3D 33 },
>>> > > > +        { .refclk =3D 19200, .cdclk =3D 158400, .ratio =3D 33 },
>>> > > > +        { .refclk =3D 19200, .cdclk =3D 316800, .ratio =3D 33 },
>>> > > >          {}
>>> > > >  };
>>> > > > =20
>>> > > >  static const struct intel_cdclk_vals icl_cdclk_table[] =3D {
>>> > > > -        { .refclk =3D 19200, .cdclk =3D 172800, .divider =3D 2, =
.ratio =3D 18 },
>>> > > > -        { .refclk =3D 19200, .cdclk =3D 192000, .divider =3D 2, =
.ratio =3D 20 },
>>> > > > -        { .refclk =3D 19200, .cdclk =3D 307200, .divider =3D 2, =
.ratio =3D 32 },
>>> > > > -        { .refclk =3D 19200, .cdclk =3D 326400, .divider =3D 4, =
.ratio =3D 68 },
>>> > > > -        { .refclk =3D 19200, .cdclk =3D 556800, .divider =3D 2, =
.ratio =3D 58 },
>>> > > > -        { .refclk =3D 19200, .cdclk =3D 652800, .divider =3D 2, =
.ratio =3D 68 },
>>> > > > -
>>> > > > -        { .refclk =3D 24000, .cdclk =3D 180000, .divider =3D 2, =
.ratio =3D 15 },
>>> > > > -        { .refclk =3D 24000, .cdclk =3D 192000, .divider =3D 2, =
.ratio =3D 16 },
>>> > > > -        { .refclk =3D 24000, .cdclk =3D 312000, .divider =3D 2, =
.ratio =3D 26 },
>>> > > > -        { .refclk =3D 24000, .cdclk =3D 324000, .divider =3D 4, =
.ratio =3D 54 },
>>> > > > -        { .refclk =3D 24000, .cdclk =3D 552000, .divider =3D 2, =
.ratio =3D 46 },
>>> > > > -        { .refclk =3D 24000, .cdclk =3D 648000, .divider =3D 2, =
.ratio =3D 54 },
>>> > > > -
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 172800, .divider =3D 2, =
.ratio =3D  9 },
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 192000, .divider =3D 2, =
.ratio =3D 10 },
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 307200, .divider =3D 2, =
.ratio =3D 16 },
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 326400, .divider =3D 4, =
.ratio =3D 34 },
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 556800, .divider =3D 2, =
.ratio =3D 29 },
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 652800, .divider =3D 2, =
.ratio =3D 34 },
>>> > > > +        { .refclk =3D 19200, .cdclk =3D 172800, .ratio =3D 18 },
>>> > > > +        { .refclk =3D 19200, .cdclk =3D 192000, .ratio =3D 20 },
>>> > > > +        { .refclk =3D 19200, .cdclk =3D 307200, .ratio =3D 32 },
>>> > > > +        { .refclk =3D 19200, .cdclk =3D 326400, .ratio =3D 68 },
>>> > > > +        { .refclk =3D 19200, .cdclk =3D 556800, .ratio =3D 58 },
>>> > > > +        { .refclk =3D 19200, .cdclk =3D 652800, .ratio =3D 68 },
>>> > > > +
>>> > > > +        { .refclk =3D 24000, .cdclk =3D 180000, .ratio =3D 15 },
>>> > > > +        { .refclk =3D 24000, .cdclk =3D 192000, .ratio =3D 16 },
>>> > > > +        { .refclk =3D 24000, .cdclk =3D 312000, .ratio =3D 26 },
>>> > > > +        { .refclk =3D 24000, .cdclk =3D 324000, .ratio =3D 54 },
>>> > > > +        { .refclk =3D 24000, .cdclk =3D 552000, .ratio =3D 46 },
>>> > > > +        { .refclk =3D 24000, .cdclk =3D 648000, .ratio =3D 54 },
>>> > > > +
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 172800, .ratio =3D  9 },
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 192000, .ratio =3D 10 },
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 307200, .ratio =3D 16 },
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 326400, .ratio =3D 34 },
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 556800, .ratio =3D 29 },
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 652800, .ratio =3D 34 },
>>> > > >          {}
>>> > > >  };
>>> > > > =20
>>> > > >  static const struct intel_cdclk_vals rkl_cdclk_table[] =3D {
>>> > > > -        { .refclk =3D 19200, .cdclk =3D 172800, .divider =3D 4, =
.ratio =3D  36 },
>>> > > > -        { .refclk =3D 19200, .cdclk =3D 192000, .divider =3D 4, =
.ratio =3D  40 },
>>> > > > -        { .refclk =3D 19200, .cdclk =3D 307200, .divider =3D 4, =
.ratio =3D  64 },
>>> > > > -        { .refclk =3D 19200, .cdclk =3D 326400, .divider =3D 8, =
.ratio =3D 136 },
>>> > > > -        { .refclk =3D 19200, .cdclk =3D 556800, .divider =3D 4, =
.ratio =3D 116 },
>>> > > > -        { .refclk =3D 19200, .cdclk =3D 652800, .divider =3D 4, =
.ratio =3D 136 },
>>> > > > -
>>> > > > -        { .refclk =3D 24000, .cdclk =3D 180000, .divider =3D 4, =
.ratio =3D  30 },
>>> > > > -        { .refclk =3D 24000, .cdclk =3D 192000, .divider =3D 4, =
.ratio =3D  32 },
>>> > > > -        { .refclk =3D 24000, .cdclk =3D 312000, .divider =3D 4, =
.ratio =3D  52 },
>>> > > > -        { .refclk =3D 24000, .cdclk =3D 324000, .divider =3D 8, =
.ratio =3D 108 },
>>> > > > -        { .refclk =3D 24000, .cdclk =3D 552000, .divider =3D 4, =
.ratio =3D  92 },
>>> > > > -        { .refclk =3D 24000, .cdclk =3D 648000, .divider =3D 4, =
.ratio =3D 108 },
>>> > > > -
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 172800, .divider =3D 4, =
.ratio =3D 18 },
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 192000, .divider =3D 4, =
.ratio =3D 20 },
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 307200, .divider =3D 4, =
.ratio =3D 32 },
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 326400, .divider =3D 8, =
.ratio =3D 68 },
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 556800, .divider =3D 4, =
.ratio =3D 58 },
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 652800, .divider =3D 4, =
.ratio =3D 68 },
>>> > > > +        { .refclk =3D 19200, .cdclk =3D 172800, .ratio =3D  36 }=
,
>>> > > > +        { .refclk =3D 19200, .cdclk =3D 192000, .ratio =3D  40 }=
,
>>> > > > +        { .refclk =3D 19200, .cdclk =3D 307200, .ratio =3D  64 }=
,
>>> > > > +        { .refclk =3D 19200, .cdclk =3D 326400, .ratio =3D 136 }=
,
>>> > > > +        { .refclk =3D 19200, .cdclk =3D 556800, .ratio =3D 116 }=
,
>>> > > > +        { .refclk =3D 19200, .cdclk =3D 652800, .ratio =3D 136 }=
,
>>> > > > +
>>> > > > +        { .refclk =3D 24000, .cdclk =3D 180000, .ratio =3D  30 }=
,
>>> > > > +        { .refclk =3D 24000, .cdclk =3D 192000, .ratio =3D  32 }=
,
>>> > > > +        { .refclk =3D 24000, .cdclk =3D 312000, .ratio =3D  52 }=
,
>>> > > > +        { .refclk =3D 24000, .cdclk =3D 324000, .ratio =3D 108 }=
,
>>> > > > +        { .refclk =3D 24000, .cdclk =3D 552000, .ratio =3D  92 }=
,
>>> > > > +        { .refclk =3D 24000, .cdclk =3D 648000, .ratio =3D 108 }=
,
>>> > > > +
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 172800, .ratio =3D 18 },
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 192000, .ratio =3D 20 },
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 307200, .ratio =3D 32 },
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 326400, .ratio =3D 68 },
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 556800, .ratio =3D 58 },
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 652800, .ratio =3D 68 },
>>> > > >          {}
>>> > > >  };
>>> > > > =20
>>> > > >  static const struct intel_cdclk_vals adlp_a_step_cdclk_table[] =
=3D {
>>> > > > -        { .refclk =3D 19200, .cdclk =3D 307200, .divider =3D 2, =
.ratio =3D 32 },
>>> > > > -        { .refclk =3D 19200, .cdclk =3D 556800, .divider =3D 2, =
.ratio =3D 58 },
>>> > > > -        { .refclk =3D 19200, .cdclk =3D 652800, .divider =3D 2, =
.ratio =3D 68 },
>>> > > > +        { .refclk =3D 19200, .cdclk =3D 307200, .ratio =3D 32 },
>>> > > > +        { .refclk =3D 19200, .cdclk =3D 556800, .ratio =3D 58 },
>>> > > > +        { .refclk =3D 19200, .cdclk =3D 652800, .ratio =3D 68 },
>>> > > > =20
>>> > > > -        { .refclk =3D 24000, .cdclk =3D 312000, .divider =3D 2, =
.ratio =3D 26 },
>>> > > > -        { .refclk =3D 24000, .cdclk =3D 552000, .divider =3D 2, =
.ratio =3D 46 },
>>> > > > -        { .refclk =3D 24400, .cdclk =3D 648000, .divider =3D 2, =
.ratio =3D 54 },
>>> > > > +        { .refclk =3D 24000, .cdclk =3D 312000, .ratio =3D 26 },
>>> > > > +        { .refclk =3D 24000, .cdclk =3D 552000, .ratio =3D 46 },
>>> > > > +        { .refclk =3D 24400, .cdclk =3D 648000, .ratio =3D 54 },
>>> > > > =20
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 307200, .divider =3D 2, =
.ratio =3D 16 },
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 556800, .divider =3D 2, =
.ratio =3D 29 },
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 652800, .divider =3D 2, =
.ratio =3D 34 },
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 307200, .ratio =3D 16 },
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 556800, .ratio =3D 29 },
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 652800, .ratio =3D 34 },
>>> > > >          {}
>>> > > >  };
>>> > > > =20
>>> > > >  static const struct intel_cdclk_vals adlp_cdclk_table[] =3D {
>>> > > > -        { .refclk =3D 19200, .cdclk =3D 172800, .divider =3D 3, =
.ratio =3D 27 },
>>> > > > -        { .refclk =3D 19200, .cdclk =3D 192000, .divider =3D 2, =
.ratio =3D 20 },
>>> > > > -        { .refclk =3D 19200, .cdclk =3D 307200, .divider =3D 2, =
.ratio =3D 32 },
>>> > > > -        { .refclk =3D 19200, .cdclk =3D 556800, .divider =3D 2, =
.ratio =3D 58 },
>>> > > > -        { .refclk =3D 19200, .cdclk =3D 652800, .divider =3D 2, =
.ratio =3D 68 },
>>> > > > -
>>> > > > -        { .refclk =3D 24000, .cdclk =3D 176000, .divider =3D 3, =
.ratio =3D 22 },
>>> > > > -        { .refclk =3D 24000, .cdclk =3D 192000, .divider =3D 2, =
.ratio =3D 16 },
>>> > > > -        { .refclk =3D 24000, .cdclk =3D 312000, .divider =3D 2, =
.ratio =3D 26 },
>>> > > > -        { .refclk =3D 24000, .cdclk =3D 552000, .divider =3D 2, =
.ratio =3D 46 },
>>> > > > -        { .refclk =3D 24000, .cdclk =3D 648000, .divider =3D 2, =
.ratio =3D 54 },
>>> > > > -
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 179200, .divider =3D 3, =
.ratio =3D 14 },
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 192000, .divider =3D 2, =
.ratio =3D 10 },
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 307200, .divider =3D 2, =
.ratio =3D 16 },
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 556800, .divider =3D 2, =
.ratio =3D 29 },
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 652800, .divider =3D 2, =
.ratio =3D 34 },
>>> > > > +        { .refclk =3D 19200, .cdclk =3D 172800, .ratio =3D 27 },
>>> > > > +        { .refclk =3D 19200, .cdclk =3D 192000, .ratio =3D 20 },
>>> > > > +        { .refclk =3D 19200, .cdclk =3D 307200, .ratio =3D 32 },
>>> > > > +        { .refclk =3D 19200, .cdclk =3D 556800, .ratio =3D 58 },
>>> > > > +        { .refclk =3D 19200, .cdclk =3D 652800, .ratio =3D 68 },
>>> > > > +
>>> > > > +        { .refclk =3D 24000, .cdclk =3D 176000, .ratio =3D 22 },
>>> > > > +        { .refclk =3D 24000, .cdclk =3D 192000, .ratio =3D 16 },
>>> > > > +        { .refclk =3D 24000, .cdclk =3D 312000, .ratio =3D 26 },
>>> > > > +        { .refclk =3D 24000, .cdclk =3D 552000, .ratio =3D 46 },
>>> > > > +        { .refclk =3D 24000, .cdclk =3D 648000, .ratio =3D 54 },
>>> > > > +
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 179200, .ratio =3D 14 },
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 192000, .ratio =3D 10 },
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 307200, .ratio =3D 16 },
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 556800, .ratio =3D 29 },
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 652800, .ratio =3D 34 },
>>> > > >          {}
>>> > > >  };
>>> > > > =20
>>> > > >  static const struct intel_cdclk_vals rplu_cdclk_table[] =3D {
>>> > > > -        { .refclk =3D 19200, .cdclk =3D 172800, .divider =3D 3, =
.ratio =3D 27 },
>>> > > > -        { .refclk =3D 19200, .cdclk =3D 192000, .divider =3D 2, =
.ratio =3D 20 },
>>> > > > -        { .refclk =3D 19200, .cdclk =3D 307200, .divider =3D 2, =
.ratio =3D 32 },
>>> > > > -        { .refclk =3D 19200, .cdclk =3D 480000, .divider =3D 2, =
.ratio =3D 50 },
>>> > > > -        { .refclk =3D 19200, .cdclk =3D 556800, .divider =3D 2, =
.ratio =3D 58 },
>>> > > > -        { .refclk =3D 19200, .cdclk =3D 652800, .divider =3D 2, =
.ratio =3D 68 },
>>> > > > -
>>> > > > -        { .refclk =3D 24000, .cdclk =3D 176000, .divider =3D 3, =
.ratio =3D 22 },
>>> > > > -        { .refclk =3D 24000, .cdclk =3D 192000, .divider =3D 2, =
.ratio =3D 16 },
>>> > > > -        { .refclk =3D 24000, .cdclk =3D 312000, .divider =3D 2, =
.ratio =3D 26 },
>>> > > > -        { .refclk =3D 24000, .cdclk =3D 480000, .divider =3D 2, =
.ratio =3D 40 },
>>> > > > -        { .refclk =3D 24000, .cdclk =3D 552000, .divider =3D 2, =
.ratio =3D 46 },
>>> > > > -        { .refclk =3D 24000, .cdclk =3D 648000, .divider =3D 2, =
.ratio =3D 54 },
>>> > > > -
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 179200, .divider =3D 3, =
.ratio =3D 14 },
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 192000, .divider =3D 2, =
.ratio =3D 10 },
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 307200, .divider =3D 2, =
.ratio =3D 16 },
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 480000, .divider =3D 2, =
.ratio =3D 25 },
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 556800, .divider =3D 2, =
.ratio =3D 29 },
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 652800, .divider =3D 2, =
.ratio =3D 34 },
>>> > > > +        { .refclk =3D 19200, .cdclk =3D 172800, .ratio =3D 27 },
>>> > > > +        { .refclk =3D 19200, .cdclk =3D 192000, .ratio =3D 20 },
>>> > > > +        { .refclk =3D 19200, .cdclk =3D 307200, .ratio =3D 32 },
>>> > > > +        { .refclk =3D 19200, .cdclk =3D 480000, .ratio =3D 50 },
>>> > > > +        { .refclk =3D 19200, .cdclk =3D 556800, .ratio =3D 58 },
>>> > > > +        { .refclk =3D 19200, .cdclk =3D 652800, .ratio =3D 68 },
>>> > > > +
>>> > > > +        { .refclk =3D 24000, .cdclk =3D 176000, .ratio =3D 22 },
>>> > > > +        { .refclk =3D 24000, .cdclk =3D 192000, .ratio =3D 16 },
>>> > > > +        { .refclk =3D 24000, .cdclk =3D 312000, .ratio =3D 26 },
>>> > > > +        { .refclk =3D 24000, .cdclk =3D 480000, .ratio =3D 40 },
>>> > > > +        { .refclk =3D 24000, .cdclk =3D 552000, .ratio =3D 46 },
>>> > > > +        { .refclk =3D 24000, .cdclk =3D 648000, .ratio =3D 54 },
>>> > > > +
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 179200, .ratio =3D 14 },
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 192000, .ratio =3D 10 },
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 307200, .ratio =3D 16 },
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 480000, .ratio =3D 25 },
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 556800, .ratio =3D 29 },
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 652800, .ratio =3D 34 },
>>> > > >          {}
>>> > > >  };
>>> > > > =20
>>> > > >  static const struct intel_cdclk_vals dg2_cdclk_table[] =3D {
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 163200, .divider =3D 2, =
.ratio =3D 34, .waveform =3D 0x8888 },
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 204000, .divider =3D 2, =
.ratio =3D 34, .waveform =3D 0x9248 },
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 244800, .divider =3D 2, =
.ratio =3D 34, .waveform =3D 0xa4a4 },
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 285600, .divider =3D 2, =
.ratio =3D 34, .waveform =3D 0xa54a },
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 326400, .divider =3D 2, =
.ratio =3D 34, .waveform =3D 0xaaaa },
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 367200, .divider =3D 2, =
.ratio =3D 34, .waveform =3D 0xad5a },
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 408000, .divider =3D 2, =
.ratio =3D 34, .waveform =3D 0xb6b6 },
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 448800, .divider =3D 2, =
.ratio =3D 34, .waveform =3D 0xdbb6 },
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 489600, .divider =3D 2, =
.ratio =3D 34, .waveform =3D 0xeeee },
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 530400, .divider =3D 2, =
.ratio =3D 34, .waveform =3D 0xf7de },
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 571200, .divider =3D 2, =
.ratio =3D 34, .waveform =3D 0xfefe },
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 612000, .divider =3D 2, =
.ratio =3D 34, .waveform =3D 0xfffe },
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 652800, .divider =3D 2, =
.ratio =3D 34, .waveform =3D 0xffff },
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 163200, .ratio =3D 34, .=
waveform =3D 0x8888 },
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 204000, .ratio =3D 34, .=
waveform =3D 0x9248 },
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 244800, .ratio =3D 34, .=
waveform =3D 0xa4a4 },
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 285600, .ratio =3D 34, .=
waveform =3D 0xa54a },
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 326400, .ratio =3D 34, .=
waveform =3D 0xaaaa },
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 367200, .ratio =3D 34, .=
waveform =3D 0xad5a },
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 408000, .ratio =3D 34, .=
waveform =3D 0xb6b6 },
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 448800, .ratio =3D 34, .=
waveform =3D 0xdbb6 },
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 489600, .ratio =3D 34, .=
waveform =3D 0xeeee },
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 530400, .ratio =3D 34, .=
waveform =3D 0xf7de },
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 571200, .ratio =3D 34, .=
waveform =3D 0xfefe },
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 612000, .ratio =3D 34, .=
waveform =3D 0xfffe },
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 652800, .ratio =3D 34, .=
waveform =3D 0xffff },
>>> > > >          {}
>>> > > >  };
>>> > > > =20
>>> > > >  static const struct intel_cdclk_vals mtl_cdclk_table[] =3D {
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 172800, .divider =3D 2, =
.ratio =3D 16, .waveform =3D 0xad5a },
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 192000, .divider =3D 2, =
.ratio =3D 16, .waveform =3D 0xb6b6 },
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 307200, .divider =3D 2, =
.ratio =3D 16, .waveform =3D 0x0000 },
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 480000, .divider =3D 2, =
.ratio =3D 25, .waveform =3D 0x0000 },
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 556800, .divider =3D 2, =
.ratio =3D 29, .waveform =3D 0x0000 },
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 652800, .divider =3D 2, =
.ratio =3D 34, .waveform =3D 0x0000 },
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 172800, .ratio =3D 16, .=
waveform =3D 0xad5a },
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 192000, .ratio =3D 16, .=
waveform =3D 0xb6b6 },
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 307200, .ratio =3D 16, .=
waveform =3D 0x0000 },
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 480000, .ratio =3D 25, .=
waveform =3D 0x0000 },
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 556800, .ratio =3D 29, .=
waveform =3D 0x0000 },
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 652800, .ratio =3D 34, .=
waveform =3D 0x0000 },
>>> > > >          {}
>>> > > >  };
>>> > > > =20
>>> > > >  static const struct intel_cdclk_vals lnl_cdclk_table[] =3D {
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 153600, .divider =3D 2, =
.ratio =3D 16, .waveform =3D 0xaaaa },
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 172800, .divider =3D 2, =
.ratio =3D 16, .waveform =3D 0xad5a },
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 192000, .divider =3D 2, =
.ratio =3D 16, .waveform =3D 0xb6b6 },
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 211200, .divider =3D 2, =
.ratio =3D 16, .waveform =3D 0xdbb6 },
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 230400, .divider =3D 2, =
.ratio =3D 16, .waveform =3D 0xeeee },
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 249600, .divider =3D 2, =
.ratio =3D 16, .waveform =3D 0xf7de },
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 268800, .divider =3D 2, =
.ratio =3D 16, .waveform =3D 0xfefe },
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 288000, .divider =3D 2, =
.ratio =3D 16, .waveform =3D 0xfffe },
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 307200, .divider =3D 2, =
.ratio =3D 16, .waveform =3D 0xffff },
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 330000, .divider =3D 2, =
.ratio =3D 25, .waveform =3D 0xdbb6 },
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 360000, .divider =3D 2, =
.ratio =3D 25, .waveform =3D 0xeeee },
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 390000, .divider =3D 2, =
.ratio =3D 25, .waveform =3D 0xf7de },
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 420000, .divider =3D 2, =
.ratio =3D 25, .waveform =3D 0xfefe },
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 450000, .divider =3D 2, =
.ratio =3D 25, .waveform =3D 0xfffe },
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 480000, .divider =3D 2, =
.ratio =3D 25, .waveform =3D 0xffff },
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 487200, .divider =3D 2, =
.ratio =3D 29, .waveform =3D 0xfefe },
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 522000, .divider =3D 2, =
.ratio =3D 29, .waveform =3D 0xfffe },
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 556800, .divider =3D 2, =
.ratio =3D 29, .waveform =3D 0xffff },
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 571200, .divider =3D 2, =
.ratio =3D 34, .waveform =3D 0xfefe },
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 612000, .divider =3D 2, =
.ratio =3D 34, .waveform =3D 0xfffe },
>>> > > > -        { .refclk =3D 38400, .cdclk =3D 652800, .divider =3D 2, =
.ratio =3D 34, .waveform =3D 0xffff },
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 153600, .ratio =3D 16, .=
waveform =3D 0xaaaa },
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 172800, .ratio =3D 16, .=
waveform =3D 0xad5a },
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 192000, .ratio =3D 16, .=
waveform =3D 0xb6b6 },
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 211200, .ratio =3D 16, .=
waveform =3D 0xdbb6 },
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 230400, .ratio =3D 16, .=
waveform =3D 0xeeee },
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 249600, .ratio =3D 16, .=
waveform =3D 0xf7de },
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 268800, .ratio =3D 16, .=
waveform =3D 0xfefe },
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 288000, .ratio =3D 16, .=
waveform =3D 0xfffe },
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 307200, .ratio =3D 16, .=
waveform =3D 0xffff },
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 330000, .ratio =3D 25, .=
waveform =3D 0xdbb6 },
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 360000, .ratio =3D 25, .=
waveform =3D 0xeeee },
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 390000, .ratio =3D 25, .=
waveform =3D 0xf7de },
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 420000, .ratio =3D 25, .=
waveform =3D 0xfefe },
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 450000, .ratio =3D 25, .=
waveform =3D 0xfffe },
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 480000, .ratio =3D 25, .=
waveform =3D 0xffff },
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 487200, .ratio =3D 29, .=
waveform =3D 0xfefe },
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 522000, .ratio =3D 29, .=
waveform =3D 0xfffe },
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 556800, .ratio =3D 29, .=
waveform =3D 0xffff },
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 571200, .ratio =3D 34, .=
waveform =3D 0xfefe },
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 612000, .ratio =3D 34, .=
waveform =3D 0xfffe },
>>> > > > +        { .refclk =3D 38400, .cdclk =3D 652800, .ratio =3D 34, .=
waveform =3D 0xffff },
>>> > > >          {}
>>> > > >  };
>>> > > > =20
>>> > > > --=20
>>> > > > 2.42.1
>>> > > >=20
>>> > >=20
>>> > > --=20
>>> > > Matt Roper
>>> > > Graphics Software Engineer
>>> > > Linux GPU Platform Enablement
>>> > > Intel Corporation
>>> >=20
>>> > --=20
>>> > Ville Syrj=C3=A4l=C3=A4
>>> > Intel
>>>=20
>>> --=20
>>> Ville Syrj=C3=A4l=C3=A4
>>> Intel
>>
>>--=20
>>Matt Roper
>>Graphics Software Engineer
>>Linux GPU Platform Enablement
>>Intel Corporation
