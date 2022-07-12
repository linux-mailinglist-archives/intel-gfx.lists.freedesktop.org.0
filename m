Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03740571A70
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Jul 2022 14:48:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50FAD10EDE3;
	Tue, 12 Jul 2022 12:48:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C71B10EDE3
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Jul 2022 12:48:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657630135; x=1689166135;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=YFJ15eg5lb7ffRXTnZ8tWz7uGLWKWp0o9pKGj8z2Dpk=;
 b=jOMVYAsasNmPeHPORSztDhDOw0y5unpXQcgj9yfygFDtxyQe6zbxDnyR
 /O1uxO8UjcaGGXj6Hpxz+1062mPIBcZwFQ2HcSD29cCGqreG4jX7Q5upB
 pTbk+QRQAXKA0jFGUzt43nLfjzOfbOi2qAxa7nFd7VqJgeamylyk1bsgV
 0eXR2Sd6ALfgnVXqTy8yRXhD1U/nLciBOQIbyx7W6UOqUqzWYu0Zd4EOv
 oR3nBDJMLWqn05PEAJBuw07QgXvYdjKtTwy4E7UB7GAyW9LybmhEz4Ddd
 8rnLS6L9xRP24li4sHQ37GX5HDfvJbcypa632vJhkOFlI+WUTsCOf5cyd Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10405"; a="282476056"
X-IronPort-AV: E=Sophos;i="5.92,265,1650956400"; d="scan'208";a="282476056"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2022 05:48:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,265,1650956400"; d="scan'208";a="592615258"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga007.jf.intel.com with ESMTP; 12 Jul 2022 05:48:54 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 12 Jul 2022 05:48:53 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 12 Jul 2022 05:48:53 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 12 Jul 2022 05:48:53 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 12 Jul 2022 05:48:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WdhJhgYCFCid30OPFLIArnxGD+FV09MhGVinTDv04D1nHilWYVRn3QVaVDb4A9QJFlgtkQc6UTSHEZaHZqgto5cIseMPxTegOhctXxfE9TvbJX7ns68t6Uk99YjSYcA2MyrMMkr0zvz/N9vd/Yk7ADvqEE/Pg6k/l+WjeAvS+NCqEdxc6rNVcLpjOHLHkGahz/t4RtuCljMdtn7YICar+iFaj5dC4eD/BN69VWm0jCcJKlCkY5Gg+jDwqA+fmPpfGZ5nhgioE6JYDmiNkAvObV53cGi9MhQ6buHTwvJt8Zn/G4q+bb+D/wI0A3MfCOoznyqCoftokiUPlY+gTC0F2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YFJ15eg5lb7ffRXTnZ8tWz7uGLWKWp0o9pKGj8z2Dpk=;
 b=YGaKGuqqOxLTid2t3uC3RDomk5z7fvtgveIEpn63GpB0SAfMwjXShQAwfD19TWdfQygsgfeg9YN8DYpKWfKPpNK96wdpa+lRiexsCsyu18hqjIWr9/67VE3zvIl/dxE1CPfGuJcdMl5IkXd1Y4uSs5FiJHHlHJLyZ+B/2Dt34oA5+f3f+JS0M6F8VDqPdB6Zl6k6f60H1fTINhhLszjb2/6HlavqbrDeFLLCsen+4dh/MuvSIR+mA6oACAw5KNNhO67hTa3/oxMMK6hqY9deamxFvIjoRc1txJuKtsrCxGm4kS7UJItAT8rg0S7AGiLiRGk20pWOZs6TQJkNV8i6oQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 BL0PR11MB3059.namprd11.prod.outlook.com (2603:10b6:208:30::28) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5417.26; Tue, 12 Jul 2022 12:48:37 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3546:7df4:c8d2:1152]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3546:7df4:c8d2:1152%5]) with mapi id 15.20.5417.026; Tue, 12 Jul 2022
 12:48:37 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915/dg2: Add Wa_15010599737
