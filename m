Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A5125498120
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jan 2022 14:32:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE0DD10EAE5;
	Mon, 24 Jan 2022 13:32:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com
 [IPv6:2a00:1450:4864:20::436])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D155D10E430;
 Mon, 24 Jan 2022 13:03:32 +0000 (UTC)
Received: by mail-wr1-x436.google.com with SMTP id r14so13456758wrp.2;
 Mon, 24 Jan 2022 05:03:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yWI5UY1fcglV1EAWhaeDJljaKs8PQI4isWYaACSxoi4=;
 b=AY8x1LnFnJZRez598YgjMdvAyQROXLUy/z6GUO0oWBfUy4+onnlsYauTO0OaoQp+GL
 OmIkmpHQWU7wayN2WlbzQUPXIV47l69i9fA/DRiDGWjKntmUx7bPx75DutO0bmH5olCg
 7du8vXgO4/RPJgr5x4s0oiKIcmnDljWfStE7sPCxUQUuam2WB0tOm+kSY+NrdbaM4TlO
 kDFGprJHWgxOGORrRLgJGzHFUEsv2fb0iqDg/alh+6PE5mfr0N/Lb9xhVp1Z8eZmIyEb
 m4hC3WSoXNBjbQ/sPH5sFeO4FiLEnL0vKqQSRWT6BDKtRuxH1I7JAFpc/ihdmyCaMQHU
 Y5Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yWI5UY1fcglV1EAWhaeDJljaKs8PQI4isWYaACSxoi4=;
 b=OdY+qpyKLuZwTnizqTPcAX4qo+o8KAMzuoQzJl2XLV7+YMGndPgS9et4f1JCMtjA/D
 nMIX8FRFk70TtDB5fQSJgMU1KECCuFFEhXCs4j6rIPJo/2kRd+T/y+ZzkdvR6uK+abnR
 fgDHBUPbKcK7Y2RxIbZH5Oi1qedaURhv9+yEIkQNYgM/M/tsxsa1jMnDTYD7IpzRaX3E
 Ynr4oe8eTzeUlMdzVrOcSEmMwdxbPkIPEJQpLWJC4t3898DuzKk2nEeTxDDgePLVDVXY
 HHoyYIr4KipNeWhRIidFjJykGHvHflpvIPuUS4QARoFv2ifTBtc1Cwo09lbgSWeSQNvt
 oWGg==
X-Gm-Message-State: AOAM530f4ydG1eqZeb18hAbAfoKYacayaydLRey6D8nZMd23GJ5bSmUA
 6asXyGJACEnuctkuyWC8Od8=
X-Google-Smtp-Source: ABdhPJzL+lKK5xkx8OJp5KwHUz8NOmvOUiedYXCIu6JiUO9YErSES2Olp5JeIlKltfni2gdAQOYY8Q==
X-Received: by 2002:a05:6000:1448:: with SMTP id
 v8mr4887006wrx.57.1643029411400; 
 Mon, 24 Jan 2022 05:03:31 -0800 (PST)
Received: from abel.fritz.box (p57b0bff8.dip0.t-ipconnect.de. [87.176.191.248])
 by smtp.gmail.com with ESMTPSA id g4sm16543554wrd.12.2022.01.24.05.03.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Jan 2022 05:03:30 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: thomas.hellstrom@linux.intel.com, sumit.semwal@linaro.org,
 gustavo@padovan.org, daniel.vetter@ffwll.ch, zackr@vmware.com,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Date: Mon, 24 Jan 2022 14:03:17 +0100
Message-Id: <20220124130328.2376-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 24 Jan 2022 13:32:09 +0000
Subject: [Intel-gfx] Add WARN_ON nested dma_fence containers
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

Hi guys,

as previously discussed only dma_fence_chain with its previous fence is actually made to build up larger dma_fence structures. Everything else should either flatten all fences into a single dma_fence_array or just add each fence separately to the dma_resv object.

Please review and/or comment,
Christian.


