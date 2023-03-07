Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F2D96AD951
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Mar 2023 09:36:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28D0E10E105;
	Tue,  7 Mar 2023 08:36:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95E4810E105
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Mar 2023 08:36:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678178170; x=1709714170;
 h=from:to:subject:date:message-id:mime-version;
 bh=EngiGwsuv9LrnZm5bGqa7nClKNiheFmvgXLdpWq8Wio=;
 b=cBv0gWG/uy099+S9kf5FC6R52/QI2wgXisoQuVP1En2YD+o/JPQ94Ich
 DnCQX6iuf0Yy7/HBx2SNJlphjtXmf7gXQxcffYnheSYVkD0R4X+hju5Bo
 SCvlWp2O3rm8xUrpmZY01mAXsIa9H7JJJE6dV+pqCSkJUr7D7wZMS+53V
 B+aCNJDkhaXWqbaQgJCmWalk3A8ec6PTgBRblVfnbAW2cnxR/mLpW5iSw
 8DZr+3gr0i1Fkj4fw5vReCx6R5IK3zTMYF4dftbMrrIf8Ibp/gL/DSOXB
 X2SplbhLTPpmp4Z9djM4nWxo1B/Yax75L2W7MoFQWgMgm7CDPvVFGCWXX w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="398375724"
X-IronPort-AV: E=Sophos;i="5.98,240,1673942400"; 
 d="scan'208,217";a="398375724"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2023 00:36:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="1005789787"
