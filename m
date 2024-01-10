Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F009829CB2
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jan 2024 15:35:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6366A10E5F0;
	Wed, 10 Jan 2024 14:35:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A6C410E047;
 Wed, 10 Jan 2024 14:35:42 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_series_starting_with?=
 =?utf-8?q?_=5B1/2=5D_mm=3A_add_a_mapping=5Fclear=5Flarge=5Ffolios_helper?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Christoph Hellwig" <hch@lst.de>
Date: Wed, 10 Jan 2024 14:35:42 -0000
Message-ID: <170489734223.240792.12278867713699719836@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240110092109.1950011-1-hch@lst.de>
In-Reply-To: <20240110092109.1950011-1-hch@lst.de>
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [1/2] mm: add a mapping_clear_large_folios helper
URL   : https://patchwork.freedesktop.org/series/128420/
State : warning

== Summary ==

Error: dim checkpatch failed
e1a8add4aba0 mm: add a mapping_clear_large_folios helper
0faf35dc1522 xfs: disable large folio support in xfile_create
-:14: WARNING:BAD_REPORTED_BY_LINK: Reported-by: should be immediately followed by Closes: with a URL to the report
#14: 
Reported-by: Darrick J. Wong <djwong@kernel.org>
Signed-off-by: Christoph Hellwig <hch@lst.de>

total: 0 errors, 1 warnings, 0 checks, 11 lines checked