Thread-Index: AQHYkxXYfLt4OvXquUuLOmNGacL6uq16tQSg
Date: Tue, 12 Jul 2022 12:48:37 +0000
Message-ID: <DM6PR11MB31779B14AC488F852F56FBF8BA869@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20220708215804.2889246-1-matthew.d.roper@intel.com>
In-Reply-To: <20220708215804.2889246-1-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a5415074-cfb9-48b4-611a-08da6404d707
x-ms-traffictypediagnostic: BL0PR11MB3059:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ShBi0fho/xgPEc6AhQiJYvP2OBsJUs8+YgniO2689pk8kxd1wp99bnEMc0CQ5AyoEZx0gu7SAQpht6w5cznUxYAltFOWGPfocmkZUDXKYQSexph5rbFg6unstt169FigwOn5LGuI3UUBgMhtKGel2XTrFw/Qfs6Bar/RiommUfmKMIw26jDqjadm+fq1+MqPJW96Zfsyfgc9TeakpDLxRXhua2x3zI9ohZMujOOvwCfsD4wuXqy93pCTDtod1Mn8oTlCXw5QtHG7MKnsdH+PcBK5kVZ7of7eTwAGVncxxRCKKJL3PtxoDPms709KWPyC9unax1kMqWm5hT9A9psOxasXMValzw8au3dwRCj9uUVktNr/bWjWqL2BrfjcE48/z1aVFOWWitpNEqII2XDIWmyExEOKRKcxY5MLFcbGjojKZD4wAggR5Jnqpid5uLXB0tWCsI046sVI190UVTLZBYwKaznpTapgvIRMv6WQVIc0eerHxxIzWvzJBNl5vqTR2vYk+59hR5oVSLQeW3l9wxxkMWA4QgvxCB/79JG5cvI691lANOw4QUyXDloJbav/gWIJ0jZGpS+yNS8f95i+rq64wRI1mC7rh/QSkoPLvaGGhku1oQZ51RZQaaDCCAI+5LsHbPvpVxEcG2+XV85qAnB9wb1ZJGCGy/NpS5wq6g97vq8slVBPlZptAi1VKrcsg/ospY4dHTEUQyrf1OJcX/SV8caXujR2IgW0L+fnoM527A6LrBCVt0ksMgLVht9LeWKzeyAk4BDLcHPme+yThpuLdxS62u9cviMSuv29bZDDPrg4Fok0Qx380Md4I5Y/
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(366004)(396003)(346002)(39860400002)(136003)(71200400001)(55236004)(110136005)(8936002)(6506007)(55016003)(33656002)(86362001)(52536014)(38100700002)(5660300002)(9686003)(83380400001)(26005)(122000001)(8676002)(316002)(4744005)(7696005)(38070700005)(186003)(53546011)(66476007)(66946007)(66446008)(41300700001)(76116006)(66556008)(478600001)(64756008)(82960400001)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?T2SQDKRkvdEt42UiFjH1dN4Vcl5N4bRqvD3SuV+LjUTRODOHG9360ypyIJTV?=
 =?us-ascii?Q?L/lEmX55dfcXCWHcO6F3ODTmwk1KpnHJjJ+ovoIYd2Lkbhq8GMoSRpkytODa?=
 =?us-ascii?Q?50GTX/pWyupP70+GoBtwhP4ypSD0cUy71KQbhmy/dTfRNZdjxfLSCFsWYO7Y?=
 =?us-ascii?Q?O3AyC5GVn9PZfZdw7J/SKw4UM7ryug6/Ab2hq1vl8xYHppD+9AewC2T4pGCH?=
 =?us-ascii?Q?zlbVzin4bJaMIDdVvG/HXn5JyBL+8OwlL181qJMRgq/RTRUWMIlxwFgCSdLJ?=
 =?us-ascii?Q?tIU3GSUZwpr4zHaD68hMdgwS5iFpLkmWrno40h4sdJSgkzG5Y/3hAE5YOBC4?=
 =?us-ascii?Q?TpvRmoQFK1i5EtYizX+BuYR3f/Ya5eA69KkJLI85hVnZSY49GCEaXPSDnAh3?=
 =?us-ascii?Q?0QHp2VZtaYEE8IN17WkZKKLH0H0tSovTJcyWkNZq8rqzXXBdnVGu4jwaPkV5?=
 =?us-ascii?Q?qwHhUrm8YZmbwHjA5gQNgjK0yQ7WKfEZRIfzbFchDVF+ecMIrFRgRv+pgNr8?=
 =?us-ascii?Q?8nLUZ9RYdLPR4xP7lha9YyTMJsTIdH2GIiIGTdTICUbi65qwWKvp/If/AbI5?=
 =?us-ascii?Q?REOrPKpzOZMcbUH/TGXcSJhkqN7swiZFEncgMQnlVGC4FeyowDYqWNBJZbZt?=
 =?us-ascii?Q?TDtB2br7awKfFgZSVML0GqCln+7BPfxdOvV3H3QM37mTpGNzrqcsehKK3XaX?=
 =?us-ascii?Q?/7Z8H/+/C4/tgPcDV7Rb4YjH1s5Jo1qmgzohPyM1t84KSZjggZCkP/WEZt3/?=
 =?us-ascii?Q?JVwxUeZAmw6c+4kOpAzElJULyWlWE1qaxeUHErheJfjf6npLWlEJDV+7tZRA?=
 =?us-ascii?Q?mWRNG/MY/fRZiR62Q6l2eCTXimDhd2TXqMi6cnWM/ZPOU1+LQAjmJ6wmiV6U?=
 =?us-ascii?Q?6ViCwgmoh9eWXK2eecAqhK7F99+mENryLcVgToO0Jc6JVZ3G2NvCWldu/OfC?=
 =?us-ascii?Q?DV0H5V5+SL7RTW64hPPstWR9BkaZ7mtDiqcfCsn+uxUjT6zIc/2ZL9SmT6hN?=
 =?us-ascii?Q?p1ziXXRKsnfz2e0wcXwAAOevzkMdf0uPIEtpaMFWQzvjdKHqgwEbFQefDGAe?=
 =?us-ascii?Q?N4gfuH12xGz5X/KrusUjtTfHEjS5RXMBogJo8fFhsjosDOEZuJQTksYJeJ6l?=
 =?us-ascii?Q?XjN5E5iZxrFEM+g4CybYqLQ8Y76vK2IljIdG/6+2UJI2Nxqa4wsIISYvfNa0?=
 =?us-ascii?Q?67PfTtQDh1x4513l2MsiHoQOYn2kO3ParRddELgfzihEC45MF84uW9WUPFff?=
 =?us-ascii?Q?Z59YwZds4p2ziYMP7HmdV/Om0QezIx8HBVVTDDLQfNwfn+ZhqPeu+Mwd6C+v?=
 =?us-ascii?Q?VD2IeFmz/mrlliRgmAI9BLu0pThvaNvMkoQydBj92sTz7dlh10zYYgusj8Gx?=
 =?us-ascii?Q?q4AV7354f+n/1J0M+u+lz55+qOW14GJV/Qt1GO+u7JOvJae76tSu+cXTPlHI?=
 =?us-ascii?Q?tT0bmBxEsQwOzcZRTQPwl88gIySd09cnsspheJlnDu2FIyvtZ6yj1HBEWLRP?=
 =?us-ascii?Q?3yGGdEZUBmqLhgiNIYHIcnPzKfUqGYSFdLlP6seQCq4FkOmgCeBBVnGlzx0U?=
 =?us-ascii?Q?+MFGArraajzxAmI3ClE04iMosCeiYQfpmjf/R1SJ?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a5415074-cfb9-48b4-611a-08da6404d707
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jul 2022 12:48:37.6422 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cXcP+Sty1lJKTxVOIJ0Dq7U+pPcSrZuh5smzMIKKLaXEI/ojkuNg61mmk0c5nJgifSWD2sRayLdsV4ANgtR3BQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB3059
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/dg2: Add Wa_15010599737
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

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ma=
tt
> Roper
> Sent: Saturday, July 9, 2022 3:28 AM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH 1/2] drm/i915/dg2: Add Wa_15010599737
>=20
> This workaround may need to be extended to other platforms soon, but for
> now it's marked as DG2-specific.
>=20
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
-------------------