X-IronPort-AV: E=Sophos;i="5.98,240,1673942400"; 
 d="scan'208,217";a="1005789787"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 07 Mar 2023 00:36:06 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 7 Mar 2023 00:36:06 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 7 Mar 2023 00:36:06 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Tue, 7 Mar 2023 00:36:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k6884vtsi5Ytg26bmfJ1onKvY6pOmS6QWWCrdZr1d+VAsmQkEF63H9wKVy5APW/Op+XAxJxsdoDDpKh9+Tba4o2SLXSbBl5PrAoTfPIEXOZ5++dpKgldzq8GUcXuglwniKCD/mym8aifVtblW6117Fj4lxwnVX2gYH9bsmy4hs3ZrN8lUQViMg4/CYVBCjUAmO+5JIMFbJalob9bGUvYrejvz8zXOTuXlj9KX5825Q9JCiiG36lnSAtMPoDUxyjydc+8fwJ7jdgs63BrQEMtuEqMsK8r3hlCs1FmDmoQaTHv6H6qD9UcWYBr3lw1OlA1hfWmwJR58hROKH8lmd2weA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3l9Safwhg+kZWf6AiTc0nICkaC6Nu1ukvlkmZQ4MZc0=;
 b=ogVRWGVPUr87gJwyEqN5e67e1I0FsLBjd0OPBWuD0pV8rz4dYEn5hz9Xl4xoJb1+Dntg60JiwItX+kEWbOLtGWoFNYZ6IrGZZtFHIXwKjD7yCmixAFqM5QOIQlVAyktvUgzNle1N+USaXGaBEWUHVmjOdk4WP6PFyInkqc8DWuTWZCyHUaTrPEPCN908Q9/CvFtbFpSHIc4v8MQDGUBHfy4y9jT9j+IYC2xUahxU9tBWYeh/14eS/ToJhYwaqU1ZNg5vo7ccujUGbaAPXdCsjzV+03nzQPa+UtOsBm7SsHPhTv63XPQ34y9dV45H3sFOEmeLeZNl1p0sd3ee96fs5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB7073.namprd11.prod.outlook.com (2603:10b6:510:20c::5)
 by BL3PR11MB5681.namprd11.prod.outlook.com (2603:10b6:208:33c::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.29; Tue, 7 Mar
 2023 08:35:59 +0000
Received: from PH7PR11MB7073.namprd11.prod.outlook.com
 ([fe80::3c0b:5984:e173:730]) by PH7PR11MB7073.namprd11.prod.outlook.com
 ([fe80::3c0b:5984:e173:730%9]) with mapi id 15.20.6156.027; Tue, 7 Mar 2023
 08:35:59 +0000
From: "Musial, Ewelina" <ewelina.musial@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [IMPORTANT] Intel GFX CI affected by number of issues in past
 days
Thread-Index: AdlQzxJn3XVZVg9MS5mCN09L6GrGeg==
Date: Tue, 7 Mar 2023 08:35:58 +0000
Message-ID: <PH7PR11MB7073C0F056F0F70E978D0F3493B79@PH7PR11MB7073.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB7073:EE_|BL3PR11MB5681:EE_
x-ms-office365-filtering-correlation-id: 9f3fbd49-ae27-448a-518a-08db1ee6f9f3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4VIykT9jvx2EQu4TQiewO+6A8LyY6ymX4szQmFFQaSN+2BGDISmforwmIS0vWLKypAH5zNKNfozexn2VScrzVLUD6H2H8oLhGhI+b041AqFluRm9N43/icHr/YZuWivGwrTXStqKI71mPmO0IYMG7xwFxcaevN+9J5Yfrj3PRTcuDAA6eP8VFCxJnnjzRyss3bymvnCWCjIasvSw63CTk8pAhDHY0aQ5soIsj5M1pBmD2ULF4YE7T1BQ2Zz5BylJpmpcNqnI+bqk/wX90tshadgwgwvaFpKvku/HRAwCGNmK7bc+HRra/Q+iKVsUXa8MK8ZyXJ7Z3LtFDxUV3Jl5bq+KCPnKv1tJ+mQyBjFhvMB8D0PP/u8qHXtxVbgGgc3HeoDQSxIz82V/ZJH96yil2FOaEOB3+8P6QVSDmWBiv9z48HzZZV+TXtXFlyy8/hETKERsfRrEsMDigJOeJA3uEyszlKJo9y8GtMebbZDy6aGo4Fi4TvE0xVh1aLxhH6iTojZskDMdR2XhcTOj9Bom5KBlPRDT37ldjZ4VaVB5/dC17qAjZLjJhNPwYNhrPwy2e5AuNIEowRgVHij/vcmNycINYxvSSMqRI5sCPzM859TG/Tqw7qwzqhoi23TS1HZgony9n/iFzrVTibRUynGf/IdmoGLUf2UeiFXdgma0bQusKx5QtON4xw6b/NLRJULlrSmdJJz7Mw50w7/ExzOWXQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB7073.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(346002)(39860400002)(396003)(136003)(366004)(451199018)(2906002)(4744005)(5660300002)(9326002)(8936002)(52536014)(41300700001)(76116006)(64756008)(66446008)(66946007)(6916009)(66556008)(83380400001)(66476007)(8676002)(316002)(478600001)(7696005)(71200400001)(33656002)(6506007)(55016003)(86362001)(9686003)(186003)(26005)(38100700002)(82960400001)(122000001)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?SG1YzTIKxarDxiax3DBcrMcbT0tdjDGxm/ZB/dOXg9c75eXEu3GePMbEJaA5?=
 =?us-ascii?Q?L6yD8yhgKkwuSlScJDFLWnIand0fyAd9Cx6vznc/u713mbSpyVFYLHpaSeGd?=
 =?us-ascii?Q?P4isH/99sxt29Gza49iLOKPzgv2Mrj3miEedm7eOSBZ9V96bIkjj7nB0fYQQ?=
 =?us-ascii?Q?kbtBn6kJNN6wm+rnDURfSNjEfhAxzzlwaXNyqbadOguHP6pBNBiouEjZnHyF?=
 =?us-ascii?Q?FuzqNwdJxHEkzwGmfEE13r8I7jU/Nzuw8H76wM83dwMffTop0rLeqIMSpqOt?=
 =?us-ascii?Q?uxt4CRIQbTcTqv6VmzE/05IoNkmCrL7sn1EqaE+Lps1DRFAJkkoL1SQ3i55c?=
 =?us-ascii?Q?/mytuJuznZvz00qEtMAVSPJODd4NJd74CG0UbMdg4frymh9LXCaPGycDgPR7?=
 =?us-ascii?Q?YZvqrgFO47uLJNs5xJusL4MsdLevmhMeY1bXrI0dwjGSeSQ3sAM8ldJ/MxSX?=
 =?us-ascii?Q?OsmEjPCOdDFi9GIu7arrXsQWZEgxdnYTocgLvUtVyC/iN43oh8TUXIxtpU+n?=
 =?us-ascii?Q?g3LWfK03sYFTDse6jhuQe2vRg15UdDykE3QohBv6Bc7y0WQDIUqoyNiyLn7H?=
 =?us-ascii?Q?5ZkUVneN44XZ+FxjMaD1sDXlLCr4Thu1b4EM7xzppeiyGDd/60gfcFUuHSDW?=
 =?us-ascii?Q?Jak6iXGsLzPWzqMwNbfApPS25NhV4R7BPHMfqNDXboapTUWMPYKdi21Q7Tzp?=
 =?us-ascii?Q?nRB5kbRkLYKEd2gpafBAkRXAaCjql84fn6XxzuSQ0Yw8ua717D0W7rLdGJKU?=
 =?us-ascii?Q?ccdijXEZBIxdu8Tq9s4Uxb1PiI1pDCKorZQL8Cu7Lsjd2zqnUAyUE3xDN9lm?=
 =?us-ascii?Q?wpbe3q3xqLpgUOzUXvSkDZjjlhfT7YsTvohBFTMehlkXMvdChQ8d9smGrIMz?=
 =?us-ascii?Q?hSQe2pTWCcm/eLWWOV96hJbZRpKsBMlwKVPW4HysnkuUGy6bhLJ5VUyN5MBI?=
 =?us-ascii?Q?W8Jyy0SinuSozp2DxvFOB6f9x2IfVWWxmqY1TJJM8k3YfIQeA3BMBSBptxnu?=
 =?us-ascii?Q?Rf/09W+kzbJNgGb0/6Ug0JUhmR10DMbzxWhtT83XFJVMONqbXiRfYLx6o/1X?=
 =?us-ascii?Q?DaJeo2HTjc62l17XfDLFqYY16NfiD2zUw7hm5ujx7jqvfsq/Z1ARRmlD7CY0?=
 =?us-ascii?Q?vfhC5QpLTNQcKhkPA/GBDgmDUFop946U5GAI2aLfYcLdAsRFUKvIMUmyVX3V?=
 =?us-ascii?Q?ZkZ4GYoMGjZGz2Hg1ZysSGAPFIlgVYRRsaxbU1LfjYuSmltIq3z13pX4LijQ?=
 =?us-ascii?Q?spzPDhlqrwpFcuSFVpAqoohanF71X0od2tO3oSXFshJCuE3nnx2/YjjwMyf5?=
 =?us-ascii?Q?mewLDp+3zjnmlmHVqFpG4j0QXgD+0sjgEEKgwxoPkY5pcxLSw00wxPy49Gwa?=
 =?us-ascii?Q?VMTd6fOqJrAq8XZvpv0WhYXarJ2QRDFcTz4l5ZCdayyc/3dhtoF4M1LeI6Qm?=
 =?us-ascii?Q?1EBBpXcH29wtDV4L6zORHeZ8I4gbd/urEXr+IVqZKBCmu8VqyD6iTqACQdd7?=
 =?us-ascii?Q?mPmgh5hwBMYZsfF0mNQJ8CYhPPPly61bXF9/uS8EKeTNMT5FTa+Eo/g3mq6f?=
 =?us-ascii?Q?hl3B+x+9gGj3OCMJj1Vp8dGInoiiAQaqcDq+dkDm?=
Content-Type: multipart/alternative;
 boundary="_000_PH7PR11MB7073C0F056F0F70E978D0F3493B79PH7PR11MB7073namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB7073.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f3fbd49-ae27-448a-518a-08db1ee6f9f3
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Mar 2023 08:35:58.7372 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: B7+V5xLTfAOfS5DgLWLWF90Hoq2+rTLqlkFJYaKLznXQPp3+5rKybyKSktgYLjbpr6A25QmkCgaPzpfq2R2GDd4pxlqXG4ydZCHQ5zb/ndg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB5681
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] [IMPORTANT] Intel GFX CI affected by number of issues
 in past days
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

