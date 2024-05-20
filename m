Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DED2F8C9E4F
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 15:44:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 559B210E353;
	Mon, 20 May 2024 13:44:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from omta38.uswest2.a.cloudfilter.net
 (omta38.uswest2.a.cloudfilter.net [35.89.44.37])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2173210E353
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2024 13:44:43 +0000 (UTC)
Received: from eig-obgw-6007a.ext.cloudfilter.net ([10.0.30.247])
 by cmsmtp with ESMTPS
 id 8zYCsLljZSLKx93JjsSIlE; Mon, 20 May 2024 13:44:43 +0000
Received: from gator3278.hostgator.com ([198.57.247.242]) by cmsmtp with ESMTPS
 id 93JisMr5k5Q3W93Jisnv4k; Mon, 20 May 2024 13:44:42 +0000
X-Authority-Analysis: v=2.4 cv=crOdkU4i c=1 sm=1 tr=0 ts=664b53ca
 a=wI8P0wgu9qut9Qmby1c6ng==:117 a=h+eJxL3/QSVnGqTFzLwsFA==:17
 a=_EFfJTh7bTAO8byP:21 a=kj9zAlcOel0A:10 a=TpHVaj0NuXgA:10 a=yDewdsc7jJQA:10
 a=VGZVzwQjAAAA:8 a=2rZ2s8yqNwkMNIv42ZYA:9 a=CjuIK1q_8ugA:10
 a=7KbCETwRv5F4J-amU3zH:22
Received: from 89-65-233-120.dynamic.chello.pl ([89.65.233.120]:51646
 helo=localhost) by gator3278.hostgator.com with esmtpa (Exim 4.96.2)
 (envelope-from <arkadiusz@drabczyk.org>) id 1s93Jh-001Tck-2T
 for intel-gfx@lists.freedesktop.org; Mon, 20 May 2024 08:44:42 -0500
Date: Mon, 20 May 2024 15:42:15 +0200
From: Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
To: intel-gfx@lists.freedesktop.org
Subject: Is it possible to distinguish between HDMI and DVI in i915?
Message-ID: <20240520134215.GF15976@comp..>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator3278.hostgator.com
X-AntiAbuse: Original Domain - lists.freedesktop.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - drabczyk.org
X-BWhitelist: no
X-Source-IP: 89.65.233.120
X-Source-L: No
X-Exim-ID: 1s93Jh-001Tck-2T
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 89-65-233-120.dynamic.chello.pl (localhost)
 [89.65.233.120]:51646
X-Source-Auth: arkadiusz@drabczyk.org
X-Email-Count: 2
X-Org: HG=hgshared;ORG=hostgator;
X-Source-Cap: cmt1bXZicmg7cmt1bXZicmg7Z2F0b3IzMjc4Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfCkddW8SObxsDTsVXErx9jpqqmSFZMWbn6+l/4k2gtSL0xHmf1lVlz7F3ZdaZZc5WbD+4ESxSZbdAE2Z2X36CqXdZcXYZx6dnbXDvNJpPkCDiFyrSl+r
 1dBEUfz1TkfUpzMpG6T1nT3jOuOIWhi5UWRNlW3jyKNGJ8kovd9K9N3KD6jSf425zEVmnjXom+db6khykmyQAz+tPMYBM7NL2wa5mAINeB3Ux3qE2KA3vkSp
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

My Asus Z97-A motherboard has DVI and HDMI connectors but i915 shows
2x HDMI ports (and the 3rd one for DP but a separate DP1 is also
shown). Would it be possible to distinguish between DVI and HDMI in
the driver code for example by reading some undocumented VBT registers
or testing port characteristics or something?
-- 
Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