--_000_PH7PR11MB7073C0F056F0F70E978D0F3493B79PH7PR11MB7073namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

In past few days Public GFX CI was affected by two major issues:

# Not all BAT machines were able to reboot successfully after several recen=
t kernel deadlocks. Each such scenario required manual intervention to get =
machines back into execution. WIP to rootcause why hard reboot is not prope=
rly triggered and to fix the problem.
Issues started ~CI_DRM_12790
Idle runs were disabled till we will not have fix applied.

# Reporting shards was blocked over weekend. Execution was happening but we=
 were not able to report results and queue was growing. We found two areas =
for improvement on which we are working now.
Reporting was unblocked yesterday morning and now queue is empty. We are mo=
nitoring situation.

We are very sorry for inconveniences.

Additionally, we would like to apologize for lack of communication from CI =
team. We are working to improve it and provide you better support in future=
.
As of now, please contact us on IRC #intel-gfx-ci and via email.

Regards,
Ewelina

--_000_PH7PR11MB7073C0F056F0F70E978D0F3493B79PH7PR11MB7073namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1702510866;
	mso-list-type:hybrid;
	mso-list-template-ids:329814070 67698703 67698713 67698715 67698703 676987=
13 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:18.0pt;
	text-indent:-18.0pt;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:54.0pt;
	text-indent:-18.0pt;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	margin-left:90.0pt;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:126.0pt;
	text-indent:-18.0pt;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:162.0pt;
	text-indent:-18.0pt;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	margin-left:198.0pt;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:234.0pt;
	text-indent:-18.0pt;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:270.0pt;
	text-indent:-18.0pt;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	margin-left:306.0pt;
	text-indent:-9.0pt;}
@list l1
	{mso-list-id:1813788755;
	mso-list-type:hybrid;
	mso-list-template-ids:323254140 -13055954 67698713 67698715 67698703 67698=
713 67698715 67698703 67698713 67698715;}
@list l1:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:18.0pt;
	text-indent:-18.0pt;}
@list l1:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:54.0pt;
	text-indent:-18.0pt;}
@list l1:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	margin-left:90.0pt;
	text-indent:-9.0pt;}
@list l1:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:126.0pt;
	text-indent:-18.0pt;}
@list l1:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:162.0pt;
	text-indent:-18.0pt;}
@list l1:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	margin-left:198.0pt;
	text-indent:-9.0pt;}
@list l1:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:234.0pt;
	text-indent:-18.0pt;}
@list l1:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:270.0pt;
	text-indent:-18.0pt;}
@list l1:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	margin-left:306.0pt;
	text-indent:-9.0pt;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"PL">Hello,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"PL"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal">In past few days Public GFX CI was affected by two m=
ajor issues:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"># Not all BAT machines were able to reboot successfu=
lly after several recent kernel deadlocks. Each such scenario required manu=
al intervention to get machines back into execution. WIP to rootcause why h=
ard reboot is not properly triggered
 and to fix the problem.<o:p></o:p></p>
<p class=3D"MsoNormal">Issues started ~CI_DRM_12790 <o:p></o:p></p>
<p class=3D"MsoNormal">Idle runs were disabled till we will not have fix ap=
plied.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"># Reporting shards was blocked over weekend. Executi=
on was happening but we were not able to report results and queue was growi=
ng. We found two areas for improvement on which we are working now.<o:p></o=
:p></p>
<p class=3D"MsoNormal">Reporting was unblocked yesterday morning and now qu=
eue is empty. We are monitoring situation.<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-left:36.0pt"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We are very sorry for inconveniences.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Additionally, we would like to apologize for lack of=
 communication from CI team. We are working to improve it and provide you b=
etter support in future.<o:p></o:p></p>
<p class=3D"MsoNormal">As of now, please contact us on IRC #intel-gfx-ci an=
d via email.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Ewelina<o:p></o:p></p>
</div>
</body>
</html>

--_000_PH7PR11MB7073C0F056F0F70E978D0F3493B79PH7PR11MB7073namp_--
